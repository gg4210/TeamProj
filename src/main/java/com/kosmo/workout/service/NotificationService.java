package com.kosmo.workout.service;

import java.util.Map;

public interface NotificationService {
	
	//목록용]
	int countAll(Map map);
	
	int countCNO(Map map);
	int countMNO(Map map);
	int countFNO(Map map);
	
	//입력/삭제]
	void insertCNO(Map map);
	void insertMNO(Map map);
	void insertFNO(Map map);
	
	int deleteCNO(Map map);
	int deleteMNO(Map map);
	int deleteFNO(Map map);
	
}
