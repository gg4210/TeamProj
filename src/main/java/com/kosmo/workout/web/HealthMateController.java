package com.kosmo.workout.web;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

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
	public String mateWriteOk(@ModelAttribute("id") String id, @RequestParam Map map, Model model, @RequestParam("matePhoto") MultipartFile matePhoto, HttpServletRequest req) throws IllegalStateException, IOException {
		//1]서버의 물리적 경로 얻기
		String path=req.getSession().getServletContext().getRealPath("/Upload");
		//2]File객체 생성
		File file=new File(path+File.separator+matePhoto.getOriginalFilename());
		//3]업로드 처리
		matePhoto.transferTo(file);
		String originalFile=matePhoto.getOriginalFilename();
		//String originalFileExtension=originalFile.substring(originalFile.lastIndexOf("."));
		map.put("photo", originalFile);
		
		/*
		map.put("id", id);
		String tag1=map.get("tag1").toString();
		String tag2=map.get("tag2").toString();
		String tag3=map.get("tag3").toString();
		String tag="";
		if(tag1.equals("")) {
			tag=tag1;
		}
		tag=map.get("tag1").toString()+","+map.get("tag2");
		map.put("tag", tag);
		tag=tag1+","+tag2+","+tag3;
		map.put("tag", tag);
		System.out.println(tag);
		*/
		HealthMateService.insert(map);
		return "healthMate/healthMateMain.tiles";
	}

}
