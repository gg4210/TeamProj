package com.kosmo.workout.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.AuthSecurityDTO;
import com.kosmo.workout.service.CouponDTO;
import com.kosmo.workout.service.NotificationService;


@Controller
public class CenterController {
	
	@Resource(name="AuthSecurityService")
	private com.kosmo.workout.service.AuthSecurityService AuthSecurityService;
	
	@Resource(name="CouponService")
	private com.kosmo.workout.service.CouponService CouponService;
	
	@Resource(name="NotificationService")
	private NotificationService NotificationService;
	
	@ResponseBody
	@RequestMapping(value="/senduserlist.do", method = RequestMethod.POST )
	public String EventCoupon(@RequestParam Map map, org.springframework.security.core.Authentication auth) {
		System.out.println(map);
		//ROLE_USER인 사람 리스트 뽑기
		List<String> lists=AuthSecurityService.selectList();
		System.out.println(lists);
		Map idMap;
		for(Object list:lists) {
			map.put("to_id", list);
			System.out.println(map);
			CouponService.insert(map);
		}
		
		
		JSONObject obj=new JSONObject();
		
		obj.put("isSuccess","전송에 성공하였습니다.");
		
		return obj.toJSONString();
		
	}
}
