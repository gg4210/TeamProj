package com.kosmo.workout.service.impl.search;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.workout.service.search.SearchBBSCommentDTO;
import com.kosmo.workout.service.search.SearchBBSDTO;

@Repository("SearchDAO")
public class SearchDAO {
	
	
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	// 센터 정보 유무 확인용
	public int isIn(Map map) {
		return (Integer)template.selectOne("isIn",map);
	}
	// 센터 정보 유무 확인용
	
	
	
	//센터 정보 입력, 수정, 불러오기 관련//
	public int insertSearchDTO(Map map) {
		return template.insert("insertSearch",map);
	}
	public int updateSearchDTO(Map map) {
		return template.update("updateSearch",map);		
	}
	public SearchBBSDTO selectOneSearchDTO(Map map) {
		return template.selectOne("seleteOneSearch",map);
	}
	public int setRating(Map map) {
		return (Integer) (template.selectOne("avgRate",map)==null?0:template.selectOne("avgRate",map));
	}
	public SearchBBSDTO setComplexity(Map map) {
		return template.selectOne("complexity",map);
	}
	//센터 정보 입력, 수정 관련 끝//

	
	
	//북마크 관련//
	public int isBookmarked(Map map) {
		return template.selectOne("isBookmarked",map);
	}
	public int countBookmark(Map map) {
		return template.selectOne("countBookmark",map);
	}
	public int insertBookmark(Map map) {
		return template.insert("insertBookmark",map);
	}
	public int deleteBookmark(Map map) {
		return template.delete("deleteBookmark",map);
	}
	//북마크 관련//	
	
	
	
	
	//코멘트 입력 , 리스트 뿌려주기 시작//
	public int insertComment(Map map) {
		return template.insert("insertComment",map);	
	}
	public List<SearchBBSCommentDTO> selectListComment(Map map) {
		return template.selectList("listComment",map);		
	}
	public int deleteComment(Map map) {
		return template.delete("deleteComment",map);	
	}
	public int updateComment(Map map) {
		return template.update("updateComment",map);		
	}
	//코멘트 입력 , 리스트 뿌려주기 끝//



	public List<Map> selectallBookmark(Map map) {
		return template.selectList("selectallBookmark", map);
	}
	
	
}
