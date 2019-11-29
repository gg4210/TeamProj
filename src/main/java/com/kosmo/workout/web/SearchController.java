package com.kosmo.workout.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@ResponseBody
	@RequestMapping(value="/viewComplexAndStar.do", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	public String complexAndstar(@RequestParam Map map) {

		
		System.out.println("complexAndstar ajax");
		JSONObject json=new JSONObject();
		int rate=SearchService.setRating(map);	
		String avgRate=CommonUtility.ratingString(rate);//별 표시
		json.put("avgRate", avgRate);
		
		SearchBBSDTO dto=SearchService.setComplexity(map);
		int countnum=dto.getCountNum();
		int maxnum=dto.getMaxNumber();
		String complex=CommonUtility.isComplex(countnum, maxnum);

		json.put("complex", complex);
		System.out.println("complex"+complex);
		
		return json.toJSONString();	
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
			
			String filename=dto.getFilename();
			String img_url[]=filename.split(",");
			//viewinfo.setImg_urls(filename.split(","));
			
			for(int i=0;i<img_url.length;i++) {
				System.out.println("img_url: "+img_url[i]);
				
				}
			
		
			viewinfo.setCountNum(dto.getCountNum());
			viewinfo.setImg_urls(dto.getImg_urls());
			viewinfo.setContent(dto.getContent());
			viewinfo.setOtime(dto.getOtime());
			viewinfo.setTag(dto.getTag());
			viewinfo.setSport_kind(dto.getSport_kind());
			viewinfo.setService(dto.getService());
			viewinfo.setImg_urls(img_url);

		}
			System.out.println(viewinfo.getImg_urls());
		
		
		String avgRate=CommonUtility.ratingString(SearchService.setRating(map));
		viewinfo.setAvgR(SearchService.setRating(map));
		viewinfo.setAvgRate(avgRate);
		
		SearchBBSDTO dto=SearchService.setComplexity(map);
		viewinfo.setCountNum(dto.getCountNum());
		viewinfo.setMaxNumber(dto.getMaxNumber());
		
		model.addAttribute("viewinfo",viewinfo);
		System.out.println("Img_urls: "+viewinfo.getImg_urls());
		System.out.println("getContent: "+viewinfo.getContent());
		
		//int complexity=0;
		//model.addAttribute("complexity",complexity);
		
		return "search/view.tiles";
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/show_Summery.do", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	public String SummeryView(@RequestParam Map map, Model model, Authentication auth) {
		
		System.out.println("별표시, 평점, 혼잡도 ajax");
		System.out.println("이게 안되는건가");
				
		int rate=SearchService.setRating(map);
		String avgRate=CommonUtility.ratingString(rate);//별 표시
		SearchBBSDTO dto=SearchService.setComplexity(map);
		int countnum=dto.getCountNum();
		int maxnum=dto.getMaxNumber();
		String complex=CommonUtility.isComplex(countnum, maxnum);
		System.out.println("complex는 "+complex);
		
		map.put("id", ((UserDetails)auth.getPrincipal()).getUsername());
		int isbookmarked=SearchService.isBookmarked(map);
		int countBooked=SearchService.countBookmarked(map);
		
		String bookmarkedString=CommonUtility.Bookmarked(isbookmarked, countBooked);		
		JSONObject json=new JSONObject();

		json.put("rate", rate);
		json.put("bookmarkedString", bookmarkedString);
		json.put("rateString", avgRate);
		json.put("complex", complex);
		
		return json.toJSONString();
		
	}
	
	@ResponseBody
	@RequestMapping(value="/insertdelete.do", method=RequestMethod.POST)
	public String InsertDelete(@RequestParam Map map,Authentication auth) {
			
		System.out.println("북마크 insert/delete/warning 처리");
		JSONObject json=new JSONObject();
		
		map.put("id", ((UserDetails)auth.getPrincipal()).getUsername());
		int isbookmarked=SearchService.isBookmarked(map);
		int countBooked=SearchService.countBookmarked(map);
		if(countBooked<=3) {
			if(isbookmarked==1) {
				SearchService.deleteBookmark(map);
				isbookmarked=SearchService.isBookmarked(map);
				countBooked=SearchService.countBookmarked(map);
				String bookmarkedString=CommonUtility.Bookmarked(isbookmarked, countBooked);
				json.put("status", "DELETE");
				json.put("bookmarkedString", bookmarkedString);
				
			}
			else {
				SearchService.insertBookmark(map);
				isbookmarked=SearchService.isBookmarked(map);
				countBooked=SearchService.countBookmarked(map);
				String bookmarkedString=CommonUtility.Bookmarked(isbookmarked, countBooked);
				json.put("status","INSERT");
				json.put("bookmarkedString", bookmarkedString);
			}
		}
		else {
			json.put("status","WARNING");
		}
		return json.toJSONString();
		
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/commentwrite.do", method=RequestMethod.POST)
	public int insertSearchComment(@RequestParam Map map, Authentication auth) {
		
		System.out.println("insert로 들어옵니까?");
		UserDetails userDetails=(UserDetails)auth.getPrincipal();
		map.put("id", userDetails.getUsername());//시큐리티 적용 후
		System.out.println(map);		
		int insertInt=SearchService.insertComment(map);
		return insertInt;
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/commentlist.do", method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String listSearchComment(@RequestParam Map map) {		
		
		List<SearchBBSCommentDTO> list=SearchService.selectListComment(map);		
				
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
		
		return jsonString;
	
	}
	
	
	@ResponseBody
	@RequestMapping(value="/addMarker.do", method=RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String MarkerIsIN(@RequestParam Map map) {
		
		System.out.println("addMarker로 들어옵니까?");
		
		return null;
	
	}
	
	
	
	
}
