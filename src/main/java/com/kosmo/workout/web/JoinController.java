package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	@RequestMapping("/join.do")
	public String join(){
		return "/member/join.tiles";
	}

}
