package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthMateController {
	
	@RequestMapping("/healthMateMain.do")
	public String mainPage() {
		return "healthMate/healthMain.tiles";
	}

}
