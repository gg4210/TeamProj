package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {

	@RequestMapping("/searchResult.do")
	public String searchResult() {
		
		return "search/list.tiles";
		
	}
	
	
}
