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

	@Override
	public void insert(Map map) {
		template.insert("MyMateInsert", map);
	}

	@Override
	public MyMateDTO selectOne(Map map) {
		return template.selectOne("MyMateSelectOne", map);
	}

	@Override
	public List<MyMateDTO> toSelectList(Map map) {
		return template.selectList("MyMateToSelectList",map);
	}

	@Override
	public List<MyMateDTO> fromSelectList(Map map) {
		return template.selectList("MyMateFromSelectList", map);
	}

	
	
}
