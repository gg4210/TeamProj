package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BBSController {

	
	@RequestMapping("/bbsList.do")
	public String bbsList() {
		return "bbs/list.tiles";
	}
	@RequestMapping("/bbsView.do")
	public String bbsView() {
		return "bbs/view.tiles";
	}
}
