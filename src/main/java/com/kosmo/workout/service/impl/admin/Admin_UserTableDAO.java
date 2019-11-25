package com.kosmo.workout.service.impl.admin;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.workout.service.admin.Admin_UserTableDTO;
import com.kosmo.workout.service.admin.Admin_UserTableService;


@Repository("Admin_UserTableDAO")
public class Admin_UserTableDAO implements Admin_UserTableService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<Admin_UserTableDTO> usertable() {
		return template.selectList("admin_userlist");
	}

	

	
	
}
