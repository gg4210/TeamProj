package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	
	@RequestMapping("/mypage.do")
	public String temp() {
		return "mypage/temp_Index.tiles";
	}
	
	@RequestMapping("/mypage/customer.do")
	public String customer(){
		return "mypage/customer/mypage_Index.tiles";
	}
	
	@RequestMapping("/mypage/admin.do")
	public String admin(){
		return "mypage/admin/mypage_Index.tiles";
	}
	
	@RequestMapping("/mypage/enterprise.do")
	public String enterprise(){
		return "mypage/enterprise/mypage_Index.tiles";
	}

}
