package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.MyMateDTO;
import com.kosmo.workout.service.MyMateService;

@Repository("MyMateDAO")
public class MyMateDAO implements MyMateService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	public List<MyMateDTO> selectList(Map map) {
		return template.selectList("MyMateSelectList", map);
	}

	@Override
	public void insert(Map map) {
		template.insert("MyMateInsert", map);
	}

	
	
}
