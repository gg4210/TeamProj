package com.kosmo.workout.service.impl.admin;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.admin.Admin_UserTableDTO;
import com.kosmo.workout.service.admin.Admin_UserTableService;

@Service("Admin_UserTableService")
public class Admin_UserTableServiceImpl implements Admin_UserTableService{
	
	@Resource(name="Admin_UserTableDAO")
	private Admin_UserTableDAO dao;
	

	@Override
	public List<Admin_UserTableDTO> usertable() {
		return dao.usertable();
	}
	

}
