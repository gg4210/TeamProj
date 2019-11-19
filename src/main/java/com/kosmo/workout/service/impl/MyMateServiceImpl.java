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
	public List<MyMateDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public void insert(Map map) {
		dao.insert(map);
	}
	
	

}
