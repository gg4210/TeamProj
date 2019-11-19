package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface MyMateService {
	
	//목록용]
	//레코드를 DTO가 아닌 맵에 담아보자.
	List<MyMateDTO> selectList(Map map);
	//로그인/입력/수정/삭제]
	void insert(Map map);
	
}
