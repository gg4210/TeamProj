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
	public List<CSDTO> selectList(Map map) {
		return template.selectList("CSSelectList",map);
	}
	
	@Override
	public int getNoticeRecord(Map map) {
		return template.selectOne("noticeTotal", map);
	}

	@Override
	public CSDTO selectOne(Map map) {
		return template.selectOne("noticeSelectOne", map);
	}

	//입력용]-일단 공지사항부터...
	@Override
	public int insert(Map map) {
		return template.insert("noticeInsert", map);
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

	
}/////////////////////
