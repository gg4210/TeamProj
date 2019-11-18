package com.kosmo.workout.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.workout.service.search.SearchBBSDTO;
import com.kosmo.workout.util.CommonUtility;

@Controller
public class SearchController {
	

	@RequestMapping("/searchList.do")
	public String searchList(@RequestParam Map map) {
		return "search/list.tiles";	
	}
	
	@RequestMapping(value="/searchView.do", method=RequestMethod.POST)
	public String searchView(@RequestParam Map map, HttpServletRequest req, Model model) throws IOException {
		
		SearchBBSDTO viewinfo=CommonUtility.mapkeyCrawling(map.get("mapkey").toString(), map.get("tel").toString(), req);

		viewinfo.setTitle(map.get("title").toString());
		viewinfo.setTel(map.get("tel").toString());
		viewinfo.setAddr(map.get("addr").toString());
		
		if(map.get("jibunAddr")!=null) {
			viewinfo.setJibunAddr(map.get("jibunAddr").toString());
		}
		
		/*확인용 =null
		System.out.println(viewinfo.getContent());
		System.out.println(viewinfo.getOtime());
		System.out.println(viewinfo.getImg_urls());
		System.out.println(viewinfo.getService());
		*/

		model.addAttribute("viewinfo",viewinfo);
		
		return "search/view.tiles";
	}
	
	
}
