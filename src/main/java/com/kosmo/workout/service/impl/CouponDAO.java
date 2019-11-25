package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.CouponDTO;
import com.kosmo.workout.service.CouponService;

@Repository("CouponDAO")
public class CouponDAO implements CouponService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public int countCoupon(Map map) {
		return template.selectOne("couponCount", map);
	}

	@Override
	public List<CouponDTO> selectList(Map map) {
		return template.selectList("couponList", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("couponInsert", map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("couponEnd", map);
	}
	
}
