package com.kosmo.workout.service.regicenter;

import java.util.List;
import java.util.Map;

import com.kosmo.workout.service.MemberDTO;


public interface RegicenterService {
	
	//맵키 가져오기(셀레니움)
	MemberDTO selectForMapkeyGet(Map map);
	
	//등록센터에 값 추가
	int insertRegiCenter(Map map);
	
	int insertRegiCustomer(Map map);
	
	//id 값으로 가입 시 저장된 맵키 가져오기
	RegicenterDTO getMapkey(Map map);
	List<RegicenterDTO> getMapkeyList(Map map);
	Map getcenterinfo(Map map);
	
	//맵키+승인여부 판단용. 빈값이면 mapkey 없는거, 0이면 승인된 것, 1이면 승인 안된 것
	int mapkeyIsIn(Map map);
	
	//등록센터가 있는지 여부 판단
	int isIn(Map map);
	//등록센터 리스트 뽑아오기
	List<RegicenterDTO> listRegicenter(Map map);
	
	//승인으로 변경
	int updateAllowed0_forAdmin(Map map);
	int updateAllowed0_forCenter(Map map);
	
	//삭제
	int delete_expired(Map map);
	//가입 중인 센터 구하기
	String findCenterID(String mk);
}
