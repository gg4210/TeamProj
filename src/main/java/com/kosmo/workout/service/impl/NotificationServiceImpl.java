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
	public int countAll(Map map) {
		return dao.countAll(map);
	}
	
	@Override
	public int countCNO(Map map) {
		return dao.countCNO(map);
	}

	@Override
	public int countMNO(Map map) {
		return dao.countMNO(map);
	}

	@Override
	public int countFNO(Map map) {
		return dao.countFNO(map);
	}

	@Override
	public void insertCNO(Map map) {
		dao.insertCNO(map);
	}
	
	@Override
	public void insertMNO(Map map) {
		dao.insertMNO(map);
	}
	
	@Override
	public void insertFNO(Map map) {
		dao.insertFNO(map);
	}

	@Override
	public int deleteCNO(Map map) {
		return dao.deleteCNO(map);
	}

	@Override
	public int deleteMNO(Map map) {
		return dao.deleteMNO(map);		
	}

	@Override
	public int deleteFNO(Map map) {
		return dao.deleteFNO(map);
	}

}
