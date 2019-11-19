package com.kosmo.workout.web;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.search.SearchBBSDTO;
import com.kosmo.workout.service.search.SearchService;
import com.kosmo.workout.util.CommonUtility;



@Controller
public class SearchController {
	
	@Resource(name="SearchService")
	private SearchService SearchService;

	
	
	@RequestMapping("/searchList.do")
	public String searchList(@RequestParam Map map) {
		return "search/list.tiles";	
	}
	
	@RequestMapping(value="/searchView.do", method=RequestMethod.POST)
	public String searchView(@RequestParam Map map, HttpServletRequest req, Model model) throws IOException {
		
		SearchBBSDTO viewinfo=CommonUtility.mapkeyCrawling(map.get("mapkey").toString(), map.get("tel").toString(), req);

		viewinfo.setTitle(map.get("title").toString());
		viewinfo.setTel(map.get("tel").toString());
		viewinfo.setAddr(map.get("addr").toString());		
		
		if(map.get("jibunAddr")!=null) {
			viewinfo.setJibunAddr(map.get("jibunAddr").toString());
		}
	
		//우리 데이터 베이스에 입력된 값이 있는지 여부를 판단
		int isIn=SearchService.isIn(map);
		if(isIn!=0) {
			
			SearchBBSDTO dto=SearchService.selectOneSearchDTO(map);// 데이터 베이스에 값이 있을 시
			
			/*viewinfo.setMaxNumber(dto.getMaxNumber());*/
			
			viewinfo.setCountNum(dto.getCountNum());
			viewinfo.setImg_urls(dto.getImg_urls());
			viewinfo.setContent(dto.getContent());
			viewinfo.setOtime(dto.getOtime());
			viewinfo.setTag(dto.getTag());
			viewinfo.setSport_kind(dto.getSport_kind());

		}

		model.addAttribute("viewinfo",viewinfo);
		
		//모델에 Complexity 로직 싣기
		//int complexity=0;
		//model.addAttribute("complexity",complexity);
		
		return "search/view.tiles";
	}
	
	@ResponseBody
	@RequestMapping(value="/searchView/commentwrite.do", produces="text/html; charset=UTF-8")
	public String insertSearchComment(@RequestParam Map map, Authentication auth) {
		
		map.put("id", ((UserDetails)auth.getPrincipal()).getUsername());
		SearchService.insertSearchDTO(map);
		return map.get("no").toString();
		
	}
	
	@ResponseBody
	@RequestMapping(value="/searchView/commentlist.do", produces="text/html; charset=UTF-8")
	public String listSearchComment(@RequestParam Map map, Authentication auth) {
		
		map.put("id", ((UserDetails)auth.getPrincipal()).getUsername());
		SearchService.insertSearchDTO(map);
		return map.get("no").toString();
		
	}
	
}
