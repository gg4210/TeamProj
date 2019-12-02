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
import com.kosmo.workout.service.MemberService;
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
	
	@Resource(name="MemberService")
	MemberService MemberService;
	
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
			Map re = new HashMap();
			re.put("no", record.getNo());
			re.put("id", record.getId());
			re.put("name", record.getName());
			re.put("startdate",record.getStartDate());
			re.put("enddate",record.getEndDate());
			re.put("mapkey", key.getMapkey());
			re.put("isallowed", record.getIsAllowed());
			System.out.println("모든 데이터"+re);
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
		List<RegicenterDTO> keys = RegicenterService.getMapkeyList(getmapkey);
		List<Map> collections=new Vector<Map>();
		for(RegicenterDTO key:keys) {
			System.out.println(key.getMapkey());
			Map centermk = new HashMap();
			Map isallowedcheck=new HashMap();
			isallowedcheck.put("ID",userDetails.getUsername());
			isallowedcheck.put("mapkey", key.getMapkey());
			RegicenterDTO isallowed=RegicenterService.isAllowed(isallowedcheck);
			String cid = RegicenterService.findCenterID(key.getMapkey());
			System.out.println(cid);
			String cname = MemberService.getMemberName(cid);
			centermk.put("center_name", cname);
			if(isallowed.getIsAllowed()==0) {
				collections.add(centermk);
			}
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
		int allcount = RegicenterService.isIn(usercheck);
		int insertcomp;
		if(allcount < 3) {
			RegicenterDTO mapkey=RegicenterService.getMapkey(mapkeyfound);
			map.put("mapkey", mapkey.getMapkey());
			int mapcount=RegicenterService.isInMapCount(map);
			if(mapcount < 1) {
				insertcomp=RegicenterService.insertRegiCustomer(map);
			}
			else {
				insertcomp=0;
			}
		}
		else {
			insertcomp=0;
		}
	    return insertcomp;
	}
	@ResponseBody
	@RequestMapping(value="/ajax/UserDate", method=RequestMethod.POST)
	public int UserDate(@RequestParam Map map) {
		System.out.println("받은 데이터"+map);
		Map updateDate=new HashMap();
		updateDate.putAll(map);
		System.out.println("준비중"+updateDate);
		int upcenter = RegicenterService.updateAllowed0_forCenter(map);
		return upcenter;
	}
}
