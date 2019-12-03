package com.kosmo.workout.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.MessageDTO;
import com.kosmo.workout.service.MessageService;
import com.kosmo.workout.service.MyMateDTO;
import com.kosmo.workout.service.MyMateService;

@Controller
public class MessageController {
	
	@Resource(name = "MessageService")
	private MessageService MessageService;
	
	//메세지 확인
	@ResponseBody
	@RequestMapping(value = "/message.do", produces = "text/html; charset=UTF-8")
	public String message(@RequestParam Map map, Model model, Authentication auth) {
		System.out.println("메세지 컨트롤러 진입");
		String messageCheck="";
		String align="";
		String badge="";
		String id=((UserDetails)auth.getPrincipal()).getUsername();
		System.out.println("id는 "+id);
		map.put("id", id);
		int messageTotal=MessageService.MessageCount(map);
		List<MessageDTO> messageList=MessageService.selectList(map);
		/*
		JSONObject msgjson=new JSONObject();
		msgjson.put("ID",messageList);
		msgjson.put("FROMID", messageList.getFromid());
		msgjson.put("CONTENT", messageList.getContent());
		msgjson.put("PICTURE", messageList.getPicture());
		msgjson.put("RECEIVE", "Y");
		if(messageList.getId().equals(id)) {
			//System.out.println("if문 안에서 id"+dto.getId());
			//System.out.println("시큐리티 유저 아이디: "+user);
			align="right";
			badge="badge-secondary";
			msgjson.put("ALIGN", align);
			msgjson.put("BADGE", badge);
		}
		else {
			align="left";
			badge="badge-light";
			msgjson.put("ALIGN", align);
			msgjson.put("BADGE", badge);
		}
		
		return msgjson.toJSONString();
		*/
		List<Map> collection=new Vector<Map>();
		//메세지가 있을 경우
		if(messageTotal!=0 && messageList!=null) {
			messageCheck="Y";
			for(MessageDTO dto:messageList) {
				Map msg=new HashMap();
				msg.put("ID", dto.getId());
				msg.put("FROMID", dto.getFromid());
				msg.put("CONTENT", dto.getContent());
				//msg.put("RECEIVED_DATE", dto.getRECEIVED_DATE().toString());
				msg.put("PICTURE", dto.getPicture());
				//msg.put("ISREAD", dto.getReadStatus());
				msg.put("RECEIVE",messageCheck);
				if(dto.getId().equals(id)) {
					//System.out.println("if문 안에서 id"+dto.getId());
					//System.out.println("시큐리티 유저 아이디: "+user);
					align="right";
					badge="badge-warning";
					msg.put("ALIGN", align);
					msg.put("BADGE", badge);
				}
				else {
					align="left";
					badge="badge-light";
					msg.put("ALIGN", align);
					msg.put("BADGE", badge);
				}
				collection.add(msg);
			}/////////for문
		}///////if
		//메세지가 없을 경우
		else {
			Map msg=new HashMap();
			messageCheck="N";
			msg.put("RECEIVE", messageCheck);
			collection.add(msg);
		}
		System.out.println("아아 이건 뭐지"+JSONArray.toJSONString(collection));
		return JSONArray.toJSONString(collection);
	
	}////////////////////////
	
	//메세지 보내기
	@ResponseBody
	@RequestMapping("/messageSend.do")
	public void messageSend(@RequestParam Map map,Authentication auth) {
		System.out.println("메세지 보내기 컨트롤러");
		String id=((UserDetails)auth.getPrincipal()).getUsername();
		map.put("id", id);
		System.out.println("id: "+id);
		MessageService.insert(map);
		System.out.println("메세지 입력 성공");
	}
	
	//메세지 리셋]
	@ResponseBody
	@RequestMapping(value = "/resetmessage.do", produces = "text/html; charset=UTF-8")
	public String reserMessage(@RequestParam Map map, Authentication auth) {
		System.out.println("리셋 컨트롤러 진입");
		String messageCheck="";
		String align="";
		String badge="";
		String id=((UserDetails)auth.getPrincipal()).getUsername();
		map.put("id", id);
		List<MessageDTO> messageList=MessageService.selectList(map);
		List<Map> collection=new Vector<Map>();
			messageCheck="Y";
			for(MessageDTO dto:messageList) {
				Map msg=new HashMap();
				msg.put("ID", dto.getId());
				msg.put("FROMID", dto.getFromid());
				msg.put("CONTENT", dto.getContent());
				//msg.put("RECEIVED_DATE", dto.getRECEIVED_DATE().toString());
				msg.put("PICTURE", dto.getPicture());
				//msg.put("ISREAD", dto.getReadStatus());
				msg.put("RECEIVE",messageCheck);
				if(dto.getId().equals(id)) {
					//System.out.println("if문 안에서 id"+dto.getId());
					//System.out.println("시큐리티 유저 아이디: "+user);
					align="right";
					badge="badge-warning";
					msg.put("ALIGN", align);
					msg.put("BADGE", badge);
				}
				else {
					align="left";
					badge="badge-light";
					msg.put("ALIGN", align);
					msg.put("BADGE", badge);
				}
				collection.add(msg);
			}/////////for문
			return JSONArray.toJSONString(collection);
	}
	
	@Resource(name = "MyMateService")
	private MyMateService MyMateService;
	
	//메세지 메인]
	@ResponseBody
	@RequestMapping(value = "/messageMain.do", produces = "text/html; charset=UTF-8")
	public String messageMain(@RequestParam Map map, Model model, Authentication auth) {
		System.out.println("여긴 들어오니? 메인이거든");
		String id=((UserDetails)auth.getPrincipal()).getUsername();
		map.put("id", id);
		List<MyMateDTO> ToMateList=MyMateService.toSelectList(map);
		List<Map> collection=new Vector<Map>();
		List<MessageDTO> col=new Vector<MessageDTO>();
		for(MyMateDTO dto:ToMateList) {
			Map msg=new HashMap();
			msg.put("ID", dto.getId());
			msg.put("FROMID", dto.getFRIEND_ID());
			System.out.println("msg:"+msg.get("FROMID"));
			map.put("fromid", msg.get("FROMID"));
			MessageDTO msg1=MessageService.selectOne(map);
			if(msg1!=null) {
				col.add(msg1);
			}
		}
		System.out.println("col:"+col);
		
		for(MessageDTO dto:col) {
				Map msg=new HashMap();
				msg.put("FROIM", dto.getFromid());
				msg.put("CONTENT", dto.getContent());
				msg.put("ID", dto.getId());
				collection.add(msg);
		}
		
			
		
		
		
		return JSONArray.toJSONString(collection);
	
	}////////////////////////

}//////////
