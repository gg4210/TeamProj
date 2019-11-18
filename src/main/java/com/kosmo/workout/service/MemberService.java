package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface MemberService {
	//로그인 처리]
	boolean login(Map map);
	int Isdata(Map map);
	//목록용]
	//레코드를 DTO가 아닌 맵에 담아보자.
	List<Map> selectList(Map map);
	//로그인/입력/수정/삭제]
	int insertJoin(Map map);
	void authjoin(Map map);
	void delete(Map map);
	void update(Map map);
}
