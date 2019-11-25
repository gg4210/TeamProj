package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.MessageDTO;
import com.kosmo.workout.service.MessageService;

@Service("MessageService")
public class MessageServiceImpl implements MessageService{
	
	//MessageDAO주입]
	@Resource(name="MessageDAO")
	private MessageDAO dao;

	@Override
	public List<MessageDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	public int MessageCount(Map map) {
		return dao.MessageCount(map);
	}

	@Override
	public List<MessageDTO> selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}
	
	

	
}
