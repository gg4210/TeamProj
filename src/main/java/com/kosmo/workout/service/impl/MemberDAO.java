package com.kosmo.workout.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.MemberDTO;
import com.kosmo.workout.service.MemberService;

@Repository("MemberDAO")
public class MemberDAO implements MemberService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public boolean login(Map map) {
		return (Integer)template.selectOne("IsLogin",map)==0?false:true;
	}
	
	public int Isdata(Map map) {
		return template.selectOne("Isdata",map);
	}
	
	
	public List<Map> selectList(Map map) {
		return template.selectList("MemberSelectList", map);
	}

	@Override
	public int insertJoin(Map map) {
		return template.insert("MemberJoin",map);
		
	}
	public void authjoin(Map map) {
		template.insert("AuthJoin",map);
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
	public MemberDTO selectOne(Map map) {
		System.out.println("DAO 통과");
		System.out.println(map);
		return template.selectOne("MemberSelectOne", map);
	}

	//QR코드-맵키 가져오기
	@Override
	public int selectMapkey(Map map) {
		return template.selectOne("makeqr",map);
	}

	

	
	
}
