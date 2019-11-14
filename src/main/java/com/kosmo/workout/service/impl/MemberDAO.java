package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.MemberService;

@Repository("MemberDAO")
public class MemberDAO implements MemberService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	public boolean isLogin(Map map) {
		return (Integer)template.selectOne("Islogin",map)==0?false:true;
	}
	
	public List<Map> selectList(Map map) {
		return template.selectList("MemberSelectList", map);
	}

	@Override
	public int insertJoin(Map map) {
		return template.insert("MemberJoin",map);
		
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
	public boolean login(Map map) {
		return (Integer)template.selectOne("IsLogin",map)==0?false:true;
	}
	
}
