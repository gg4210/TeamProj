package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kosmo.workout.service.AuthSecurityDTO;
import com.kosmo.workout.service.AuthSecurityService;

@Service("AuthSecurityDAO")
public class AuthSecurityDAO implements AuthSecurityService{

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<String> selectList() {
		return template.selectList("getUserList");
	}

}
