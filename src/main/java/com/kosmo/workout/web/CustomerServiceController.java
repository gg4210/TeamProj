package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerServiceController {
	
	@RequestMapping("/customerServiceMain.do")
	public String mainPage() {
		return "customerService/customerServiceMain.tiles";
	}

}
