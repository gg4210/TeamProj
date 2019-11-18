package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.MessageService;

@Service("MessageService")
public class MessageServiceImpl implements MessageService{
	
	//MessageDAO주입]
	@Resource(name="MessageDAO")
	private MessageDAO dao;

	@Override
	public List<Map> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public void insert(Map map) {
		dao.insert(map);
	}
	
}
