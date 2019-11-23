package com.kosmo.workout.service.regicenter;

import java.util.Map;

import com.kosmo.workout.service.MemberDTO;


public interface RegicenterService {
	
	//맵키 가져오기(셀레니움)
	MemberDTO selectForMapkeyGet(Map map);
	//등록센터에 값 추가
	int insertRegiCenter(Map map);
	//맵키+승인여부 판단용. 빈값이면 mapkey 없는거, 0이면 승인된 것, 1이면 승인 안된 것
	int mapkeyIsIn(Map map);
	
	//승인으로 변경
	int updateAllowed0_forAdmin(Map map);
	int updateAllowed0_forCenter(Map map);
	
	//삭제
	int delete_expired(Map map);
	
}
