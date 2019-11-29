package com.kosmo.workout.service.impl.regicenter;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.regicenter.RegicenterDTO;
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
	public int updateAllowed0_forAdmin(Map map) {
		return template.update("updateAllowed0_admin",map);
	}

	@Override
	public int updateAllowed0_forCenter(Map map) {
		return template.update("updateAllowed0_center",map);
	}

	@Override
	public int delete_expired(Map map) {
		return template.delete("delete_expired",map);
	}

	@Override
	public RegicenterDTO getMapkey(Map map) {
		return template.selectOne("getMapkey", map);
	}

	@Override
	public int isIn(Map map) {
		return template.selectOne("isIn",map);
	}

	@Override
	public List<RegicenterDTO> listRegicenter(Map map) {
		return template.selectList("listRegicenter",map);
	}

	@Override
	public int totalCount(Map map) {
		return template.selectOne("RegicenterTotal", map);
	}




	
}
