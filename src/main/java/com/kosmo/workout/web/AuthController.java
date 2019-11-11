package com.kosmo.workout.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.workout.service.MemberService;

@SessionAttributes("id")
@Controller
public class AuthController {
	//서비스 주입]
	@Resource(name="MemberService")
	private MemberService MemberService;
	
	@RequestMapping("/templogin.do")
	public String tempmylogin(@RequestParam Map map,Model model) {
		System.out.println(map);
		boolean isLogin=MemberService.login(map);
		if(isLogin==true) {
			model.addAllAttributes(map);
			System.out.println(map);
		}
		else {
			model.addAttribute("NotMember", "아이디와 비번인 일치하지 않아요");
			System.out.println("아이디와 비번인 일치하지 않아요");
		}
		System.out.println("model:"+model);
		return "index.tiles";
	}
		
}
