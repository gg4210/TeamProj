package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.MemberService;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{
	
	
	//MemberDAO주입]
	@Resource(name="MemberDAO")
	private MemberDAO dao;
	
	@Override
	public boolean login(Map map) {
		return dao.login(map);
	}
	
	@Override
	public List<Map> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int insertJoin(Map map) {
		return dao.insertJoin(map);
	}
	@Override
	public int insertCenterJoin(Map map) {
		return dao.insertCenterJoin(map);
	}
	
	public void authjoin(Map map) {
		dao.authjoin(map);
	}

	@Override
	public void delete(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean update(Map map) {
		return dao.update(map);
		
	}

	@Override
	public int Isdata(Map map) {
		return dao.Isdata(map);
	}

	@Override
	public MemberDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	//QR코드용]
	@Override
	public int selectMapkey(Map map) {
		return dao.selectMapkey(map);
	}

}
