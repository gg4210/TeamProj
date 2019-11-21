package com.kosmo.workout.service;

import java.util.Map;

public interface ComplexityService {
	
	//센터등록여부]
	boolean isRegisterCenter(Map map);
	
	//혼잡도 조회]
	int complexity(Map map);
	
	//QR코드 찍었는지 확인]
	int selectOne(Map map);
	
	//혼잡도 입력]
	int insert(Map map);
	
	//퇴장 시 삭제]
	int delete(Map map);

	
	
}
