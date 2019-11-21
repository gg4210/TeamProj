package com.kosmo.workout.service.search;

import java.util.List;
import java.util.Map;


public interface SearchService {

	// 센터 정보 유무 확인용
	int isIn(Map map);
	// 센터 정보 유무 확인용
	
	//센터 정보 입력, 수정, 불러오기 관련//
	int insertSearchDTO(Map map);
	int updateSearchDTO(Map map);	
	SearchBBSDTO selectOneSearchDTO(Map map);
	int setRating(Map map);
	SearchBBSDTO setComplexity(Map map);
	//센터 정보 입력, 수정 관련 끝//
	
	
	
	//북마크 여부
	int isBookmarked(Map map);
	//3개인지 여부
	int countBookmarked(Map map);
	//넣기
	int insertBookmark(Map map);
	//삭제하기
	int deleteBookmark(Map map);
	
	
	
	//코멘트 입력 , 리스트 뿌려주기 시작//
	int insertComment(Map map);
	List<SearchBBSCommentDTO> selectListComment(Map map);
	int DeleteListComment(Map map);
	int updateListComment(Map map);
	//코멘트 입력 , 리스트 뿌려주기 끝//
	
}
