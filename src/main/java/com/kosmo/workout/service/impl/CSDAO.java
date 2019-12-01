package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.CSService;
import com.kosmo.workout.service.CSDTO;

@Repository("CSDAO")
public class CSDAO implements CSService {

	//SqlSessionTemplate객체 주입
	@Resource(name = "template")
	private SqlSessionTemplate template;
		
	//목록용]
	@Override
	public List<CSDTO> noticeSelectList(Map map) {
		return template.selectList("noticeSelectList",map);
	}
	public List<CSDTO> eventSelectList(Map map) {
		return template.selectList("eventSelectList",map);
	}
	@Override
	public List<CSDTO> consultSelectList(Map map) {
		return template.selectList("consultSelectList",map);
	}
	@Override
	public List<CSDTO> homeNoticeSelectList(Map map) {
		return template.selectList("homeNoticeSelectList",map);
	}
	@Override
	public List<CSDTO> faqSelectList(Map map) {
		return template.selectList("faqSelectList",map);
	}
	@Override
	public List<CSDTO> homeFaqSelectList(Map map) {
		return template.selectList("homeFaqSelectList",map);
	}
	@Override
	public List<CSDTO> mainEventSelectList(Map map) {
		return template.selectList("mainEventSelectList", map);
	}
	
	
	//상세보기용]
	@Override
	public CSDTO selectOne(Map map) {
		return template.selectOne("selectOne", map);
	}
//	@Override
//	public CSDTO selectOne(Map map) {
//		return template.selectOne("noticeSelectOne", map);
//	}
//	@Override
//	public CSDTO eventSelectOne(Map map) {
//		return template.selectOne("eventSelectOne", map);
//	}
//	@Override
//	public CSDTO consultSelectOne(Map map) {
//		System.out.println("consultSelectOne들어오나?");
//		System.out.println("map:"+map);
//		return template.selectOne("consultSelectOne", map);
//	}
//	@Override
//	public CSDTO faqSelectOne(Map map) {
//		return template.selectOne("faqSelectOne", map);
//	}

	
	@Override
	public int getNoticeRecord(Map map) {
		return template.selectOne("noticeTotal", map);
	}
	@Override
	public int getFAQRecord(Map map) {
		return template.selectOne("faqTotal",map);
	}
	@Override
	public int getEventRecord(Map map) {
		return template.selectOne("eventTotal", map);
	}
	@Override
	public int getConsultRecord(Map map) {
		return template.selectOne("consultTotal", map);
	}
	
	//입력용]-일단 공지사항부터...
	@Override
	public int insert(Map map) {
		return template.insert("noticeInsert", map);
	}
	@Override
	public int faqInsert(Map map) {
		System.out.println("여기:"+map);
		return template.insert("faqInsert", map);
	}
	@Override
	public int eventInsert(Map map) {
		return template.insert("eventInsert", map);
	}
	@Override
	public int consultInsert(Map map) {
		return template.insert("consultInsert", map);
	}
	
	@Override
	public int update(Map map) {
		return template.update("noticeUpdate",map);
	}
	@Override
	public int faqUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int eventUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int consultUpdate(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Map map) {
		return template.delete("delete", map);
	}

	
	

	
}/////////////////////
