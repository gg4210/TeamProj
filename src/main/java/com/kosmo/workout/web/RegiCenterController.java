package com.kosmo.workout.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.ComplexityService;
import com.kosmo.workout.service.regicenter.RegicenterDTO;
import com.kosmo.workout.service.regicenter.RegicenterService;


@Controller
public class RegiCenterController {

	//앱과 관련된 컨트롤러가 많을 예정
	//Complexity, Regicenter가 핵심
	@Resource(name="RegicenterService")
	RegicenterService RegicenterService;
	
	@Resource(name="ComplexityService")
	ComplexityService ComplexityService;
	
	@ResponseBody
	@RequestMapping(value="/AppMainData.do", method=RequestMethod.POST)
	public String SendToAppData(@RequestParam Map map) {
		JSONObject main=new JSONObject();
		main.put("main","제발 들어와라");
		//1) object 2개(id값 받아서 - 등록중인 센터/메시지함)
		//		- 등록중인 센터 리스트 (ARRAY)
		//		- 메시지함 (KEY[fromID], VALUE[OBJECT])
	    return main.toJSONString();
	}
	
	@ResponseBody
	@RequestMapping(value="/ajax/getUserRegiList", method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String getUserRegiList(@RequestParam Map map,Authentication auth) throws ParseException {
		
		UserDetails userDetails = (UserDetails)auth.getPrincipal();
		Map getmapkey=new HashMap();
		getmapkey.put("id",userDetails.getUsername());
		RegicenterDTO key = RegicenterService.getMapkey(getmapkey);
		Map mapmap=new HashMap();
		
		mapmap.put("mapkey",key.getMapkey());
		List<RegicenterDTO> records= RegicenterService.listRegicenter(mapmap);
		List<Map> collections=new Vector<Map>();
		for(RegicenterDTO record:records) {
			
			
			String startfrom1 = record.getStartDate();
			String endfrom1 = record.getEndDate();
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date startto1 = transFormat.parse(startfrom1);
			Date endto1 = transFormat.parse(endfrom1);
			System.out.println(startto1);
			System.out.println(endto1);
			
			
			Date startfrom2 = startto1;
			Date endfrom2 = endto1;
			String startto2 = transFormat.format(startfrom2);
			String endto2 = transFormat.format(endfrom2);
			System.out.println("최종");
			System.out.println(startto2);
			System.out.println(endto2);
			
			
			Map re = new HashMap();
			re.put("no", record.getNo());
			re.put("id", record.getId());
			re.put("startdate",startto2);
			re.put("enddate",endto2);
			re.put("name", record.getName());
			re.put("isallowed", record.getIsAllowed()==1?"승인됨":"승인안됨");
			collections.add(re);
			
			
		}
		String jsonString =JSONArray.toJSONString(collections);
	    return jsonString;
	}
	
	@ResponseBody
	@RequestMapping(value="/ajax/UserCenterList", method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String getUserCenterList(@RequestParam Map map,Authentication auth) throws ParseException {
		
		UserDetails userDetails = (UserDetails)auth.getPrincipal();
		Map getmapkey=new HashMap();
		getmapkey.put("id",userDetails.getUsername());
		RegicenterDTO key = RegicenterService.getMapkey(getmapkey);
		Map mapmap=new HashMap();
		
		mapmap.put("mapkey",key.getMapkey());
		List<RegicenterDTO> records= RegicenterService.listRegicenter(mapmap);
		List<Map> collections=new Vector<Map>();
		for(RegicenterDTO record:records) {
			
			
			String startfrom1 = record.getStartDate();
			String endfrom1 = record.getEndDate();
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date startto1 = transFormat.parse(startfrom1);
			Date endto1 = transFormat.parse(endfrom1);
			System.out.println(startto1);
			System.out.println(endto1);
			
			
			Date startfrom2 = startto1;
			Date endfrom2 = endto1;
			String startto2 = transFormat.format(startfrom2);
			String endto2 = transFormat.format(endfrom2);
			System.out.println("최종");
			System.out.println(startto2);
			System.out.println(endto2);
			
			
			Map re = new HashMap();
			re.put("no", record.getNo());
			re.put("id", record.getId());
			re.put("startdate",startto2);
			re.put("enddate",endto2);
			re.put("name", record.getName());
			re.put("isallowed", record.getIsAllowed()==1?"승인됨":"승인안됨");
			
			
			System.out.println("맵키에 해당하는 인간 정보");
			System.out.println(record.getNo());
			System.out.println(record.getId());
			System.out.println(record.getName());
			collections.add(re);
		}
		String jsonString =JSONArray.toJSONString(collections);
	    return jsonString;
	}
	
	@ResponseBody
	@RequestMapping(value="/ajax/UserRegister", method=RequestMethod.POST)
	public int UserRegister(@RequestParam Map map,Authentication auth) {
		Map mapkeyfound = new HashMap();
		Map usercheck = new HashMap();
		System.out.println(map);
		UserDetails userDetails=(UserDetails)auth.getPrincipal();
		mapkeyfound.put("id",userDetails.getUsername());
		usercheck.put("id", map.get("id"));
		int count = RegicenterService.isIn(usercheck);
		int insertcomp;
		if(count < 1) {
			RegicenterDTO mapkey=RegicenterService.getMapkey(mapkeyfound);
			map.put("mapkey", mapkey.getMapkey());
			insertcomp=RegicenterService.insertRegiCustomer(map);
		}
		else {
			insertcomp=0;
		}
	    return insertcomp;
	}
}
