package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BBSController {

	
	@RequestMapping("/react/bbsList.do")
	public String bbsList() {
		
		
		return "react/index.tiles";
	}
	
	@RequestMapping("/member/bbsView.do")
	public String bbsView() {
		
		
		return "bbs/view.tiles";
	}

	
	
}
