package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.MemberService;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{
	
	
	//MemberDAO주입]
	@Resource(name="MemberDAO")
	private MemberDAO dao;
	
	@Override
	public boolean login(Map map) {
		return dao.isLogin(map);
	}
	
	@Override
	public List<Map> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public void insert(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Map map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Map map) {
		// TODO Auto-generated method stub
		
	}

}