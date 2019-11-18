package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.CouponService;

@Service("CouponService")
public class CouponServiceImpl implements CouponService{
	
	//CouponDAO주입]
	@Resource(name="CouponDAO")
	private CouponDAO dao;

	@Override
	public List<Map> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public void insert(Map map) {
		dao.insert(map);
	}
	
}
