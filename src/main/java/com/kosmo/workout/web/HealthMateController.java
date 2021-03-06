package com.kosmo.workout.web;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.openqa.selenium.json.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.gargoylesoftware.htmlunit.javascript.host.Console;
import com.kosmo.workout.service.HealthMateDTO;
import com.kosmo.workout.service.HealthMateService;
import com.kosmo.workout.service.MyMateDTO;
import com.kosmo.workout.service.MyMateService;
import com.kosmo.workout.util.CommonUtility;
import com.kosmo.workout.util.FileUploadService;

//@SessionAttributes({"id"})//시큐리티 적용 전
@Controller
public class HealthMateController {
	
	//서비스 주입]
	@Resource(name = "HealthMateService")
	private HealthMateService HealthMateService;
	@Resource(name="MyMateService")
	private MyMateService MyMateService;
	@Autowired
	FileUploadService fileUploadService;
	
	@RequestMapping("/member/healthMateMain.do")
	public String mainPage(@RequestParam Map map, Model model) {
		List<HealthMateDTO> mateList=HealthMateService.selectList(map);
		model.addAttribute("mateList", mateList);

		return "healthMate/healthMateMain.tiles";
	}
	
	@RequestMapping(value = "/member/healthMateWrite.do", method = RequestMethod.GET)
	public String wirtePage() {
		return "healthMate/healthMateWrite.tiles";
	}

	@RequestMapping(value = "/member/mateWriteOk.do",method = RequestMethod.POST)
	public String mateWriteOk(//@ModelAttribute("id") String id,
							  @RequestParam Map map,
							  Model model,
							  //@RequestParam("matePhoto") MultipartFile matePhoto,
							  HttpServletRequest req,
							  Authentication auth,
							  @RequestParam("matePhoto") MultipartFile picture
							) throws IllegalStateException, IOException {
		//시큐리티 적용 후
		UserDetails userDetails=(UserDetails)auth.getPrincipal();
		map.put("id", userDetails.getUsername());
		
		//파일 업로드
		String url = fileUploadService.restore(req,picture);
		System.out.println(url);
		Iterator<String> keys = map.keySet().iterator();
		while(keys.hasNext()) {
			String key = keys.next();
			//System.out.println("key : " + key +" / value : " + map.get(key));
		}
		map.put("matePhoto",url);
		System.out.println("url: "+url);
		
		
		/*
		//1]서버의 물리적 경로 얻기
		String path=req.getSession().getServletContext().getRealPath("/image");
		//2]File객체 생성
		File file=new File(path+File.separator+matePhoto.getOriginalFilename());
		//3]업로드 처리
		matePhoto.transferTo(file);
		String originalFile=matePhoto.getOriginalFilename();
		*/
		//String originalFileExtension=originalFile.substring(originalFile.lastIndexOf("."));
		//map.put("matePhoto", originalFile);
		HealthMateService.insert(map);
		return "forward:/member/healthMateMain.do";
	}
	
	//메이트 상세보기
	@ResponseBody
	@RequestMapping(value = "/member/mateView.do", produces = "text/html; charset=UTF-8")
	public String mateView(@RequestParam Map map, Authentication auth) {
		//System.out.println("컨트롤러는 들어오니");
		//System.out.println(map);
		String userId=((UserDetails)auth.getPrincipal()).getUsername();
		HealthMateDTO view=HealthMateService.selectOne(map);
		String date=view.getStartDate().toString();
		date+=" ~ ";
		date+=view.getEndDate().toString();
		String first_tag=view.getFirst_tag();
		String seconde_tag=view.getSecond_tag();
		String third_tag=view.getThird_tag();
		String tag="";
		if(first_tag!=null) {
			tag+=first_tag;
			if(seconde_tag!=null) {
				tag+=", "+seconde_tag;
				if(third_tag!=null) {
					tag+=", "+third_tag;
				}
			}
		}
		JSONObject matejson=new JSONObject();
		matejson.put("NO", view.getNo());
		matejson.put("TITLE", view.getTitle());
		matejson.put("ID", view.getId());
		matejson.put("LOCATION", view.getLocation());
		matejson.put("INTERSPORT", view.getInterSport());
		matejson.put("TIME", view.getHealthTime());
		matejson.put("TAG", tag);
		matejson.put("CONTENT", view.getContent());
		matejson.put("DATE", date);
		matejson.put("MATEPHOTO", view.getMatePhoto());
		matejson.put("USERID", userId);
		//System.out.println(matejson);
		
		return matejson.toJSONString();
	}////////////////////////////////
	
	//메이트 삭제
	@ResponseBody
	@RequestMapping(value = "/member/mateDelete.do")
	public String mateDelete(@RequestParam Map map) {
		System.out.println("삭제 컨트롤러 진입했습니다");
		System.out.println("map: "+map);
		int mateDelete=HealthMateService.delete(map);
		System.out.println("mate 지워진 행"+mateDelete);
		return "healthMate/healthMateMain.tiles";
	}
	
	//메이트 추가
	@ResponseBody
	@RequestMapping("/member/plusMate.do")
	public String plusMate(@RequestParam Map map, Authentication auth, Model model) {
		System.out.println("추가하기 컨트롤러 진입");
		String userId=((UserDetails)auth.getPrincipal()).getUsername();
		//System.out.println(userId);
		map.put("id", userId);
		String follow=map.get("FRIEND_ID").toString();
		map.put("FRIEND_ID", follow);
		int mateTotal=MyMateService.mateTotal(map);
		System.out.println("mateTotal: "+mateTotal+" follow: "+follow);
		//System.out.println("id: "+userId);
		//System.out.println("FRIEND_ID: "+follow);
		String plusCheck="";
		if(follow.equals(userId) || mateTotal!=0) {
			plusCheck="0";
		}
		else if(!follow.equals(userId) || mateTotal==0) {
			MyMateService.insert(map);
			plusCheck="1";
		}
		JSONObject obj=new JSONObject();
		obj.put("PLUSCHECK", plusCheck);
		return obj.toJSONString();
	}////////////////
	

}
