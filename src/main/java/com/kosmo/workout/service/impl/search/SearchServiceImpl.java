package com.kosmo.workout.service.impl.search;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.search.SearchBBSCommentDTO;
import com.kosmo.workout.service.search.SearchBBSDTO;

@Service("SearchService")
public class SearchServiceImpl {
	
		@Resource(name="SearchDAO")
		private SearchDAO dao;
	
	
		// 센터 정보 유무 확인용
		public int isIn(Map map) {
			return dao.isIn(map);
		}
		// 센터 정보 유무 확인용
		
		
		//센터 정보 입력, 수정, 불러오기 관련//
		public int insertSearchDTO(Map map) {
			return dao.insertSearchDTO(map);		
		}
		public int updateSearchDTO(Map map) {
			return dao.updateSearchDTO(map);			
		}
		public SearchBBSDTO selectOneSearchDTO(Map map) {
			return dao.selectOneSearchDTO(map);
		}
		//센터 정보 입력, 수정 관련 끝//
		
		
		//코멘트 입력 , 리스트 뿌려주기 시작//
		public int insertComment(Map map) {
			return dao.insertComment(map);
		}
		List<SearchBBSCommentDTO> selectListComment(Map map) {
			return dao.selectListComment(map);		
		}
		public int DeleteListComment(Map map) {
			return dao.deleteComment(map);			
		}
		public int updateListComment(Map map) {
			return dao.updateComment(map);			
		}
		//코멘트 입력 , 리스트 뿌려주기 끝//
		

}
