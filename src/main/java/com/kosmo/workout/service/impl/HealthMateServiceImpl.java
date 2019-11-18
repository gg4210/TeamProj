package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.HealthMateDTO;
import com.kosmo.workout.service.HealthMateService;

@Service("HealthMateService")
public class HealthMateServiceImpl implements HealthMateService {
	
	@Resource(name = "HealthMateDAO")
	private HealthMateDAO dao;

	@Override
	public List<HealthMateDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

	@Override
	public HealthMateDTO selectOne(Map map) {
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

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

}
