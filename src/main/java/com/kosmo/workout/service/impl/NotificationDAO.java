package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.NotificationService;

@Repository("NotificationDAO")
public class NotificationDAO implements NotificationService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public int countList(Map map) {
		return template.selectOne("NotificationSelectList",map);
	}

	@Override
	public void insert(Map map) {
		template.insert("NotificationInsert", map);
	}
	
	@Override
	public void insert2(Map map) {
		template.insert("NotificationInsert2", map);
	}
	
	@Override
	public void insert3(Map map) {
		template.insert("NotificationInsert3", map);
	}

	@Override
	public void delete(Map map) {
		template.delete("NotificationDelete", map);
	}
	
}
