package com.kosmo.workout.web;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kosmo.workout.service.HealthMateDTO;
import com.kosmo.workout.service.HealthMateService;

//@SessionAttributes({"id"})//시큐리티 적용 전
@Controller
public class HealthMateController {
	
	//서비스 주입]
	@Resource(name = "HealthMateService")
	private HealthMateService HealthMateService;
	
	@RequestMapping("/member/healthMateMain.do")
	public String mainPage(@RequestParam Map map, Model model) {
		List<HealthMateDTO> mateList=HealthMateService.selectList(map);
		model.addAttribute("mateList", mateList);

		return "healthMate/healthMateMain.tiles";
	}
	
	@RequestMapping(value = "/member/healthMateWrite.do", method = RequestMethod.GET)
	public String wirtePage() {
		return "healthMate/healthMateWrite.tiles";
	}

	@RequestMapping(value = "/member/mateWriteOk.do",method = RequestMethod.POST)
	public String mateWriteOk(//@ModelAttribute("id") String id,
							  @RequestParam Map map,
							  Model model,
							  //@RequestParam("matePhoto") MultipartFile matePhoto,
							  HttpServletRequest req,
							  Authentication auth) throws IllegalStateException, IOException {
		//시큐리티 적용 후
		UserDetails userDetails=(UserDetails)auth.getPrincipal();
		map.put("id", userDetails.getUsername());
		/*
		//1]서버의 물리적 경로 얻기
		String path=req.getSession().getServletContext().getRealPath("/image");
		//2]File객체 생성
		File file=new File(path+File.separator+matePhoto.getOriginalFilename());
		//3]업로드 처리
		matePhoto.transferTo(file);
		String originalFile=matePhoto.getOriginalFilename();
		*/
		//String originalFileExtension=originalFile.substring(originalFile.lastIndexOf("."));
		//map.put("matePhoto", originalFile);
		HealthMateService.insert(map);
		return "forward:/member/healthMateMain.do";
	}
	

	
	

}
