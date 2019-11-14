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
	public List<CSDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public CSDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int getNoticeRecord(Map map) {
		return dao.getNoticeRecord(map);
	}
	
	
	
}
