package com.kosmo.workout.service.regicenter;

import java.util.Map;

import com.kosmo.workout.service.MemberDTO;


public interface RegicenterService {
	
	//맵키 가져오기(셀레니움)
	MemberDTO selectForMapkeyGet(Map map);
	//등록센터에 값 추가
	int insertRegiCenter(Map map);
	//맵키가 있는지 여부를 판단
	int mapkeyIsIn(Map map);
	//승인여부 확인
	int isAllowed(Map map);
	//승인으로 변경
	int updateAllowed0(Map map);
	
}
