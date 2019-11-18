package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.MessageService;

@Repository("MessageDAO")
public class MessageDAO implements MessageService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	public List<Map> selectList(Map map) {
		return template.selectList("MessageSelectList", map);
	}

	@Override
	public void insert(Map map) {
		template.insert("MessageInsert", map);
	}
	
}
