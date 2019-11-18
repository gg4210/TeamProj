package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthMateController {
	
	@RequestMapping("/member/healthMateMain.do")
	public String mainPage() {
		return "healthMate/healthMateMain.tiles";
	}
	
	@RequestMapping("/member/healthMateWrite.do")
	public String wirtePage() {
		return "healthMate/healthMateWrite.tiles";
	}


}
