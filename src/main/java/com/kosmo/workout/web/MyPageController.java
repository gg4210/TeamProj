package com.kosmo.workout.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.MemberService;

@SessionAttributes("id")
@Controller
public class MyPageController {
	
	@Resource(name = "MemberService")
	private MemberService MemberService;
		/*임시, 백엔드 스프링 시큐리티 적용 시 삭제 예정 시작*/
	@RequestMapping("/mypage.do")
	public String temp() {
		return "mypage/temp_Index.tiles";
	}
		/*임시, 백엔드 스프링 시큐리티 적용 시 삭제 예정 끝*/
	
	
		/*유저에 따라 마이페이지 메인으로 이동하게 하는 Controller 시작*/
	@RequestMapping("/customer.do")
	public String customer_temp(@RequestParam Map map,Model model){
		System.out.println("MemberDTO 통과?");
		MemberDTO record=MemberService.selectOne(map);
		System.out.println("map 통과");
		System.out.println(map);
		System.out.println("record 통과");
		System.out.println(record);
		model.addAttribute("record", record);
		return "mypage/customer/mypage_Index.tiles";
	}	
	@RequestMapping("/user/customer.do")
	public String customer(@RequestParam Map map,Model model){
		System.out.println("MemberDTO 통과?");
		MemberDTO record=MemberService.selectOne(map);
		System.out.println("map 통과");
		System.out.println(map);
		System.out.println("record 통과");
		System.out.println(record);
		model.addAttribute("record",record);
		System.out.println("model"+model);
		return "mypage/customer/mypage_Index.tiles";
	}	
	@RequestMapping("/user/changecomplete.do")
	public String customer_change(){
		return "mypage/customer/mypage_Index.tiles";
	}
	
	
	
	
	@RequestMapping("/admin.do")
	public String admin_temp(){
		return "mypage/admin/mypage_Index.tiles";
	}
	
	@RequestMapping("/admin/admin.do")
	public String admin(){
		return "mypage/admin/mypage_Index.tiles";
	}
	
	
	
	@RequestMapping("/enterprise.do")
	public String enterprise_temp(){
		return "mypage/enterprise/mypage_Index.tiles";
	}
		/*유저에 따라 마이페이지 메인으로 이동하게 하는 Controller 끝*/
	@RequestMapping("/enterprise/edit_center_info.do")
	public String edit_center_info() {
		return "mypage/enterprise/edit_center_info.tiles";
	}
	
	
	//아래부터 QR코드 관련 코딩입니다.
	@RequestMapping("/center/enterprise.do")
	public String enterprise(@RequestParam Map map,Model model){
//		System.out.println("map:"+map);///////////////////////////////////////
//		System.out.println("MemberDTO 통과?");
//		MemberDTO record=MemberService.selectOne(map);
//		System.out.println("map 통과");
//		System.out.println(map);
//		System.out.println("record 통과");
//		System.out.println(record);
//		model.addAttribute("record",record);
//		System.out.println("model"+model);
		return "mypage/enterprise/mypage_Index.tiles";
	}	
	@RequestMapping("/center/QRCode.do")
	public String qrWrite(@RequestParam Map map,Model model) {
		System.out.println(map);
		int mapkey = MemberService.selectMapkey(map);
		System.out.println("mapkey:"+mapkey);
		model.addAttribute("mapkey", mapkey);
		return "mypage/enterprise/QRCode";
	}
	

}
