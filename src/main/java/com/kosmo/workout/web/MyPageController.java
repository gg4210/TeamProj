package com.kosmo.workout.web;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.MemberService;
import com.oreilly.servlet.MultipartRequest;
import com.kosmo.workout.common.FileUploadService;
import com.kosmo.workout.common.FileUtils;

@SessionAttributes("id")
@Controller
public class MyPageController {
	
	@Resource(name = "MemberService")
	private MemberService MemberService;
	
	@Autowired
	FileUploadService fileUploadService;
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
	
	@RequestMapping(value="/user/changecomplete.do", method=RequestMethod.POST)
	public String customer_change(@RequestParam Map map,
			HttpServletRequest req,
			Model model,
			@RequestParam("image1") MultipartFile picture) throws Exception{
	
		String url = fileUploadService.restore(req,picture);
		System.out.println(url);
		Iterator<String> keys = map.keySet().iterator();
		while(keys.hasNext()) {
			String key = keys.next();
		    System.out.println("key : " + key +" / value : " + map.get(key));
		}
		map.put("picture",url);
		boolean update=MemberService.update(map);
		MemberDTO record=MemberService.selectOne(map);
		model.addAttribute("record",record);
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
	
	
	
	@RequestMapping("/center/enterprise.do")
	public String enterprise(){
		return "mypage/enterprise/mypage_Index.tiles";
	}	
	@RequestMapping("/center/QRCode.do")
	public String qrWrite() {
		return "mypage/enterprise/QRCode";
	}
	

}
