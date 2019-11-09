package com.kosmo.workout.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.workout.util.CommonUtility;

@Controller
public class SearchController {
	

	@RequestMapping("/searchList.do")
	public String searchList(@RequestParam Map map) {
		return "search/list.tiles";	
	}
	
	@RequestMapping("/searchView.do")
	public String searchView(@RequestParam("mapkey") String mapkey, HttpServletRequest req) throws IOException {
		
		CommonUtility.mapkeyCrawling(mapkey,req);
		
		return "search/view.tiles";
	}
	
	
}
