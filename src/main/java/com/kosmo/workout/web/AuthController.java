package com.kosmo.workout.web;

import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kosmo.workout.service.MemberService;
import com.kosmo.workout.service.NotificationService;

@SessionAttributes("id")
@Controller
public class AuthController {
	//서비스 주입]
	@Resource(name="MemberService")
	private MemberService MemberService;
	
	@Resource(name="NotificationService")
	private NotificationService NotificationService;
	
	@RequestMapping("/loginprocess.do")
	public void tempmylogin(@RequestParam Map map, Model model) {
		System.out.println(map);
	}
	
	@RequestMapping("/notification.do")
	public String data(@RequestParam Map map, Authentication auth) {
		UserDetails userDetails=(UserDetails)auth.getPrincipal();
		System.out.println(userDetails.getUsername());
		map.put("id",userDetails.getUsername());
		System.out.println(map);
		int count=NotificationService.countList(map);
		System.out.println(count);
		return "index.tiles";
	}
	
	@RequestMapping(value="/appLogin.do", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String AppLogin(@RequestParam Map map) {

		boolean isLogin=MemberService.login(map);
		JSONObject login=new JSONObject();
		login.put("isLogin",isLogin?"Y":"N");
		return login.toJSONString();
		
	}
	
	@RequestMapping(value="/joincomplete.do", method=RequestMethod.POST)
	public String joincomplete(@RequestParam Map map,Model model){
		System.out.println(map);
		MemberService.insertJoin(map);
		MemberService.authjoin(map);
		return "index.tiles";
	}
	/*
	@RequestMapping("/logout.do")
	public String logout(SessionStatus status) {
		//로그 아웃처리-세션영역에 속성 삭제]
		status.setComplete();
		//뷰(JSP)정보 반환]-메인으로 이동
		return "index.tiles";
	}
	*/
}
