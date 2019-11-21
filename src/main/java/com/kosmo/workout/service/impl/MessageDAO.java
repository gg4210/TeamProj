package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.MessageDTO;
import com.kosmo.workout.service.MessageService;

@Repository("MessageDAO")
public class MessageDAO implements MessageService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<MessageDTO> selectList(Map map) {
		return template.selectList("messageList", map);
	}

	@Override
	public String getNickname(Map map) {
		return template.selectOne("getFromNickname", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("messageInsert", map);
	}

	@Override
	public int newMessageCount(Map map) {
		return template.selectOne("newMessage", map);
	}

	@Override
	public boolean isMessageRead(Map map) {
		return (Integer)template.selectOne("checkedRead", map) == 0 ? false : true;
	}

	@Override
	public int delete(Map map) {
		return template.delete("messageDelete", map);
	}
	
}
