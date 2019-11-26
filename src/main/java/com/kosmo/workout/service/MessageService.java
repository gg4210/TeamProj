package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface MessageService {
	
	//紐⑸줉�슜]
	List<MessageDTO> selectList(Map map);
	
	//履쎌��븿 紐⑸줉�슜]
	MessageDTO selectOne(Map map);
	
	//硫붿꽭吏�媛� �엳�뒗吏� �솗�씤�슜]
	int MessageCount(Map map);
	
	//濡쒓렇�씤/�엯�젰/�닔�젙/�궘�젣]
	int insert(Map map);

	
}
