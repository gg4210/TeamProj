package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface NotificationService {
	
	//목록용]
	//레코드를 DTO가 아닌 맵에 담아보자.
	int countList(Map map);
	//입력/삭제]
	void insert(Map map);
	void insert2(Map map);
	void insert3(Map map);
	void delete(Map map);
	
}
