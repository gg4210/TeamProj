package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	
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
