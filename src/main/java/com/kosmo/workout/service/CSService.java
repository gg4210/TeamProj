package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface CSService {

	//목록용]
	List<CSDTO> noticeSelectList(Map map);
	List<CSDTO> eventSelectList(Map map);
	List<CSDTO> consultSelectList(Map map);
	List<CSDTO> homeNoticeSelectList(Map map);
	List<CSDTO> faqSelectList(Map map);
	List<CSDTO> homeFaqSelectList(Map map);
	List<CSDTO> mainEventSelectList(Map map);
	
	//전체 레코드 수]
	//상세보기용]
	CSDTO selectOne(Map map);
	//CSDTO eventSelectOne(Map map);
	//CSDTO consultSelectOne(Map map);
	//CSDTO faqSelectOne(Map map);
	//입력/수정/삭제용]
	int insert(Map map);
	int faqInsert(Map map);
	int eventInsert (Map map);
	int consultInsert (Map map);
	int update(Map map);	
	int faqUpdate(Map map);	
	int eventUpdate(Map map);	
	int consultUpdate(Map map);	
	int delete(Map map);
	
	
	
	
	//레코드 수]
	int getNoticeRecord(Map map);
	int getFAQRecord(Map map);
	int getEventRecord(Map map);
	int getConsultRecord(Map map);
	
}/////////////////
