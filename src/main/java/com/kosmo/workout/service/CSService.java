package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface CSService {

	//목록용]
	List<CSDTO> noticeSelectList(Map map);
	List<CSDTO> eventSelectList(Map map);
	
	//전체 레코드 수]
	//상세보기용]
	CSDTO selectOne(Map map);
	CSDTO eventSelectOne(Map map);
	//입력/수정/삭제용]
	int insert(Map map);	
	int update(Map map);	
	int delete(Map map);
	
	//공지사항 레코드 수]
	int getNoticeRecord(Map map);
	
}/////////////////
