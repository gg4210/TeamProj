package com.kosmo.workout.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {

	@RequestMapping("/searchResult.do")
	public String searchResult(@RequestParam Map map) {
		
		return "search/list.tiles";
		
	}
	
	
}
