package com.kosmo.workout.web;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.MemberService;
import com.kosmo.workout.service.regicenter.RegicenterDTO;
import com.kosmo.workout.service.search.SearchBBSDTO;
import com.kosmo.workout.service.search.SearchService;
import com.kosmo.workout.util.CommonUtility;
import com.kosmo.workout.util.FileUploadService;

@Controller
public class Center_MyPageController {
	
	@Resource(name="MemberService")
	private MemberService MemberService;
	
	
	@Resource(name="SearchService")
	private SearchService SearchService;
	
	@Resource(name="RegicenterService")
	private com.kosmo.workout.service.regicenter.RegicenterService RegicenterService;
	
	@Autowired
	FileUploadService fileUploadService;
	
	
	@ResponseBody
	@RequestMapping(value ="/ajax_centerinfo", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	public String show_center_info(@RequestParam Map map, Authentication auth, HttpServletRequest req) throws IOException {
		
		
		//dto 객체하나를 gson객체로 바꾸기 위함
		Gson gson=new Gson();
		
		//json형태로 바꿀 예정인 dto 객체 하나
		SearchBBSDTO result=new SearchBBSDTO();
		
		//id값 map에 실음
		map.put("id",((UserDetails)auth.getPrincipal()).getUsername());
		
		//1) 맵키값이 있는지 여부
		RegicenterDTO dto=RegicenterService.getMapkey(map);
		result.setMapkey(dto.getMapkey());
		
		map.put("mapkey", dto.getMapkey());
		
		//2) dto2에 삽입 -> centerinfo 하나 값을 가져옴 (map에 id와 mapkey가 있으므로)
		MemberDTO dto2=MemberService.selectOne(map);
		result.setTitle(dto2.getName());
		result.setAddr(dto2.getAddress());
		result.setTel(dto2.getCellphone());

		String tel=dto2.getAddress();
		
		
		//3) 우리 사이트에 정보가 기입되어 있는지 확인
		int isIn=SearchService.isIn(map);
		
		if(isIn!=0) {// 있으면 우리 데이터 베이스!
			SearchBBSDTO dto1=SearchService.selectOneSearchDTO(map);
			
			System.out.println(dto1.getFilename());			
			String[] img_urls=dto1.getFilename().split(",");
			for(int i=0;i<img_urls.length;i++) {
				System.out.println(img_urls[i]);
			}
			result.setImg_urls(img_urls);			
			result.setCountNum(dto1.getCountNum());
			result.setContent(dto1.getContent());
			result.setService(dto1.getService());
			result.setSport_kind(dto1.getSport_kind());
			result.setOtime(dto1.getOtime());
			result.setTag(dto1.getTag());
			result.setSport_kind(dto1.getSport_kind());
			result.setAvgRate(CommonUtility.ratingString(SearchService.setRating(map)));
			int rate=SearchService.setRating(map);
			String avgRate=CommonUtility.ratingString(rate);//별 표시 String
			String compliextyString=CommonUtility.isComplex(dto1.getCountNum(), dto1.getMaxNumber()); //혼잡도 표시 String
			result.setAvgRate(avgRate);
			result.setCompliextyString(compliextyString);
			
		}
		else { // 웹크롤링에 저장된 값.
			
			SearchBBSDTO dto3=CommonUtility.mapkeyCrawling(dto.getMapkey(), tel, req);
			result.setService(dto3.getService());
			result.setImg_urls(dto3.getImg_urls());
			result.setContent(dto3.getContent());
			result.setOtime(dto3.getOtime());
			
			result.setAvgRate(CommonUtility.ratingString(SearchService.setRating(map)));
			int rate=SearchService.setRating(map);
			String avgRate=CommonUtility.ratingString(rate);//별 표시 String
			String compliextyString=CommonUtility.isComplex(dto3.getCountNum(), dto3.getMaxNumber()); //혼잡도 표시 String
			result.setAvgRate(avgRate);
			result.setCompliextyString(compliextyString);
		}
	
		return gson.toJson(result);//값 반환
	}
	
	
	
	
	
	@RequestMapping("/center/enterprise.do")
	public String enterprise() throws IOException{
		
		return "mypage/enterprise/mypage_Index.tiles";
	}
	
	
	@RequestMapping("/center/edit_centerinfo.do")
	public String edit_centerinfo(@RequestParam Map map, Authentication auth, Model model) {
		
		map.put("id",((UserDetails)auth.getPrincipal()).getUsername());
		RegicenterDTO dto=RegicenterService.getMapkey(map);
		map.put("mapkey", dto.getMapkey());
		
		MemberDTO dto2=MemberService.selectOne(map);
		map.put("title", dto2.getName());
		map.put("address", dto2.getAddress());
		map.put("tel", dto2.getCellphone());
		
		int isin=SearchService.isIn(map);
		
		if(isin!=0) {
			SearchBBSDTO dto1=SearchService.selectOneSearchDTO(map);
			map.put("MAXNUMBER", dto1.getMaxNumber());
			map.put("content", dto1.getContent());
			map.put("filename", dto1.getImg_urls());
			map.put("otime", dto1.getOtime());
			map.put("tag", dto1.getTag());
			map.put("sport_kind", dto1.getSport_kind());
		}
	
		model.addAttribute("dto",map);
		
		return "mypage/enterprise/edit_center_info.tiles";
	}
	
	
	
	
	@RequestMapping("/center/edit_OK.do")
	public String edit_OK(@RequestParam Map map, MultipartHttpServletRequest mtfRequest, HttpServletRequest req, Authentication auth) {
		
		
		System.out.println(map.get("kinds_of_sport")); // 하나밖에 못들고옴...ㅅㅂ
		System.out.println(map.get("kind_of_service")); // 하나밖에 못들고옴 역시...ㅅㅂ
		
		map.put("id",((UserDetails)auth.getPrincipal()).getUsername());
		RegicenterDTO dto=RegicenterService.getMapkey(map);
		map.put("mapkey", dto.getMapkey());		
		
		List<MultipartFile> fileList = mtfRequest.getFiles("photos[]");

		
		map.put("MAXNUMBER", map.get("maxNumber"));
		map.put("service", map.get("kind_of_service"));
		map.put("title", map.get("title"));
		map.put("otime","주중 : "+map.get("weekday_start").toString()+"~"+map.get("weekday_end").toString()+" 주말 : "+map.get("weekend_start").toString()+"~"+map.get("weekend_end").toString());
		
		MemberDTO dto2=MemberService.selectOne(map);

		map.put("tel", dto2.getCellphone());
		map.put("content",map.get("content"));
		map.put("tag", map.get("work-tag"));
		map.put("sport_kind", map.get("kinds_of_sport"));
		
		String[] url= new String[fileList.size()];
		StringBuilder sb = new StringBuilder();
		//Multiple file upload 시작
		for(int i=0;i<fileList.size();i++) {
			MultipartFile mf=fileList.get(i);
			url[i]=fileUploadService.restore(req, mf);
		}
		
		System.out.println("implode:"+CommonUtility.implode(",", url));
		
		
		map.put("filename", CommonUtility.implode(",", url));
		//Multiple file upload 끝
		
		System.out.println("edit center 값:"+map);
		int isin=SearchService.isIn(map);
		
		if(isin==0) {//입력값이 없다.
			SearchService.insertSearchDTO(map);
		}
		else {//입력값이 있다.
			SearchService.updateSearchDTO(map);
		}


		return "mypage/enterprise/mypage_Index.tiles";
	}

	
	

}
