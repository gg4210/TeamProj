package com.kosmo.workout.service.impl.regicenter;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.impl.search.SearchDAO;
import com.kosmo.workout.service.regicenter.RegicenterService;

@Service("RegicenterService")
public class RegicenterServiceImpl  implements RegicenterService{

	
	@Resource(name="RegicenterDAO")
	private RegicenterDAO dao;
	
	
	@Override
	public MemberDTO selectForMapkeyGet(Map map) {
		return dao.selectForMapkeyGet(map);
	}

	@Override
	public int insertRegiCenter(Map map) {
		return dao.insertRegiCenter(map);
	}
	
	@Override
	public int mapkeyIsIn(Map map) {
		return dao.mapkeyIsIn(map);
	}

	@Override
	public int isAllowed(Map map) {
		return dao.isAllowed(map);
	}

	@Override
	public int updateAllowed0(Map map) {
		return dao.updateAllowed0(map);
	}


	
	
}
