package com.kosmo.workout.web;

import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.NotificationService;

@Controller
public class NotificationController {
   
   @Resource(name = "NotificationService")
   private NotificationService NotificationService;
   
   @ResponseBody
   @RequestMapping(value = "/webnotification.do", method = RequestMethod.POST)
   public String WebNotification(@RequestParam Map map, Authentication auth) {
      
      JSONObject json = new JSONObject();
      
      try {

	      if(((UserDetails)auth.getPrincipal()).getUsername()!=null) {
	         
	         map.put("id", ((UserDetails)auth.getPrincipal()).getUsername());
	         System.out.println("WebNotification ajax 들어옴");
	         
	         System.out.println("전체값:"+NotificationService.countAll(map));         
	            
	         
	         if(NotificationService.countAll(map) != 0) {
	            if(NotificationService.countCNO(map) != 0) {
	               json.put("Notification", "새로운 쿠폰이 도착했어요!");
	            }
	            else if(NotificationService.countMNO(map) != 0) {
	               json.put("Notification", "새로운 쪽지가 도착했어요!");
	            }
	            else if(NotificationService.countFNO(map) != 0) {
	               json.put("Notification", "새로운 친구신청이 도착했어요!");
	            }            
	         }
	         else {
	            System.out.println("WebNotification ajax 빈값");
	            json.put("Notification", "");
	         }         
	      }
      }
      catch (NullPointerException e) { //널포인터 익셉션 내가 잡았다.
      }
      
      return json.toJSONString();
      
   }
}
