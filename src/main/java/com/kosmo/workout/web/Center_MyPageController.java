package com.kosmo.workout.web;

import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.regicenter.RegicenterDTO;
import com.kosmo.workout.service.search.SearchBBSDTO;
import com.kosmo.workout.service.search.SearchService;

@Controller
public class Center_MyPageController {
	
	@Resource(name="SearchService")
	private SearchService SearchService;
	
	@Resource(name="RegicenterService")
	private com.kosmo.workout.service.regicenter.RegicenterService RegicenterService;
	
	
	@ResponseBody
	@RequestMapping(value ="/ajax_centerinfo", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	public SearchBBSDTO show_center_info(@RequestParam Map map, Authentication auth) {
		
		//id값 map에 실음
		map.put("id",((UserDetails)auth.getPrincipal()).getUsername());
		
		//1) 맵키값이 있는지 여부
		RegicenterDTO dto=RegicenterService.getMapkey(map);
		
		map.put("mapkey", dto.getMapkey());
		
		//2) dto2에 삽입 -> centerinfo 하나 값을 가져옴
		SearchBBSDTO dto2=SearchService.selectOneSearchDTO(map);
	
		return dto2;//값 반환
	}
	
	

}
