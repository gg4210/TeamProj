package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.NotificationService;

@Service("NotificationService")
public class NotificationServiceImpl implements NotificationService{
	
	
	//NotificationDAO주입]
	@Resource(name="NotificationDAO")
	private NotificationDAO dao;

	@Override
	public int countList(Map map) {
		return dao.countList(map);
	}

	@Override
	public void insert(Map map) {
		dao.insert(map);
	}
	
	@Override
	public void insert2(Map map) {
		dao.insert2(map);
	}
	
	@Override
	public void insert3(Map map) {
		dao.insert3(map);
	}

	@Override
	public void delete(Map map) {
		dao.delete(map);
	}
	
	

}
