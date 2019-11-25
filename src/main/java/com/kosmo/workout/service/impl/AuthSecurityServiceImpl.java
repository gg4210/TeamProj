package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.AuthSecurityDTO;
import com.kosmo.workout.service.AuthSecurityService;

@Service("AuthSecurityService")
public class AuthSecurityServiceImpl implements AuthSecurityService{
	
	//AuthSecurityDAO주입]
	@Resource(name="AuthSecurityDAO")
	private AuthSecurityDAO dao;

	@Override
	public List<String> selectList() {
		return dao.selectList();
	}


}
