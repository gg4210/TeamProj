package com.kosmo.workout.web;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.workout.service.CSDTO;
import com.kosmo.workout.service.CSService;

//@SessionAttributes("id")//스프링 씨큐리티를 사용하지 않을때
@Controller
public class CustomerServiceController {
	
	//서비스 주입]
	@Resource(name = "CSService")
	private CSService CSService;
		
	
	//리소스파일(cs.properties-아직 안 만듦)에서 읽어오기
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage; 
	
	
	//목록 처리]	
//	@RequestMapping("")
//	public String listsample(@RequestParam Map map) {
//		//서비스 호출]
//		//페이징을 위한 로직 시작]
//		//전체 레코드 수]
//		//전체 페이지 수]
//		//시작 및 끝 ROWNUM 구하기]
//		//페이징을 위한 로직 끝]
//		
//		//데이터 저장]
//		//뷰 정보 반환]
//		return null;
//	}
	
//	@RequestMapping("")
//	public String mainPage(@RequestParam Map map) {
//		
//		return null;
//	}
	
	
	

	//공지사항 작성폼으로 이동]
	@RequestMapping(value= {"/member/noticeWrite.do","/admin/customerService/notice/noticeWrite.do"},method = RequestMethod.GET)
	public String noticeWrite() {
		return "customerService/notice/noticeWrite.tiles";
	}	
	//공지사항 작성 처리]
		@RequestMapping(value = "/member/noticeWrite.do",method=RequestMethod.POST)
		public String noticeWriteOk(@RequestParam Map map,Authentication auth) {
			//서비스 호출]
			//스프링 시큐리티 사용 시 아래에 코드 추가
			UserDetails userDetails = (UserDetails)auth.getPrincipal(); 
			//호출 전 아이디 맵에 저장
			map.put("id",userDetails.getUsername());
						
			CSService.insert(map);
			
			Collection auths = userDetails.getAuthorities();
			System.out.println("id : "+userDetails.getUsername());
			System.out.println("principal:"+auth.getPrincipal().toString());
			
			for(GrantedAuthority a : auth.getAuthorities()){
				System.out.println(a.getAuthority());
			}
			
			return "forward:/member/customerService/notice/noticeList.do";////포워드 했으면 정보 가져가야 하는 거 아냐?
		}
//	//수정 전 연결페이지
//	@RequestMapping("/customerService/notice/noticeWrite.do")
//	public String noticeWrite() {
//		return "customerService/notice/noticeWrite.tiles";////포스트 방식으로 했으니 바꿔줘야 함.
//	}
	
	
	
	//상세보기]
	//공지사항 상세보기]/////////////////////////////////////////////////작업중///////////////////////////////////////////////////
	@RequestMapping("/noticeView.do")
	public String noticeView(@RequestParam Map map,Model model) {
		//서비스 호출]
		CSDTO record = CSService.selectOne(map);
		//데이터 저장]
		//줄바꿈 처리
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		model.addAttribute("record",record);
		//뷰정보 반환
		System.out.println("공지사항 상세보기");//////////////////////////////////////
		System.out.println(record);
		return "customerService/notice/noticeView.tiles";
	}
	//이벤트 상세보기]
	@RequestMapping("/customerService/event/eventView.do")
	public String eventView(@RequestParam Map emap,Model model) {
		System.out.println("이벤트 상세보기");
		CSDTO record = CSService.eventSelectOne(emap); 
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		model.addAttribute("eventRecord", record);
		return "customerService/event/EventView.tiles";
	}
	
	
	
	//수정폼으로 이동 및 수정 처리]
	
	//삭제 처리]
	
	//기타 연결하기???
	
	/////////////////////////////////////////////////////////////////
	
	@RequestMapping("/member/customerServiceMain.do")
	public String mainPage(@RequestParam Map map,@RequestParam Map emap,Model model) {
		//서비스 호출]
		//페이징을 위한 로직 시작]
		//전체 레코드 수]
		//int noticeRecordCount = CSService.getNoticeRecord(map);
		//전체 페이지 수]
		//int totalPage = (int)Math.ceil((double)noticeRecordCount/pageSize);
		//시작 및 끝 ROWNUM 구하기]
		//페이징을 위한 로직 끝]
		List<CSDTO> noticeList = CSService.noticeSelectList(map);
		List<CSDTO> eventList = CSService.eventSelectList(emap);
		
		//데이터 저장]
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("eventList",eventList);
		
		System.out.println(noticeList);
		System.out.println(eventList);
		System.out.println(model);
		//뷰 정보 반환]
		return "customerService/customerServiceMain.tiles";
	}
	
