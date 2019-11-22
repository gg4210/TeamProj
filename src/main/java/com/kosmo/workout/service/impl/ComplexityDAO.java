package com.kosmo.workout.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.ComplexityService;

@Repository("ComplexityDAO")
public class ComplexityDAO implements ComplexityService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isRegisterCenter(Map map) {
		return template.selectOne("isRegiCenter", map);
	}

	@Override
	public int complexity(Map map) {
		return template.selectOne("viewComplexity", map);
	}

	@Override
	public int selectOne(Map map) {
		return template.selectOne("isChecked", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("complexityInsert", map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("complexityDelete", map);
	}
	
}
