package com.kosmo.workout.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.workout.service.search.SearchBBSCommentDTO;
import com.kosmo.workout.service.search.SearchBBSDTO;
import com.kosmo.workout.service.search.SearchService;
import com.kosmo.workout.util.CommonUtility;



@Controller
public class SearchController {
	
	@Resource(name="SearchService")
	private SearchService SearchService;
	
	
	@RequestMapping("/searchList.do")
	public String searchList(@RequestParam Map map) {
		return "search/list.tiles";	
	}
	
	@RequestMapping(value="/searchView.do", method=RequestMethod.POST)
	public String searchView(@RequestParam Map map, HttpServletRequest req, Model model) throws IOException {
		
		SearchBBSDTO viewinfo=CommonUtility.mapkeyCrawling(map.get("mapkey").toString(), map.get("tel").toString(), req);
		viewinfo.setMapkey(map.get("mapkey").toString());
		viewinfo.setTitle(map.get("title").toString());
		viewinfo.setTel(map.get("tel").toString());
		viewinfo.setAddr(map.get("addr").toString());		
		
		if(map.get("jibunAddr")!=null) {
			viewinfo.setJibunAddr(map.get("jibunAddr").toString());
		}
	
		//테이블에 들어있냐?
		int isIn=SearchService.isIn(map);
		if(isIn!=0) {
			
			SearchBBSDTO dto=SearchService.selectOneSearchDTO(map);// 있으면 우리 데이터 베이스!
			
			/*viewinfo.setMaxNumber(dto.getMaxNumber());*/
			
			viewinfo.setCountNum(dto.getCountNum());
			viewinfo.setImg_urls(dto.getImg_urls());
			viewinfo.setContent(dto.getContent());
			viewinfo.setOtime(dto.getOtime());
			viewinfo.setTag(dto.getTag());
			viewinfo.setSport_kind(dto.getSport_kind());

		}
		
		
		String avgRate=CommonUtility.ratingString(SearchService.setRating(map));
		viewinfo.setAvgR(SearchService.setRating(map));
		viewinfo.setAvgRate(avgRate);
		
		SearchBBSDTO dto=SearchService.setComplexity(map);
		viewinfo.setCountNum(dto.getCountNum());
		viewinfo.setMaxNumber(dto.getMaxNumber());
		
		model.addAttribute("viewinfo",viewinfo);
		
		//int complexity=0;
		//model.addAttribute("complexity",complexity);
		
		return "search/view.tiles";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/show_Summery.do", method=RequestMethod.POST)
	public String SummeryView(@RequestParam Map map, Model model) {
		
		SearchBBSDTO viewinfo = new SearchBBSDTO();
		String avgRate=CommonUtility.ratingString(SearchService.setRating(map));//별 표시
		
		viewinfo.setAvgR(SearchService.setRating(map));// 평점 싣기
		viewinfo.setAvgRate(avgRate);//별표시 싣기
		
		SearchBBSDTO dto=SearchService.setComplexity(map);
		viewinfo.setCountNum(dto.getCountNum());
		viewinfo.setMaxNumber(dto.getMaxNumber());
		
		model.addAttribute("viewinfo",viewinfo);
		
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/showBookmarked.do", method=RequestMethod.POST)
	public String BookmarkedView(@RequestParam Map map, Model model) {
		
		
		
		return null;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/commentwrite.do", method=RequestMethod.POST)
	public int insertSearchComment(@RequestParam Map map, Authentication auth) {
		
		System.out.println("insert로 들어옵니까?");
		UserDetails userDetails=(UserDetails)auth.getPrincipal();
		userDetails.getUsername();
		map.put("id", userDetails.getUsername());//시큐리티 적용 후
		System.out.println(map);		
		int insertInt=SearchService.insertComment(map);
		return insertInt;
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/commentlist.do", method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String listSearchComment(@RequestParam Map map) {
		
		System.out.println("list로 들어옵니까?");
		
		List<SearchBBSCommentDTO> list=SearchService.selectListComment(map);
		
		System.out.println(list);
		System.out.println(list.getClass().toString());
				
		List<Map> collections=new Vector<Map>();
		
		for(SearchBBSCommentDTO dto:list) {
			Map record=new HashMap();
			record.put("NO", dto.getNo());
			record.put("PICTURE", dto.getPicture());
			record.put("RATE", dto.getRate());
			record.put("RPOSTDATE", dto.getrPostDate().toString());
			record.put("ID", dto.getId());
			record.put("RCOMMENT", dto.getrComment());
			record.put("NICK_NAME", dto.getNICK_NAME());
			record.put("MAPKEY", dto.getMapkey());
			collections.add(record);
		}
		
		String jsonString =JSONArray.toJSONString(collections);
		System.out.println(jsonString);
		
		return jsonString;
	
	}
	
}
