package com.kosmo.workout.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.admin.Admin_UserTableDTO;
import com.kosmo.workout.service.regicenter.RegicenterService;
import com.kosmo.workout.service.search.SearchBBSCommentDTO;

@Controller
public class Admin_MyPageController {

	@Resource(name="Admin_UserTableService")
	private com.kosmo.workout.service.admin.Admin_UserTableService Admin_UserTableService;
	
	@Resource(name="RegicenterService")
	private RegicenterService RegicenterService;
	
	
	@ResponseBody
	@RequestMapping(value="/usertable.do", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	public String usertable(@RequestParam Map map) {
		
		List<Admin_UserTableDTO> list=Admin_UserTableService.usertable();
		System.out.println("들어오니?");
		List<Map> collections=new Vector<Map>();
		
		for(Admin_UserTableDTO dto:list) {
			System.out.println(dto);
			Map record=new HashMap();
			record.put("NO", dto.getRownum());
			record.put("MAPKEY", dto.getMapkey());
			record.put("NAME", dto.getName());
			record.put("ID", dto.getId());
			record.put("AUTHORITY",dto.getAuthority());
			record.put("JOINDATE", dto.getJoindate().toString());
			record.put("EMAIL", dto.getEmail());
			record.put("TEL", dto.getCellphone());
			record.put("ISALLOWED", dto.getIsAllowed());
			collections.add(record);
		}
		
		String jsonString =JSONArray.toJSONString(collections);
		
		return jsonString;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/updateAllowed0_admin.do", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	public String updateAllowed0_admin(@RequestParam Map map) {
		
		System.out.println(map.get("ID"));
		System.out.println(map.get("mapkey"));
		
		
		JSONObject obj=new JSONObject();
		
		
		int isUpdate=RegicenterService.updateAllowed0_forAdmin(map);
		
		if(isUpdate==0) {
			obj.put("isUpdate", "변경 실패");
		}
		else {
			obj.put("isUpdate", "변경 완료");
		}
		
		return obj.toJSONString();
	}
	
}
