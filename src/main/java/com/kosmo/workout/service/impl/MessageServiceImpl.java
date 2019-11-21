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

	@Override
	public String getNickname(Map map) {
		return dao.getNickname(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int newMessageCount(Map map) {
		return dao.newMessageCount(map);
	}

	@Override
	public boolean isMessageRead(Map map) {
		return dao.isMessageRead(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	
}
