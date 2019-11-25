package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface MessageService {
	
	//목록용]
	List<MessageDTO> selectList(Map map);
	
	//쪽지함 목록용]
	List<MessageDTO> selectOne(Map map);
	
	//메세지가 있는지 확인용]
	int MessageCount(Map map);
	
	//로그인/입력/수정/삭제]
	int insert(Map map);

	
}
