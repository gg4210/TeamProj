package com.kosmo.workout.web;

import java.io.IOException;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
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
	public String searchView(@RequestParam Map map) throws IOException {
		
		Document doc = Jsoup.connect("https://place.map.kakao.com/"+map.get("mapkey")).get();
		Elements first=doc.select("head > meta:nth-child(4)");
		String title=first.get(0).attr("content");
		System.out.println(title);
				
		return "search/view.tiles";
	}
	
	
}
