package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.CouponDTO;
import com.kosmo.workout.service.CouponService;

@Service("CouponService")
public class CouponServiceImpl implements CouponService{
	
	//CouponDAO주입]
	@Resource(name="CouponDAO")
	private CouponDAO dao;

	@Override
	public int countCoupon(Map map) {
		return dao.countCoupon(map);
	}

	@Override
	public List<CouponDTO> selectList(Map map) {
		return dao.selectList(map);
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
