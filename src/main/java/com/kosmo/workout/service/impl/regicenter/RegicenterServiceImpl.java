package com.kosmo.workout.service.impl.regicenter;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.impl.search.SearchDAO;
import com.kosmo.workout.service.regicenter.RegicenterDTO;
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
	public int insertRegiCustomer(Map map) {
		return dao.insertRegiCustomer(map);
	}
	
	@Override
	public int mapkeyIsIn(Map map) {
		return dao.mapkeyIsIn(map);
	}
	@Override
	public int updateAllowed0_forAdmin(Map map) {
		return dao.updateAllowed0_forAdmin(map);
	}
	@Override
	public int updateAllowed0_forCenter(Map map) {
		return dao.updateAllowed0_forCenter(map);
	}
	@Override
	public int delete_expired(Map map) {
		return dao.delete_expired(map);
	}
	@Override
	public RegicenterDTO getMapkey(Map map) {
		return dao.getMapkey(map);
	}
	@Override
	public List<RegicenterDTO> getMapkeyList(Map map) {
		return dao.getMapkeyList(map);
	}
	@Override
	public Map getcenterinfo(Map map) {
		return dao.getcenterinfo(map);
	}
	@Override
	public int isIn(Map map) {
		return dao.isIn(map);
	}
	@Override
	public List<RegicenterDTO> listRegicenter(Map map) {
		return dao.listRegicenter(map);
	}
	@Override
	public String findCenterID(String mk) {
		return dao.findCenterID(mk);
	}

	@Override
	public int totalCount(Map map) {
		return dao.totalCount(map);
	}

	@Override
	public int isInMapCount(Map map) {
		return dao.isInMapCount(map);
		
	}

	@Override
	public RegicenterDTO isAllowed(Map map) {
		return dao.isAllowed(map);
	}

	@Override
	public Map datecollection(Map map) {
		return dao.datecollection(map);
	}

}
