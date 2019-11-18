package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;


public interface HealthMateService {
	
	//목록]
	List<HealthMateDTO> selectList(Map map);
	//전체 레코드 수]
	int getTotalRecord(Map map);
	//상세보기용]
	HealthMateDTO selectOne(Map map);
	//입력/수정/삭제용]
	int insert(Map map);
	int delete(Map map);
	int update(Map map);

}
