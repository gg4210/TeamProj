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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.workout.service.CSDTO;
import com.kosmo.workout.service.CSService;
import com.kosmo.workout.util.CommonUtility;

//@SessionAttributes("id")//스프링 씨큐리티를 사용하지 않을때
@Controller
public class CustomerServiceController {
	
	//서비스 주입]
	@Resource(name = "CSService")
	private CSService CSService;
	
	//리소스파일(memo.properties)에서 읽어오기
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	//0]지울 수 있다면 좋겠는데.
	//공지사항 목록 처리]-작성 시 필요. 더 좋은 방법 있다면 수정 후 삭제 가능.
	@RequestMapping("/member/noticeList.do")
	public String noticeList(
			@RequestParam Map map,
			Model model,
			HttpServletRequest req,
			@RequestParam(required = false,defaultValue="1")int nowPage
			) {
		int totalNoticeRecordCount = CSService.getNoticeRecord(map);
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> noticeList = CSService.noticeSelectList(map);
		String noticePagingString = CommonUtility.pagingBootStrap4Style(totalNoticeRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/noticeList.do?");
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("noticePagingString", noticePagingString);
		model.addAttribute("totalNoticeRecordCount",totalNoticeRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		return "customerService/notice/noticeList.tiles";
	}
	//FAQ 목록 처리]
	@RequestMapping("/member/FAQ.do")
	public String faqList(@RequestParam Map map,
			Model model,
			HttpServletRequest req,
			@RequestParam(required = false,defaultValue="1")int nowPage
			) {
		int totalFAQRecordCount = CSService.getFAQRecord(map);
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> faqList = CSService.faqSelectList(map);
		String faqPagingString = CommonUtility.pagingBootStrap4Style(totalFAQRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/FAQ.do?");
		
		model.addAttribute("faqList", faqList);
		model.addAttribute("faqPagingString", faqPagingString);
		model.addAttribute("totalNoticeRecordCount",totalFAQRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		return "customerService/faq/FAQ.tiles";
	}
	
	//이벤트 목록 처리]
	@RequestMapping("/member/eventList.do")
	public String eventList(@RequestParam Map map,
			Model model,
			HttpServletRequest req,
			@RequestParam(required = false,defaultValue="1")int nowPage
			) {
		int totalEventRecordCount = CSService.getEventRecord(map);
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> eventList = CSService.eventSelectList(map);
		String eventPagingString = CommonUtility.pagingBootStrap4Style(totalEventRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/eventList.do?");
		
		model.addAttribute("eventList", eventList);
		model.addAttribute("eventPagingString", eventPagingString);
		model.addAttribute("totalEventRecordCount",totalEventRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		return "customerService/event/eventList.tiles";
	}
	//1:1문의 목록 처리]
	@RequestMapping("/member/consultList.do")
	public String consultList(@RequestParam Map map,
			Model model,
			HttpServletRequest req,
			Authentication auth,
			@RequestParam(required = false,defaultValue="1")int nowPage
			) {
		UserDetails userDetails = (UserDetails)auth.getPrincipal();
		map.put("id",userDetails.getUsername());
		Collection auths = userDetails.getAuthorities();
		
		int totalConsultRecordCount = CSService.getConsultRecord(map);
		int adminConsultRecordCount = CSService.getAdminConsultRecord(map);
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> consultList = CSService.consultSelectList(map);
		List<CSDTO> adminConsultList = CSService.adminSelectList(map);
		
		String consultPagingString = CommonUtility.pagingBootStrap4Style(totalConsultRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/consultList.do?");
		String adminConsultPagingString = CommonUtility.pagingBootStrap4Style(adminConsultRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/consultList.do?");
		
		model.addAttribute("consultList", consultList);
		model.addAttribute("consultPagingString", consultPagingString);
		model.addAttribute("adminConsultPagingString", adminConsultPagingString);
		model.addAttribute("totalConsultRecordCount",totalConsultRecordCount);
		model.addAttribute("adminConsultList", adminConsultList);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		return "customerService/consult/consultList.tiles";
	}
	//admin 1:1
	@RequestMapping("/admin/consultList.do")
	public String adminConsult(HttpServletRequest req,@RequestParam Map map,Model model) {
		//답변 작성 후 뿌려주는 페이지(Message.jsp)로 이동
		int reply=CSService.adminConsultUpdate(map);
		CSDTO record = CSService.selectOne(map);
		record.setReply(record.getReply().replace("\r\n", "<br/>"));
		model.addAttribute("record",record);
		System.out.println("reply 등록입니다.update쿼리 실행 후 reply:"+reply);
		req.setAttribute("WHERE", "REPLY");
		req.setAttribute("SUCFAIL", reply);
		System.out.println("reply 등록입니다. req:"+req);
		return "customerService/Message";
		
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//1]Side.jsp에서 고객센터 아이콘 클릭 시 들어옴.
	@RequestMapping("/member/customerServiceMain.do")
	public String mainPage(@RequestParam Map map,Model model,
			HttpServletRequest req,
			Authentication auth,
			@RequestParam(required = false,defaultValue="1")int nowPage) {
		UserDetails userDetails = (UserDetails)auth.getPrincipal();
		map.put("id",userDetails.getUsername());
		Collection auths = userDetails.getAuthorities();
		
		//서비스 호출]
		//페이징을 위한 로직 시작]
	 	//전체 레코드수
		int totalNoticeRecordCount = CSService.getNoticeRecord(map);
		int totalFAQRecordCount = CSService.getFAQRecord(map);
		int totalEventRecordCount = CSService.getEventRecord(map);
		int totalConsultRecordCount = CSService.getConsultRecord(map);
		int adminConsultRecordCount = CSService.getAdminConsultRecord(map);
		
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		//페이징을 위한 로직 끝]
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> noticeList = CSService.noticeSelectList(map);
		List<CSDTO> eventList = CSService.eventSelectList(map);
		List<CSDTO> consultList = CSService.consultSelectList(map);
		List<CSDTO> adminConsultList = CSService.adminSelectList(map);
		List<CSDTO> homeNoticeList = CSService.homeNoticeSelectList(map);
		List<CSDTO> faqList = CSService.faqSelectList(map);
		List<CSDTO> homeFaqList = CSService.homeFaqSelectList(map);
		
		//데이터 저장]
		String noticePagingString = CommonUtility.pagingBootStrap4Style(totalNoticeRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/noticeList.do?");
		String faqPagingString = CommonUtility.pagingBootStrap4Style(totalFAQRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/FAQ.do?");
		String eventPagingString = CommonUtility.pagingBootStrap4Style(totalEventRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/eventList.do?");
		String consultPagingString = CommonUtility.pagingBootStrap4Style(totalConsultRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/consultList.do?");
		String adminConsultPagingString = CommonUtility.pagingBootStrap4Style(adminConsultRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/consultList.do?");

		//데이터 저장]
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("eventList",eventList);
		model.addAttribute("consultList", consultList);
		model.addAttribute("adminConsultList", adminConsultList);
		model.addAttribute("homeNoticeList", homeNoticeList);
		model.addAttribute("faqList", faqList);
		model.addAttribute("homeFaqList", homeFaqList);
		
		model.addAttribute("noticePagingString", noticePagingString);
		model.addAttribute("faqPagingString",faqPagingString);
		model.addAttribute("eventPagingString", eventPagingString);
		model.addAttribute("consultPagingString", consultPagingString);
		model.addAttribute("adminConsultPagingString", adminConsultPagingString);

		
		//여기 필요 있나?
		model.addAttribute("totalNoticeRecordCount",totalNoticeRecordCount);
		model.addAttribute("totalNoticeRecordCount",totalFAQRecordCount);
		model.addAttribute("totalEventRecordCount",totalEventRecordCount);
		model.addAttribute("totalConsultRecordCount",totalConsultRecordCount);		
		
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		//뷰 정보 반환]
		return "customerService/customerServiceMain.tiles";
	}
	//2]상세보기 페이지로 이동 : CustomerServiceMain.jsp->"공지/이벤트":include:(active)noticeList.jsp-><a>클릭
	//공지사항 상세보기]
	@RequestMapping("/member/noticeView.do")
	public String noticeView(@RequestParam Map map,Model model) {
		CSDTO record = CSService.selectOne(map);
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		model.addAttribute("record",record);
		
		System.out.println("공지사항 상세보기");//////////////////////////////////////
		System.out.println(record);
		return "customerService/notice/noticeView.tiles";
	}
	//FAQ 상세보기]*****faqList랑 mapping 겹쳐서 오류남. 아코디언은 더 연구가 필요해보임*****
//	@RequestMapping("/member/FAQ.do")
//	public String faq(@RequestParam Map map,Model model) {
//		//CSDTO record = CSService.faqSelectOne(map);
//		CSDTO record = CSService.selectOne(map);
//		record.setContent(record.getContent().replace("\r\n", "<br/>"));
//		model.addAttribute("faqRecord",record);
//		return "customerService/faq/FAQ.tiles";
//	}
	//이벤트 상세보기]
	@RequestMapping("/member/eventView.do")
	public String eventView(@RequestParam Map map,Model model) {
		//System.out.println("이벤트 상세보기");
		//CSDTO record = CSService.eventSelectOne(map); 
		CSDTO record = CSService.selectOne(map); 
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		model.addAttribute("eventRecord", record);
		return "customerService/event/eventView.tiles";
	}
	//1:1문의 상세보기]
	//user & center
	@RequestMapping("/member/consultView.do")
	public String consultView(@RequestParam Map map,Model model,Authentication auth) {
		CSDTO record = CSService.selectOne(map);
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		if(record.getReply()!=null) {
			record.setReply(record.getReply().replace("\r\n", "<br/>"));
		}
		model.addAttribute("consultRecord", record);
		return "customerService/consult/consultView.tiles";
	}
	//admin
	@RequestMapping("/admin/consultView.do")
	public String adminConsultView(@RequestParam Map map,Model model) {
		CSDTO record = CSService.selectOne(map);
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		if(record.getReply()!=null) {
			record.setReply(record.getReply().replace("\r\n", "<br/>"));
		}
		model.addAttribute("consultRecord", record);
		return "customerService/consult/admin_consultView.tiles";
	}
	
	//3]작성하기
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
		for(GrantedAuthority a : auth.getAuthorities()){
			System.out.println(a.getAuthority());
		}
		
		return "forward:/member/noticeList.do";//이렇게 보내려면 어쩔 수 없이 0]noticeList()만들어야 함.
	}
	//FAQ 작성폼으로 이동]
	@RequestMapping(value= {"/member/FAQWrite.do"},method = RequestMethod.GET)
	public String faqWrite() {
		return "customerService/faq/FAQWrite.tiles";
	}
	//FAQ 작성 처리]
	@RequestMapping(value = "/member/FAQWrite.do",method=RequestMethod.POST)
	public String faqWriteOk(@RequestParam Map map,Authentication auth) {
		//서비스 호출]
		//스프링 시큐리티 사용 시 아래에 코드 추가
		UserDetails userDetails = (UserDetails)auth.getPrincipal(); 
		//호출 전 아이디 맵에 저장
		map.put("id",userDetails.getUsername());

		 CSService.faqInsert(map);

		return "forward:/member/FAQ.do";
	}
	//이벤트 작성하기]
	//이벤트 작성폼으로 이동]
	@RequestMapping(value= {"/member/eventWrite.do"},method = RequestMethod.GET)
	public String eventWrite() {
		System.out.println("들어오니?");
		return "customerService/event/eventWrite.tiles";
	}
	//이벤트 작성 처리]
	@RequestMapping(value = "/member/eventWrite.do",method=RequestMethod.POST)
	public String eventWriteOk(@RequestParam Map map,Authentication auth) {
		System.out.println("들어오나?");
		//서비스 호출]
		//스프링 시큐리티 사용 시 아래에 코드 추가
		UserDetails userDetails = (UserDetails)auth.getPrincipal(); 
		//호출 전 아이디 맵에 저장
		map.put("id",userDetails.getUsername());

		CSService.eventInsert(map);

		Collection auths = userDetails.getAuthorities();
		for(GrantedAuthority a : auth.getAuthorities()){
			System.out.println(a.getAuthority());
		}

		return "forward:/member/eventList.do";
	}
	//1:1문의 작성하기]
	//1:1문의 작성폼으로 이동]
	@RequestMapping(value= {"/member/consultWrite.do"},method = RequestMethod.GET)
	public String consultWrite() {
		return "customerService/consult/consultWrite.tiles";
	}
	//1:1문의 작성 처리]
	@RequestMapping(value = "/member/consultWrite.do",method=RequestMethod.POST)
	public String consultWriteOk(@RequestParam Map map,Authentication auth) {
		//서비스 호출]
		//스프링 시큐리티 사용 시 아래에 코드 추가
		UserDetails userDetails = (UserDetails)auth.getPrincipal(); 
		//호출 전 아이디 맵에 저장
		map.put("id",userDetails.getUsername());
		CSService.consultInsert(map);

//		Collection auths = userDetails.getAuthorities();
//		for(GrantedAuthority a : auth.getAuthorities()){
//			System.out.println(a.getAuthority());
//		}
		return "forward:/member/customerServiceMain.do";
	}

	//4]수정하기
	//공지사항 수정하기
	@RequestMapping("/member/noticeEdit.do")
	public String noticeEdit(HttpServletRequest req,@RequestParam Map map) {
		if(req.getMethod().equals("GET")) {
			CSDTO record = CSService.selectOne(map);
			req.setAttribute("noticeRecord", record);
			return "customerService/notice/noticeEdit.tiles";
		}
		//수정처리 후 메시지 뿌려주는 페이지(Message.jsp)로 이동
		int sucFail=CSService.update(map);
		System.out.println("공지 수정입니다.update쿼리 실행 후 sucFail:"+sucFail);
		req.setAttribute("WHERE", "EDT");
		req.setAttribute("SUCFAIL", sucFail);
		System.out.println("공지 수정입니다. req:"+req);
		return "customerService/Message";
		
	}
	//FAQ 수정하기
	
	//이벤트 수정하기
	@RequestMapping("/member/eventEdit.do")
	public String eventEdit(HttpServletRequest req,@RequestParam Map map) {
		if(req.getMethod().equals("GET")) {
			CSDTO record = CSService.selectOne(map);
			req.setAttribute("eventRecord", record);
			
			return "customerService/event/eventEdit.tiles";
		}
		//수정처리 후 메시지 뿌려주는 페이지(Message.jsp)로 이동
		int sucFail=CSService.update(map);
		req.setAttribute("WHERE", "EEDT");
		req.setAttribute("SUCFAIL", sucFail);
		return "customerService/Message";		
	}
	//1:1문의 수정하기
	@RequestMapping("/member/consultEdit.do")
	public String consultEdit(HttpServletRequest req,@RequestParam Map map) {
		if(req.getMethod().equals("GET")) {
			CSDTO record = CSService.selectOne(map);
			req.setAttribute("consultRecord", record);
			
			return "customerService/consult/consultEdit.tiles";
		}
		//수정처리 후 메시지 뿌려주는 페이지(Message.jsp)로 이동
		int sucFail=CSService.update(map);
		req.setAttribute("WHERE", "CEDT");
		req.setAttribute("SUCFAIL", sucFail);
		return "customerService/Message";		
	}

	
	//5]삭제하기
	//공지사항 삭제처리
	@RequestMapping("/admin/noticeDelete.do")
	public String noticeDelete(@RequestParam Map map,Model model) {
		int sucFail = CSService.delete(map);
		model.addAttribute("WHERE", "DEL");
		model.addAttribute("SUCFAIL", sucFail);
		return "customerService/Message";
	}
	
	//faq 삭제처리
	
	//이벤트 삭제처리
	@RequestMapping("/admin/eventDelete.do")
	public String eventDelete(@RequestParam Map map,Model model) {
		int sucFail = CSService.delete(map);
		model.addAttribute("WHERE", "EDEL");
		model.addAttribute("SUCFAIL", sucFail);
		System.out.println("sucFail:"+sucFail);
		return "customerService/Message";
	}
	//1:1문의 삭제처리
	@RequestMapping("/member/consultDelete.do")
	public String consultDelete(@RequestParam Map map,Model model) {
		int sucFail = CSService.delete(map);
		model.addAttribute("WHERE", "CDEL");
		model.addAttribute("SUCFAIL", sucFail);
		System.out.println("sucFail:"+sucFail);
		System.out.println("여기까진 되는 거니?");
		return "customerService/Message";
	}

	
	
	
		
	//6]1:1문의 답변 달기 //member로 할 것인가, admin으로 할 것인가...
	@RequestMapping("/member/replyWrite.do")
	public String replyWrite() {
		return "customerService/consult/replyWrite.tiles";
	}

	
}
