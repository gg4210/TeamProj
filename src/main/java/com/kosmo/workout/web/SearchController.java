package com.kosmo.workout.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {

	@RequestMapping("/searchList.do")
	public String searchList(@RequestParam Map map) {
		
		return "search/list.tiles";
		
	}
	
	@RequestMapping("/searchView.do")
	public String searchView(@RequestParam Map map) {
		return "search/view.tiles";
	}
	
	
}
