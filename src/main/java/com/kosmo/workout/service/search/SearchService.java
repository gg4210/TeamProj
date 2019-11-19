package com.kosmo.workout.service.search;

import java.util.Map;

public interface SearchService {

	// 센터 정보 유무 확인용
	int isIn(Map map);
	// 센터 정보 유무 확인용
	
	//센터 정보 입력, 수정, 불러오기 관련//
	SearchBBSDTO insertSearchDTO(Map map);
	SearchBBSDTO updateSearchDTO(Map map);	
	SearchBBSDTO selectOneSearchDTO(Map map);
	//센터 정보 입력, 수정 관련 끝//
	
	//코멘트 입력 , 리스트 뿌려주기 시작//
	SearchBBSCommentDTO insertComment(Map map);
	SearchBBSCommentDTO selectListComment(Map map);
	SearchBBSCommentDTO DeleteListComment(Map map);
	SearchBBSCommentDTO updateListComment(Map map);
	//코멘트 입력 , 리스트 뿌려주기 끝//
	
}
