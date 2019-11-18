package com.kosmo.workout.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kosmo.workout.service.MemberService;


@Controller
public class MyPageController {
	
		/*임시, 백엔드 스프링 시큐리티 적용 시 삭제 예정 시작*/
	@RequestMapping("/mypage.do")
	public String temp() {
		return "mypage/temp_Index.tiles";
	}
		/*임시, 백엔드 스프링 시큐리티 적용 시 삭제 예정 끝*/
	
	
	
		/*유저에 따라 마이페이지 메인으로 이동하게 하는 Controller 시작*/
	@RequestMapping("/member/customer.do")
	public String customer(){
		return "mypage/customer/mypage_Index.tiles";
	}
	
	@RequestMapping("/admin.do")
	public String admin(){
		return "mypage/admin/mypage_Index.tiles";
	}
	
	@RequestMapping("/enterprise.do")
	public String enterprise(){
		return "mypage/enterprise/mypage_Index.tiles";
	}
		/*유저에 따라 마이페이지 메인으로 이동하게 하는 Controller 끝*/
	@RequestMapping("/member/enterprise/edit_center_info.do")
	public String edit_center_info() {
		return "mypage/enterprise/edit_center_info.tiles";
	}
	

}
