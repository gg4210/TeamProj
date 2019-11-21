package com.kosmo.workout.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.ComplexityService;


@Service("ComplexityService")
public class ComplexityServiceImpl implements ComplexityService{
	
	//ComplexityDAO주입]
	@Resource(name="ComplexityDAO")
	private ComplexityDAO dao;

	@Override
	public boolean isRegisterCenter(Map map) {
		return dao.isRegisterCenter(map);
	}

	@Override
	public int complexity(Map map) {
		return dao.complexity(map);
	}

	@Override
	public int selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}
	
}
