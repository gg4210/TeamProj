package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.CouponService;

@Repository("CouponDAO")
public class CouponDAO implements CouponService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	public List<Map> selectList(Map map) {
		return template.selectList("CouponSelectList", map);
	}

	@Override
	public void insert(Map map) {
		template.insert("CouponInsert", map);
	}
	
}
