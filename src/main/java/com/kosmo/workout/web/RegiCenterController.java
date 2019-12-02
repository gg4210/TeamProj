package com.kosmo.workout.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
		RegicenterDTO centermapkey=RegicenterService.getMapkey(getmapkey);
		Map getcenterinfo=new HashMap();
		getcenterinfo.put("ID",userDetails.getUsername());
		getcenterinfo.put("mapkey",centermapkey.getMapkey());
		RegicenterDTO centerallowed = RegicenterService.isAllowed(getcenterinfo);
		Map centerauth= new HashMap();
		centerauth.put("centerisallowed", centerallowed.getIsAllowed());
		Map mapmap=new HashMap();
		
		mapmap.put("mapkey",key.getMapkey());
		List<RegicenterDTO> records= RegicenterService.listRegicenter(mapmap);
		List<Map> collections=new Vector<Map>();
		SimpleDateFormat par= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat par2= new SimpleDateFormat("yyyy년 MM월 dd일");
		for(RegicenterDTO record:records) {
			Map re = new HashMap();
			re.put("no", record.getNo());
			re.put("id", record.getId());
			re.put("name", record.getName());
			if(record.getStartDate()!=null) {
				System.out.println("오늘은 무슨");
				String startstring = record.getStartDate();
				System.out.println(startstring);
				Date startdate = par.parse(startstring);
				System.out.println(startdate);
				String startstring2=par2.format(startdate);
				System.out.println(startstring2);
				re.put("startdate",startstring2);
			}else {
				re.put("startdate",record.getStartDate());
			}
			if(record.getEndDate()!=null) {
				System.out.println("오늘은 무슨");
				String endstring = record.getEndDate();
				System.out.println(endstring);
				Date enddate = par.parse(endstring);
				System.out.println(enddate);
				String endstring2=par2.format(enddate);
				System.out.println(endstring2);
				re.put("enddate",endstring2);
			}else {
				re.put("enddate",record.getEndDate());
			}
			re.put("mapkey", key.getMapkey());
			re.put("isallowed", record.getIsAllowed());
			System.out.println("모든 데이터"+re);
			collections.add(re);
		}
		collections.add(centerauth);
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
	@RequestMapping(value="/ajax/UserCenterListmypage", method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String getUserCenterListmypage(@RequestParam Map map,Authentication auth) throws ParseException {
		UserDetails userDetails = (UserDetails)auth.getPrincipal();
		Map getmapkey=new HashMap();
		getmapkey.put("id",userDetails.getUsername());
		List<RegicenterDTO> keys = RegicenterService.getMapkeyList(getmapkey);
		
		List<Map> collections=new Vector<Map>();
		int i=1;
		SimpleDateFormat par= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat par2= new SimpleDateFormat("yyyy년 MM월 dd일");
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
			Map datecoll=RegicenterService.datecollection(isallowedcheck);
			centermk.put("center_name", cname);
			if(datecoll.get("STARTDATE")!=null) {
				System.out.println("오늘은 무슨");
				String startstring = datecoll.get("STARTDATE").toString();
				System.out.println(startstring);
				Date startdate = par.parse(startstring);
				System.out.println(startdate);
				String startstring2=par2.format(startdate);
				System.out.println(startstring2);
				centermk.put("STARTDATE", startstring2);
			}else {
				centermk.put("STARTDATE", datecoll.get("STARTDATE").toString());
			}
			if(datecoll.get("ENDDATE").toString()!=null) {
				System.out.println("오늘은 무슨");
				String endstring = datecoll.get("ENDDATE").toString();
				System.out.println(endstring);
				Date enddate = par.parse(endstring);
				System.out.println(enddate);
				String endstring2=par2.format(enddate);
				System.out.println(endstring2);
				centermk.put("ENDDATE", endstring2);
			}else {
				centermk.put("ENDDATE", datecoll.get("ENDDATE").toString());
			}
			centermk.put("index","mycenter"+i);
			System.out.println("너 나와"+centermk);
			if(isallowed.getIsAllowed()==0) {
				collections.add(centermk);
			}
		}
		System.out.println(collections);
		String jsonString =JSONArray.toJSONString(collections);
		System.out.println("이제 곧 된다.");
		System.out.println(jsonString);
	    return jsonString;
	}
	@ResponseBody
	@RequestMapping(value="/ajax/UserDate", method=RequestMethod.POST)
	public int UserDate(@RequestParam Map map) {
		Map updateDate=new HashMap();
		updateDate.putAll(map);
		int upcenter = RegicenterService.updateAllowed0_forCenter(map);
		return upcenter;
	}
}
