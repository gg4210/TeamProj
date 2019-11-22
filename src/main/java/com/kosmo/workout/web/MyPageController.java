package com.kosmo.workout.web;

import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.MemberService;
import com.kosmo.workout.common.FileUploadService;

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
		MemberDTO record=MemberService.selectOne(map);
		model.addAttribute("record", record);
		return "mypage/customer/mypage_Index.tiles";
	}
	
	@RequestMapping("/user/customer.do")
	public String customer(@RequestParam Map map,Model model){
		MemberDTO record=MemberService.selectOne(map);
		model.addAttribute("record",record);
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
	
	@RequestMapping("/enterprise/editOK.do")
	public String edit_OK(@RequestParam Map map, Authentication auth) {
		
		return "mypage/enterprise/mypage_Index.tiles";
	}

	

	@RequestMapping("/center/enterprise.do")
	public String enterprise(){
		return "mypage/enterprise/mypage_Index.tiles";
	}

	//아래부터 QR코드 관련 코딩입니다.
	@RequestMapping("/center/QRCode.do")
	public String qrWrite(@RequestParam Map map,Authentication auth,Model model) {
		UserDetails userDetails = (UserDetails)auth.getPrincipal();
		map.put("id",userDetails.getUsername());
		int mapkey = MemberService.selectMapkey(map);
		model.addAttribute("mapkey", mapkey);
		return "mypage/enterprise/QRCode";
	}
	
}