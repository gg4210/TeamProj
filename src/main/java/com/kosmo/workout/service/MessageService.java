package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface MessageService {
	
	//목록]
	List<MessageDTO> selectList(Map map);
	
	//보낸사람 닉네임 가져오기]
	String getNickname(Map map);
	
	//입력]
	int insert(Map map);
	
	//안 읽은 메시지 갯수 조회]
	int newMessageCount(Map map);
	
	//메시지 읽을 시 1을 0으로 바꿔줌]
	boolean isMessageRead(Map map);
	
	//삭제]
	int delete(Map map);

	
	
	
	
}
