package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.MyMateDTO;
import com.kosmo.workout.service.MyMateService;

@Service("MyMateService")
public class MyMateServiceImpl implements MyMateService{
	
	//MyMateDAO주입]
	@Resource(name="MyMateDAO")
	private MyMateDAO dao;

	

	@Override
	public MyMateDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public List<MyMateDTO> toSelectList(Map map) {
		return dao.toSelectList(map);
	}

	@Override
	public List<MyMateDTO> fromSelectList(Map map) {
		return dao.fromSelectList(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int mateTotal(Map map) {
		return dao.mateTotal(map);
	}
	
	

}
