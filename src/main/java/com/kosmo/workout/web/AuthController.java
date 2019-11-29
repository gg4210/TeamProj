package com.kosmo.workout.web;

import java.util.HashMap;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.openqa.selenium.json.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.kosmo.workout.service.AuthSecurityDTO;
import com.kosmo.workout.service.AuthSecurityService;
import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.MemberService;
import com.kosmo.workout.service.NotificationService;
import com.kosmo.workout.service.regicenter.RegicenterDTO;
import com.kosmo.workout.service.regicenter.RegicenterService;
import com.kosmo.workout.service.search.SearchBBSCommentDTO;
import com.kosmo.workout.service.search.SearchService;
import com.kosmo.workout.util.CommonUtility;
import com.kosmo.workout.util.FileUploadService;

@SessionAttributes("id")
@Controller
public class AuthController {
	//서비스 주입]
	@Resource(name="MemberService")
	private MemberService MemberService;
	
	@Resource(name="RegicenterService")
	private RegicenterService RegicenterService;
	
	@Resource(name="SearchService")
	private SearchService SearchService;
	
	
	@Autowired
	FileUploadService fileUploadService;
	
	@Resource(name="NotificationService")
	private NotificationService NotificationService;
	
	@RequestMapping("/loginprocess.do")
	public void tempmylogin(@RequestParam Map map, Model model) {
		System.out.println(map);
	}

	@RequestMapping(value="/joincomplete.do", method=RequestMethod.POST)
	public String joincomplete(@RequestParam Map map,
			HttpServletRequest req,
			Model model,
			@RequestParam("image1") MultipartFile picture){
		String url = fileUploadService.restore(req,picture);
		System.out.println(url);
		Iterator<String> keys = map.keySet().iterator();
		while(keys.hasNext()) {
			String key = keys.next();
		    System.out.println("key : " + key +" / value : " + map.get(key));
		}
		map.put("picture",url);
		MemberService.insertJoin(map);
		MemberService.authjoin(map);
		return "index.tiles";
	}
	
	@RequestMapping(value="/Centerjoincomplete.do", method=RequestMethod.POST)
	public String Centerjoincomplete(@RequestParam Map map,Model model, HttpServletRequest req) throws IOException{
		System.out.println(map);
		MemberService.insertCenterJoin(map);
		MemberService.authjoin(map);
		
			/*아래부터는 RegiCenter 용도^^...*/
		
		//가입 후 아이디값을 다시 받아옴
		MemberDTO dto=MemberService.selectOne(map);
		String id=dto.getId();
		//맵에 담음
		map.put("id", id);
		// Regicenter에 다음 Mapkey 뜯어오기 위한 주소, 이름 값 얻어오기.
		dto=RegicenterService.selectForMapkeyGet(map);
		// mapkey를 얻음.
		String mapkey=CommonUtility.getMapkeyFromCenterInfo(dto.getAddress(), dto.getName(), req);
		// 맵에 실음
		map.put("mapkey",mapkey);
		map.put("id", id);
		// RegiCenter에 등록
		RegicenterService.insertRegiCenter(map);
		
		return "index.tiles";
	}
	
	@Resource(name = "AuthSecurityService")
	private AuthSecurityService AuthSecurityService;
	
	@Resource(name = "CouponService")
	private com.kosmo.workout.service.CouponService CouponService;
	
	
	@ResponseBody
	@RequestMapping(value="/getUserInfo.do", method=RequestMethod.POST)
	public String getUserInfo(@RequestParam Map map, Model model) {
		
		//맵키
		RegicenterDTO mapkey=RegicenterService.getMapkey(map);
		Map getm=new HashMap();
		getm.put("mapkey", mapkey.getMapkey());
		System.out.println("맵키:"+getm);
		
		//맵키에 해당하는 아이디
		Map centerinfo=RegicenterService.getcenterinfo(getm);
		System.out.println("받아온 기업 아이디:"+centerinfo);
		MemberDTO dto=MemberService.selectOne(map);
		System.out.println("getUserInfo 들어옴");
		JSONObject json=new JSONObject();
		json.put("picture", dto.getPicture());
		/*
		RegicenterDTO dto1=RegicenterService.getMapkey(map);
		int mapkey=Integer.parseInt(dto.getMapkey());
		map.put("mapkey", mapkey);
		List<SearchBBSCommentDTO> commentList=SearchService.selectListComment(map);
		model.addAttribute("Comment", commentList);
		System.out.println("Comment: "+commentList);
		*/
		return json.toJSONString();
		
	}

	
	
}