	//공지사항 목록 처리]
		@RequestMapping("/member/noticeList.do")
		public String noticeList(
				@RequestParam Map map,
				Model model,
				HttpServletRequest req,
				@RequestParam(required = false, defaultValue = "1") int nowPage
				) {
			//서비스 호출]
			//페이징을 위한 로직 시작]
			//전체 레코드 수]
			int noticeRecordCount = CSService.getNoticeRecord(map);
			//전체 페이지 수]
			int totalPage = (int)Math.ceil((double)noticeRecordCount/pageSize);
			//시작 및 끝 ROWNUM 구하기]
			int start = (nowPage-1)*pageSize+1;
			int end = nowPage*pageSize;
			//페이징을 위한 로직 끝]
			map.put("start",start);
			map.put("end",end);
			List<CSDTO> list = CSService.noticeSelectList(map);
			//데이터 저장]
			//////////////////String pagingString = PagingUtil.pagingBootStrapStyle(noticeRecordCount,pageSize,blockPage,nowPage,req.getContextPath()+"/customerService/notice/noticeList.do?");
			
			model.addAttribute("noticeList", list);
			//뷰 정보 반환]
			return "customerService/notice/noticeList.tiles";
		}
		//이벤트 목록 처리]
		@RequestMapping("/customerService/event/eventList.do")
		public String eventList(@RequestParam Map emap,Model model) {
			System.out.println("이벤트 리스트");
			List<CSDTO> eventList = CSService.eventSelectList(emap);
			model.addAttribute("eventList", eventList);
			
			return "customerService/event/eventList.tiles";
		}
		//1:1문의 목록 처리]
		@RequestMapping("/customerService/consult/consultList.do")
		public String consultList(@RequestParam Map cmap,Model model) {
//			//서비스 호출]
//			//페이징을 위한 로직 시작]
//			//전체 레코드 수]
//			int noticeRecordCount = CSService.getNoticeRecord(map);
//			//전체 페이지 수]
//			int totalPage = (int)Math.ceil((double)noticeRecordCount/pageSize);
//			//시작 및 끝 ROWNUM 구하기]
//			int start = (nowPage-1)*pageSize+1;
//			int end = nowPage*pageSize;
//			//페이징을 위한 로직 끝]
//			map.put("start",start);
//			map.put("end",end);
//			List<CSDTO> list = CSService.noticeSelectList(map);
//			//데이터 저장]
//			model.addAttribute("list", list);
//			//뷰 정보 반환]
//			return "customerService/notice/noticeList.tiles";
//			
			
			
			CSDTO record = CSService.selectOne(cmap);//메소드 생성/변경 해야함.
			return "customerService/consult/consultList.tiles";
		}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
//	@RequestMapping("/moreFAQ.do")
//	public String moreFAQ() {
//		return "customerService/faq/FAQ.tiles";
//	}
	
	@RequestMapping("/moreNoticeView.do")
	public String moreNotice() {
		return "customerService/notice/noticeList.tiles";
	}
	
	
	
	
	
	
	//공지사항 수정폼으로 이동 및 수정처리]★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	@RequestMapping("/member/noticeEdit.do")
	public String noticeEdit(HttpServletRequest req,@RequestParam Map map) {
		if(req.getMethod().equals("GET")) {//수정폼으로 이동
			//서비스 호출]
			CSDTO record = CSService.selectOne(map);
			//데이터 저장]
			req.setAttribute("record", record);
			//수정폼으로 이동]
			return "customerService/notice/noticeEdit.tiles";
		}
		
//		//수정처리 후 메시지 뿌려주는 페이지로 이동
//		int result=CSService.update(map);
//		req.setAttribute("WHERE", "EDT");
//		req.setAttribute("RESULT", result);
//		return "customerService/Message";
		return "customerService/notice/noticeEdit.tiles";
	}
//	@RequestMapping("/customerService/notice/noticeEdit.do")
//	public String noticeEdit() {
//		return "customerService/notice/noticeEdit.tiles";
//	}
	
	
	
	
	
	
	@RequestMapping("/customerService/consult/consultView.do")
	public String consultView() {
		return "customerService/consult/consultView.tiles";
	}
	
//	@RequestMapping("/customerService/consult/consultList.do")
//	public String consultList() {
//		
//		return "customerService/consult/consultList.tiles";
//	}
	
	@RequestMapping("/customerService/consult/consultEdit.do")
	public String consultEdit () {
		return "customerService/consult/consultEdit.tiles";		
	}
	
	
	
//	@RequestMapping("/customerService/event/eventView.do")
//	public String eventView() {
//		System.out.println("이벤트 상세보기");
//		return "customerService/event/EventView.tiles";
//	}
	
	@RequestMapping("/customerService/event/eventEdit.do")
	public String eventEdit() {
		return "customerService/event/eventEdit.tiles";
	}	
	
//	@RequestMapping("/customerService/event/eventList.do")
//	public String eventList() {
//		System.out.println("이벤트 리스트");
//		
//		return "customerService/event/eventList.tiles";
//	}
	
	@RequestMapping("/customerService/event/eventWrite.do")
	public String eventWrite() {
		return "customerService/event/eventWrite.tiles";
	}
	
	


	
	@RequestMapping("/FAQWrite.do")
	public String faqWrite() {
		return "customerService/faq/FAQWrite.tiles";
	}
	
	@RequestMapping("/customerService/faq/FAQ.do")
	public String goFAQ() {
		return "customerService/faq/FAQ.tiles";
	}
		
	@RequestMapping("/customerService/consult/replyWrite.do")
	public String replyWrite() {
		return "customerService/consult/replyWrite.tiles";
	}
	
//	@RequestMapping("")
//	public String () {
//		return "";
//	}
	
//	////필메뉴 제어 하려고... 2019.10.31
//	/* 고객센터 메인으로 이동하게 하는 Controller 시작*/
//	@RequestMapping("/customerService.do")
//	public String customer(){
//		return "mypage/customer/mypage_Index.tiles";
//	}
	
}
