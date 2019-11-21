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
	
	public void authjoin(Map map) {
		dao.authjoin(map);
	}

	@Override
	public void delete(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int Isdata(Map map) {
		return dao.Isdata(map);
	}

	@Override
	public MemberDTO selectOne(Map map) {
		System.out.println("ServiceImpl 통과");
		System.out.println(map);
		return dao.selectOne(map);
	}

	//QR코드용]
	@Override
	public int selectMapkey(Map map) {
		return dao.selectMapkey(map);
	}

}
