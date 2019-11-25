package com.kosmo.workout.service;

import java.util.List;
import java.util.Map;

public interface CouponService {
	//전체 쿠폰 수]
	int countCoupon(Map map);
	
	//쿠폰 목록]
	List<CouponDTO> selectList(Map map);
	
	//쿠폰 입력]
	int insert(Map map);
	
	//삭제]
	int delete(Map map);
	
}
