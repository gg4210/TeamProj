package com.kosmo.workout.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	
	@RequestMapping("/jointype.do")
	public String jointype(){
		return "member/jointype.tiles";
	}
	@RequestMapping("/join.do")
	public String join(){
		return "member/join.tiles";
	}
	
	@RequestMapping("/enterprisejoin.do")
	public String enterprisejoin(){
		return "member/enterprisejoin.tiles";
	}
	
	

}
