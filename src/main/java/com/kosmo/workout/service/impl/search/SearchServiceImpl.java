package com.kosmo.workout.service.impl.search;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.workout.service.search.SearchBBSCommentDTO;
import com.kosmo.workout.service.search.SearchBBSDTO;
import com.kosmo.workout.service.search.SearchService;

@Service("SearchService")
public class SearchServiceImpl implements SearchService{
	
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
		public SearchBBSDTO setComplexity(Map map) {
			return dao.setComplexity(map);
		}
		//센터 정보 입력, 수정 관련 끝//
		
		
		//코멘트 입력 , 리스트 뿌려주기 시작//
		public int insertComment(Map map) {
			return dao.insertComment(map);
		}
		public List<SearchBBSCommentDTO> selectListComment(Map map) {
			return dao.selectListComment(map);		
		}
		public int DeleteListComment(Map map) {
			return dao.deleteComment(map);			
		}
		public int updateListComment(Map map) {
			return dao.updateComment(map);			
		}
		//코멘트 입력 , 리스트 뿌려주기 끝//


		@Override
		public int setRating(Map map) {
			return dao.setRating(map);
		}
		
		
		@Override
		public int isBookmarked(Map map) {
			return dao.isBookmarked(map);
		}

		@Override
		public int insertBookmark(Map map) {
			return dao.insertBookmark(map);
		}
		@Override
		public int deleteBookmark(Map map) {
			return dao.deleteBookmark(map);
		}
		@Override
		public int countBookmarked(Map map) {
			// TODO Auto-generated method stub
			return 0;
		}


		@Override
		public List<Map> selectallBookmark(Map map) {
			return dao.selectallBookmark(map);
		}
		

}
