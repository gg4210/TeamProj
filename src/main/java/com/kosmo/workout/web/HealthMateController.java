package com.kosmo.workout.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.workout.service.HealthMateService;

@SessionAttributes({"id"})
@Controller
public class HealthMateController {
	
	//서비스 주입]
	@Resource(name = "HealthMateService")
	private HealthMateService HealthMateService;
	@RequestMapping("/member/healthMateMain.do")
	public String mainPage() {
		return "healthMate/healthMateMain.tiles";
	}
	
	@RequestMapping("/member/healthMateWrite.do")
	public String wirtePage() {
		return "healthMate/healthMateWrite.tiles";
	}

	@RequestMapping("mateWriteOk.do")
	public String mateWriteOk(@ModelAttribute("id") String id, @RequestParam Map map, Model model) {
		map.put("id", id);
		String tag1=map.get("tag1").toString();
		String tag2=map.get("tag2").toString();
		String tag3=map.get("tag3").toString();
		String tag="";
		/*
		if(tag1.equals("")) {
			tag=tag1;
		}
		tag=map.get("tag1").toString()+","+map.get("tag2");
		map.put("tag", tag);
		*/
		tag=tag1+","+tag2+","+tag3;
		map.put("tag", tag);
		System.out.println(tag);
		HealthMateService.insert(map);
		return "healthMate/healthMateMain.tiles";
	}

}
