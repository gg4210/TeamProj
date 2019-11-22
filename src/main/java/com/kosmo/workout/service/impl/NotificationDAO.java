package com.kosmo.workout.service.impl;

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
	public int countAll(Map map) {
		return template.selectOne("notificationCountAll", map);
	}
	
	@Override
	public int countCNO(Map map) {
		return template.selectOne("notificationCountCNO", map);
	}

	@Override
	public int countMNO(Map map) {
		return template.selectOne("notificationCountMNO", map);
	}

	@Override
	public int countFNO(Map map) {
		return template.selectOne("notificationCountFNO", map);
	}

	@Override
	public void insertCNO(Map map) {
		template.insert("notificationCNO", map);
	}
	
	@Override
	public void insertMNO(Map map) {
		template.insert("notificationMNO", map);
	}
	
	@Override
	public void insertFNO(Map map) {
		template.insert("notificationFNO", map);
	}

	@Override
	public int deleteCNO(Map map) {
		return template.delete("deleteCNO",map);
	}

	@Override
	public int deleteMNO(Map map) {
		return template.delete("deleteMNO",map);	
	}

	@Override
	public int deleteFNO(Map map) {
		return template.delete("deleteFNO",map);		
	}
	
}
