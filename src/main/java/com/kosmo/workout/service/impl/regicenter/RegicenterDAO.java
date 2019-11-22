package com.kosmo.workout.service.impl.regicenter;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.regicenter.RegicenterService;


@Repository("RegicenterDAO")
public class RegicenterDAO implements RegicenterService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	public MemberDTO selectForMapkeyGet(Map map) {
		return template.selectOne("selectForMapkeyGet",map);
	}
	
	@Override
	public int insertRegiCenter(Map map) {
		return template.insert("insertRegiCenter",map);
	}

	@Override
	public int mapkeyIsIn(Map map) {
		return template.selectOne("mapkeyIsIn",map);
	}

	@Override
	public int isAllowed(Map map) {
		return template.selectOne("isAllowed",map);
	}

	@Override
	public int updateAllowed0(Map map) {
		return template.update("updateAllowed0",map);
	}
	
}
