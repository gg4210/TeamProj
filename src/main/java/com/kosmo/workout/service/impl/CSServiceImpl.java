package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.CSDTO;
import com.kosmo.workout.service.CSService;

@Service("CSService")
public class CSServiceImpl implements CSService{
	
	//CSDAO주입]
	@Resource(name = "CSDAO")
	private CSDAO dao;

	@Override
	public List<CSDTO> noticeSelectList(Map map) {
		return dao.noticeSelectList(map);
	}
	public List<CSDTO> eventSelectList(Map map) {
		return dao.eventSelectList(map);
	}
	@Override
	public List<CSDTO> consultSelectList(Map map) {
		return dao.consultSelectList(map);
	}
	@Override
	public List<CSDTO> homeNoticeSelectList(Map map) {
		return dao.homeNoticeSelectList(map);
	}
	@Override
	public List<CSDTO> faqSelectList(Map map) {
		return dao.faqSelectList(map);
	}
	@Override
	public List<CSDTO> homeFaqSelectList(Map map) {
		return dao.homeFaqSelectList(map);
	}
	@Override
	public List<CSDTO> mainEventSelectList(Map map) {
		return dao.mainEventSelectList(map);
	}	

	@Override
	public CSDTO selectOne(Map map) {
		return dao.selectOne(map);
	}
//	@Override
//	public CSDTO eventSelectOne(Map emap) {
//		return dao.eventSelectOne(emap);
//	}
//	@Override
//	public CSDTO consultSelectOne(Map map) {
//		return dao.consultSelectOne(map);
//	}
//	@Override
//	public CSDTO faqSelectOne(Map map) {
//		return dao.faqSelectOne(map);
//	}
	
	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}
	@Override
	public int faqInsert(Map map) {
		return dao.faqInsert(map);
	}
	@Override
	public int eventInsert(Map map) {
		return dao.eventInsert(map);
	}
	@Override
	public int consultInsert(Map map) {
		return dao.consultInsert(map);
	}
	
	
	
	@Override
	public int update(Map map) {
		return dao.update(map);
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
		return dao.delete(map);
	}
	
	
	
	
	@Override
	public int getNoticeRecord(Map map) {
		return dao.getNoticeRecord(map);
	}
	@Override
	public int getFAQRecord(Map map) {
		return dao.getFAQRecord(map);
	}
	@Override
	public int getEventRecord(Map map) {
		return dao.getEventRecord(map);
	}
	@Override
	public int getConsultRecord(Map map) {
		return dao.getConsultRecord(map);
	}
	
	
	
}
