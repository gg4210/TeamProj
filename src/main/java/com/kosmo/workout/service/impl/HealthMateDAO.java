package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.HealthMateDTO;
import com.kosmo.workout.service.HealthMateService;

@Repository("HealthMateDAO")
public class HealthMateDAO implements HealthMateService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<HealthMateDTO> selectList(Map map) {
		return template.selectList("mateSelectList", map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}

	@Override
	public HealthMateDTO selectOne(Map map) {
		return template.selectOne("mateSelectOne", map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("mateDelete",map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("mateInsert",map);
	}

	@Override
	public int update(Map map) {
		return template.update("mateUpdate",map);
	}

}
