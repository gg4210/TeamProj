package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface MemberService {
	//로그인 처리]
	boolean login(Map map);
	int Isdata(Map map);
	List<Map> selectList(Map map);
	//내 정보 수정 탭에서 기존 정보 띄워주기]
	MemberDTO selectOne(Map map);
	//로그인/입력/수정/삭제]
	int insertJoin(Map map);
	void authjoin(Map map);
	void delete(Map map);
	void update(Map map);
}
