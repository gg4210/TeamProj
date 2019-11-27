package com.kosmo.workout.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.ComplexityService;
import com.kosmo.workout.service.regicenter.RegicenterService;


@Controller
public class RegiCenterController {

	//앱과 관련된 컨트롤러가 많을 예정
	//Complexity, Regicenter가 핵심
	@Resource(name="RegicenterService")
	RegicenterService RegicenterService;
	
	@Resource(name="ComplexityService")
	ComplexityService ComplexityService;
	
	@ResponseBody
	@RequestMapping(value="/AppMainData.do", method=RequestMethod.POST)
	public String SendToAppData(@RequestParam Map map) {
		
		System.out.println("여기로 들어와주세요 제발..ㅠㅠ");
		
		JSONObject main=new JSONObject();
		main.put("main","제발 들어와라");
		
		//1) object 2개(id값 받아서 - 등록중인 센터/메시지함)
		//		- 등록중인 센터 리스트 (ARRAY)
		//		- 메시지함 (KEY[fromID], VALUE[OBJECT])

	    return main.toJSONString();

	}
	
	
	
	
}
