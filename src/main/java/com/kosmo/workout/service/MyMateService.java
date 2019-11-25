package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface MyMateService {
	
	//목록용]
	List<MyMateDTO> toSelectList(Map map);
	List<MyMateDTO> fromSelectList(Map map);
	//상세보기 용]
	MyMateDTO selectOne(Map map);
	//로그인/입력/수정/삭제]
	int insert(Map map);
	
}
