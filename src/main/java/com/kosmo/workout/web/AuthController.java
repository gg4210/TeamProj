package com.kosmo.workout.web;

<<<<<<< HEAD
import java.util.HashMap;
=======
import java.io.IOException;
>>>>>>> branch 'master' of https://github.com/gg4210/TeamProj.git
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.openqa.selenium.json.Json;
import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.multipart.MultipartFile;

<<<<<<< HEAD
import com.kosmo.workout.common.FileUploadService;
import com.kosmo.workout.service.AuthSecurityDTO;
import com.kosmo.workout.service.AuthSecurityService;
=======
import com.kosmo.workout.service.MemberDTO;
>>>>>>> branch 'master' of https://github.com/gg4210/TeamProj.git
import com.kosmo.workout.service.MemberService;
import com.kosmo.workout.service.NotificationService;
import com.kosmo.workout.service.regicenter.RegicenterDTO;
import com.kosmo.workout.service.regicenter.RegicenterService;
import com.kosmo.workout.util.CommonUtility;
import com.kosmo.workout.util.FileUploadService;

@SessionAttributes("id")
@Controller
public class AuthController {
	//서비스 주입]
	@Resource(name="MemberService")
	private MemberService MemberService;
	
	@Resource(name="RegicenterService")
	private RegicenterService RegicenterService;
	
	
	@Autowired
	FileUploadService fileUploadService;
	
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
		System.out.println("map확인"+map);
		int count=NotificationService.countAll(map);
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
	public String joincomplete(@RequestParam Map map,
			HttpServletRequest req,
			Model model,
			@RequestParam("image1") MultipartFile picture){
		String url = fileUploadService.restore(req,picture);
		System.out.println(url);
		Iterator<String> keys = map.keySet().iterator();
		while(keys.hasNext()) {
			String key = keys.next();
		    System.out.println("key : " + key +" / value : " + map.get(key));
		}
		map.put("picture",url);
		MemberService.insertJoin(map);
		MemberService.authjoin(map);
		return "index.tiles";
	}
	
	@RequestMapping(value="/Centerjoincomplete.do", method=RequestMethod.POST)
	public String Centerjoincomplete(@RequestParam Map map,Model model, HttpServletRequest req) throws IOException{
		System.out.println(map);
		MemberService.insertCenterJoin(map);
		MemberService.authjoin(map);
		
			/*아래부터는 RegiCenter 용도^^...*/
		
		//가입 후 아이디값을 다시 받아옴
		MemberDTO dto=MemberService.selectOne(map);
		String id=dto.getId();
		//맵에 담음
		map.put("id", id);
		// Regicenter에 다음 Mapkey 뜯어오기 위한 주소, 이름 값 얻어오기.
		dto=RegicenterService.selectForMapkeyGet(map);
		// mapkey를 얻음.
		String mapkey=CommonUtility.getMapkeyFromCenterInfo(dto.getAddress(), dto.getName(), req);
		// 맵에 실음
		map.put("mapkey",mapkey);
		map.put("id", id);
		// RegiCenter에 등록
		RegicenterService.insertRegiCenter(map);
		
		return "index.tiles";
	}
	
	@Resource(name = "AuthSecurityService")
	private AuthSecurityService AuthSecurityService;
	
	@Resource(name = "CouponService")
	private com.kosmo.workout.service.CouponService CouponService;
	
	/*
	@RequestMapping("/logout.do")
	public String logout(SessionStatus status) {
		//로그 아웃처리-세션영역에 속성 삭제]
		status.setComplete();
		//뷰(JSP)정보 반환]-메인으로 이동
		return "index.tiles";
	}
	*/
	
	@ResponseBody
	@RequestMapping(value="/getUserInfo.do", method=RequestMethod.POST)
	public String getUserInfo(@RequestParam Map map) {
		
		MemberDTO dto=MemberService.selectOne(map);
		System.out.println("getUserInfo 들어옴");
		JSONObject json=new JSONObject();
		json.put("picture", dto.getPicture());
		
		return json.toJSONString();
		
	}

	
	
}
