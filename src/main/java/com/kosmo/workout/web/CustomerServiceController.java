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
		//int totalPage = (int)Math.ceil((double)totalNoticeRecordCount/pageSize);
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start",start);
		map.put("end", end);
		
		System.out.println("XML 가기 전");
		System.out.println("start:"+start);
		System.out.println("end:"+end);
		List<CSDTO> noticeList = CSService.noticeSelectList(map);
		System.out.println("XML 다녀온 후");
		System.out.println("start:"+start);
		System.out.println("end:"+end);
		String noticePagingString = CommonUtility.pagingBootStrap4Style(totalNoticeRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/noticeList.do?");
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("noticePagingString", noticePagingString);
		model.addAttribute("totalNoticeRecordCount",totalNoticeRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		
//		System.out.println("model--"+model);
//		System.out.println("noticePagingString--"+noticePagingString);
//		System.out.println("map--"+map);
//		System.out.println("pageSize--"+pageSize);
//		System.out.println("blockPage--"+blockPage);
//		System.out.println("noticeList:"+noticeList);
		System.out.println("totalNoticeRecordCount:"+totalNoticeRecordCount);
		
		
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
		
		
		
		//int totalPage = (int)Math.ceil((double)totalFAQRecordCount/pageSize);
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> faqList = CSService.faqSelectList(map);
		//String faqListingString = FAQListing.faqListing(consultList);/////////////////////////////*****
		String faqPagingString = CommonUtility.pagingBootStrap4Style(totalFAQRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/FAQ.do?");
		
		model.addAttribute("faqList", faqList);
		model.addAttribute("faqPagingString", faqPagingString);
		model.addAttribute("totalNoticeRecordCount",totalFAQRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		//model.addAttribute("faqListingString", faqListingString);/////////////////////////*****
		
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
		//int totalPage = (int)Math.ceil((double)totalEventRecordCount/pageSize);
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
		//int totalPage = (int)Math.ceil((double)totalConsultRecordCount/pageSize);////////////이거 필요 없는 거 같아. 반드시 확인.
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> consultList = CSService.consultSelectList(map);
		String consultPagingString = CommonUtility.pagingBootStrap4Style(totalConsultRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/consultList.do?");
		
		model.addAttribute("consultList", consultList);
		model.addAttribute("consultPagingString", consultPagingString);
		model.addAttribute("totalConsultRecordCount",totalConsultRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		//System.out.println("consultPagingString:"+consultPagingString);
		System.out.println("별도페이지consultList:"+consultList);
		
		return "customerService/consult/consultList.tiles";
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
		//전체 페이지 수]
		//int noticeTotalPage = (int)Math.ceil((double)totalNoticeRecordCount/pageSize);
		//int faqTotalPage = (int)Math.ceil((double)totalNoticeRecordCount/pageSize);
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		//페이징을 위한 로직 끝]
		map.put("start",start);
		map.put("end", end);
		
		List<CSDTO> noticeList = CSService.noticeSelectList(map);
		List<CSDTO> eventList = CSService.eventSelectList(map);
		List<CSDTO> consultList = CSService.consultSelectList(map);
		List<CSDTO> homeNoticeList = CSService.homeNoticeSelectList(map);
		List<CSDTO> faqList = CSService.faqSelectList(map);
		List<CSDTO> homeFaqList = CSService.homeFaqSelectList(map);
		
		//String faqListingString = FAQListing.faqListing(faqList);/////////////////////////////*****
		
		
		//데이터 저장]
		String noticePagingString = CommonUtility.pagingBootStrap4Style(totalNoticeRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/noticeList.do?");
		String faqPagingString = CommonUtility.pagingBootStrap4Style(totalFAQRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/FAQ.do?");
		String eventPagingString = CommonUtility.pagingBootStrap4Style(totalEventRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/eventList.do?");
		String consultPagingString = CommonUtility.pagingBootStrap4Style(totalConsultRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/member/consultList.do?");
		
		//데이터 저장]
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("eventList",eventList);
		model.addAttribute("consultList", consultList);
		model.addAttribute("homeNoticeList", homeNoticeList);
		model.addAttribute("faqList", faqList);
		model.addAttribute("homeFaqList", homeFaqList);
		
		model.addAttribute("noticePagingString", noticePagingString);
		model.addAttribute("faqPagingString",faqPagingString);
		model.addAttribute("eventPagingString", eventPagingString);
		model.addAttribute("consultPagingString", consultPagingString);
		
		//여기 필요 있나?
		model.addAttribute("totalNoticeRecordCount",totalNoticeRecordCount);
		model.addAttribute("totalNoticeRecordCount",totalFAQRecordCount);
		model.addAttribute("totalEventRecordCount",totalEventRecordCount);
		model.addAttribute("totalConsultRecordCount",totalConsultRecordCount);		
		
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		//model.addAttribute("faqListingString", faqListingString);/////////////////////////*****
		
		
		
//		System.out.println("noticeList:"+noticeList);
//		System.out.println("eventList:"+eventList);
//		System.out.println("consultList:"+consultList);
		//System.out.println("faqList.get(0).getNo():"+faqList.get(0).getNo());	
		//System.out.println("faqList.get(0).getR():"+faqList.get(0).getR());	
//		System.out.println("model:"+model);
//		System.out.println("noticePagingString:"+noticePagingString);
//		System.out.println("map:"+map);
//		System.out.println("homeNoticeList:"+homeNoticeList);
//		System.out.println("totalNoticeRecordCount:"+totalNoticeRecordCount);
		
		//System.out.println("1]consultPagingString:"+consultPagingString);
		//System.out.println("nowPage:"+nowPage);
		//System.out.println("start:"+start);
		//System.out.println("end:"+end);		
		//System.out.println("1]eventPagingString:"+eventPagingString);
		
		System.out.println("첫페이지consultList:"+consultList);
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
	@RequestMapping("/member/consultView.do")
	public String consultView(@RequestParam Map map,Model model) {
		System.out.println("1:1문의 상세보기");
		//CSDTO record = CSService.consultSelectOne(map); 
		CSDTO record = CSService.selectOne(map); 
		record.setContent(record.getContent().replace("\r\n", "<br/>"));
		model.addAttribute("consultRecord", record);
		return "customerService/consult/consultView.tiles";
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
		//System.out.println("id : "+userDetails.getUsername());
		//System.out.println("principal:"+auth.getPrincipal().toString());

		for(GrantedAuthority a : auth.getAuthorities()){
			System.out.println(a.getAuthority());
		}
		
		return "forward:/member/noticeList.do";//이렇게 보내려면 어쩔 수 없이 0]noticeList()만들어야 함.		
		//return "/workout/member/customerServiceMain.do#pills-noticeNevent-tab";////여기는 이런 식으로 못 옮기나 봄.
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

		//Collection auths = userDetails.getAuthorities();
		//System.out.println("id : "+userDetails.getUsername());
		//System.out.println("principal:"+auth.getPrincipal().toString());

//		for(GrantedAuthority a : auth.getAuthorities()){
//			System.out.println(a.getAuthority());
//		}

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
		//System.out.println("id : "+userDetails.getUsername());
		//System.out.println("principal:"+auth.getPrincipal().toString());

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
		System.out.println("1:1문의 작성 처리 들어오나?");
		//서비스 호출]
		//스프링 시큐리티 사용 시 아래에 코드 추가
		UserDetails userDetails = (UserDetails)auth.getPrincipal(); 
		//호출 전 아이디 맵에 저장
		map.put("id",userDetails.getUsername());

		CSService.consultInsert(map);

		Collection auths = userDetails.getAuthorities();
		System.out.println("id : "+userDetails.getUsername());
		System.out.println("principal:"+auth.getPrincipal().toString());

		for(GrantedAuthority a : auth.getAuthorities()){
			System.out.println(a.getAuthority());
		}
		System.out.println("map.get(id):"+map.get("id"));
		return "forward:/member/consultList.do";
	}

	//4]수정하기
	//공지사항 수정하기
	@RequestMapping("/member/noticeEdit.do")
	public String noticeEdit(HttpServletRequest req,@RequestParam Map map) {
		System.out.println("공지 수정입니다. req:"+req);
		System.out.println("공지 수정입니다. map:"+map);
		if(req.getMethod().equals("GET")) {
			CSDTO record = CSService.selectOne(map);
			req.setAttribute("noticeRecord", record);
			System.out.println("if문 안입니다. record :"+record.getContent());
			//return "customerService/notice/noticeEdit.tiles";
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
		System.out.println("이벤트 수정입니다. req:"+req);
		System.out.println("이벤트 수정입니다. map:"+map);
		if(req.getMethod().equals("GET")) {
			CSDTO record = CSService.selectOne(map);
			req.setAttribute("eventRecord", record);
			System.out.println("if문 안입니다. record :"+ record);
			System.out.println("if문 안입니다. record :"+record.getTitle());
			System.out.println("if문 안입니다. record :"+record.getContent());
			
			return "customerService/event/eventEdit.tiles";
		}
		//수정처리 후 메시지 뿌려주는 페이지(Message.jsp)로 이동
		int sucFail=CSService.update(map);
		System.out.println("이벤트 수정입니다.update쿼리 실행 후 sucFail:"+sucFail);
		req.setAttribute("WHERE", "EEDT");
		req.setAttribute("SUCFAIL", sucFail);
		System.out.println("이벤트 수정입니다. req:"+req);
		return "customerService/Message";		
	}
	//1:1문의 수정하기
	@RequestMapping("/member/consultEdit.do")
	public String consultEdit(HttpServletRequest req,@RequestParam Map map) {
		System.out.println("1:1 수정입니다. req:"+req);
		System.out.println("1:1 수정입니다. map:"+map);
		if(req.getMethod().equals("GET")) {
			CSDTO record = CSService.selectOne(map);
			req.setAttribute("consultRecord", record);
			System.out.println("if문 안입니다. record :"+ record);
			System.out.println("if문 안입니다. record :"+record.getTitle());
			System.out.println("if문 안입니다. record :"+record.getContent());
			
			return "customerService/consult/consultEdit.tiles";
		}
		//수정처리 후 메시지 뿌려주는 페이지(Message.jsp)로 이동
		int sucFail=CSService.update(map);
		System.out.println("1:1 수정입니다.update쿼리 실행 후 sucFail:"+sucFail);
		req.setAttribute("WHERE", "CEDT");
		req.setAttribute("SUCFAIL", sucFail);
		System.out.println("1:1 수정입니다. req:"+req);
		return "customerService/Message";		
	}

	
	//5]삭제하기
	//공지사항 삭제처리
	@RequestMapping("/admin/noticeDelete.do")
	public String noticeDelete(@RequestParam Map map,Model model) {
		System.out.println("여기는 공지삭제 입니다. map:"+map);
		System.out.println("여기는 공지삭제 입니다. model:"+model);
		int sucFail = CSService.delete(map);
		model.addAttribute("WHERE", "DEL");
		model.addAttribute("SUCFAIL", sucFail);
		System.out.println("sucFail:"+sucFail);
		return "customerService/Message";
	}
	//공지사항 삭제처리
	@RequestMapping("/admin/eventDelete.do")
	public String eventDelete(@RequestParam Map map,Model model) {
		System.out.println("여기는 이벤트 삭제 입니다. map:"+map);
		System.out.println("여기는 이벤트 삭제 입니다. model:"+model);
		int sucFail = CSService.delete(map);
		model.addAttribute("WHERE", "EDEL");
		model.addAttribute("SUCFAIL", sucFail);
		System.out.println("sucFail:"+sucFail);
		return "customerService/Message";
	}
	//공지사항 삭제처리
	@RequestMapping("/admin/consultDelete.do")
	public String consultDelete(@RequestParam Map map,Model model) {
		System.out.println("여기는 1:1 삭제 입니다. map:"+map);
		System.out.println("여기는 1:1 삭제 입니다. model:"+model);
		int sucFail = CSService.delete(map);
		model.addAttribute("WHERE", "CDEL");
		model.addAttribute("SUCFAIL", sucFail);
		System.out.println("sucFail:"+sucFail);
		return "customerService/Message";
	}

	
	
	
	
	
	
	
	//6]1:1문의 답변 달기 //member로 할 것인가, admin으로 할 것인가...
	@RequestMapping("/member/replyWrite.do")
	public String replyWrite() {
		return "customerService/consult/replyWrite.tiles";
	}
//	@RequestMapping("/admin/replyWrite.do")
//	public String replyWrite() {
//		return "customerService/consult/replyWrite.tiles";
//	}
	
	
	
//	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//	//공지사항 작성폼으로 이동]
//	@RequestMapping(value= {"/member/noticeWrite.do","/admin/customerService/notice/noticeWrite.do"},method = RequestMethod.GET)
//	public String noticeWrite() {
//		return "customerService/notice/noticeWrite.tiles";
//	}	
//	//공지사항 작성 처리]
//	@RequestMapping(value = "/member/noticeWrite.do",method=RequestMethod.POST)
//	public String noticeWriteOk(@RequestParam Map map,Authentication auth) {
//		//서비스 호출]
//		//스프링 시큐리티 사용 시 아래에 코드 추가
//		UserDetails userDetails = (UserDetails)auth.getPrincipal(); 
//		//호출 전 아이디 맵에 저장
//		map.put("id",userDetails.getUsername());
//
//		CSService.insert(map);
//
//		Collection auths = userDetails.getAuthorities();
//		System.out.println("id : "+userDetails.getUsername());
//		System.out.println("principal:"+auth.getPrincipal().toString());
//
//		for(GrantedAuthority a : auth.getAuthorities()){
//			System.out.println(a.getAuthority());
//		}
//
//		return "forward:/member/customerService/notice/noticeList.do";////포워드 했으면 정보 가져가야 하는 거 아냐?
//	}
//		
//	//이벤트
//	@RequestMapping("/customerService/event/eventWrite.do")
//	public String eventWrite() {
//		return "customerService/event/eventWrite.tiles";
//	}
//		
//		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//		
//		//상세보기]
//		//공지사항 상세보기]/////////////////////////////////////////////////작업중///////////////////////////////////////////////////
//		@RequestMapping("/member/noticeView.do")
//		public String noticeView(@RequestParam Map map,Model model) {
//			//서비스 호출]
//			CSDTO record = CSService.selectOne(map);
//			//데이터 저장]
//			//줄바꿈 처리
//			record.setContent(record.getContent().replace("\r\n", "<br/>"));
//			model.addAttribute("record",record);
//			//뷰정보 반환
//			System.out.println("공지사항 상세보기");//////////////////////////////////////
//			System.out.println(record);
//			return "customerService/notice/noticeView.tiles";
//		}
//		//이벤트 상세보기]
//		@RequestMapping("/customerService/event/eventView.do")
//		public String eventView(@RequestParam Map emap,Model model) {
//			System.out.println("이벤트 상세보기");
//			CSDTO record = CSService.eventSelectOne(emap); 
//			record.setContent(record.getContent().replace("\r\n", "<br/>"));
//			model.addAttribute("eventRecord", record);
//			return "customerService/event/eventView.tiles";
//		}
//		
//		
//		
//
////	@RequestMapping("/moreFAQ.do")
////	public String moreFAQ() {
////		return "customerService/faq/FAQ.tiles";
////	}
//	
//	@RequestMapping("/moreNoticeView.do")
//	public String moreNotice() {
//		return "customerService/notice/noticeList.tiles";
//	}
//	
//	
//	
//	
//	
//	
//	//공지사항 수정폼으로 이동 및 수정처리]★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
//	@RequestMapping("/member/noticeEdit.do")
//	public String noticeEdit(HttpServletRequest req,@RequestParam Map map) {
//		if(req.getMethod().equals("GET")) {//수정폼으로 이동
//			//서비스 호출]
//			CSDTO record = CSService.selectOne(map);
//			//데이터 저장]
//			req.setAttribute("record", record);
//			//수정폼으로 이동]
//			return "customerService/notice/noticeEdit.tiles";
//		}
//		
////		//수정처리 후 메시지 뿌려주는 페이지로 이동
////		int result=CSService.update(map);
////		req.setAttribute("WHERE", "EDT");
////		req.setAttribute("RESULT", result);
////		return "customerService/Message";
//		return "customerService/notice/noticeEdit.tiles";
//	}
////	@RequestMapping("/customerService/notice/noticeEdit.do")
////	public String noticeEdit() {
////		return "customerService/notice/noticeEdit.tiles";
////	}
//	
//	
//	
//	
//	
//	
//	@RequestMapping("/customerService/consult/consultView.do")
//	public String consultView() {
//		return "customerService/consult/consultView.tiles";
//	}
//	
////	@RequestMapping("/customerService/consult/consultList.do")
////	public String consultList() {
////		
////		return "customerService/consult/consultList.tiles";
////	}
//	
//	@RequestMapping("/customerService/consult/consultEdit.do")
//	public String consultEdit () {
//		return "customerService/consult/consultEdit.tiles";		
//	}
//	
//	
//	
//
//	
//	@RequestMapping("/customerService/event/eventEdit.do")
//	public String eventEdit() {
//		return "customerService/event/eventEdit.tiles";
//	}	
//	
//	
//
//	
//	
//	
//
//
//	
//	@RequestMapping("/FAQWrite.do")
//	public String faqWrite() {
//		return "customerService/faq/FAQWrite.tiles";
//	}
//	
//	@RequestMapping("/customerService/faq/FAQ.do")
//	public String goFAQ() {
//		return "customerService/faq/FAQ.tiles";
//	}
//		
//	@RequestMapping("/member/replyWrite.do")
//	public String replyWrite() {
//		return "customerService/consult/replyWrite.tiles";
//	}
//	
////	@RequestMapping("")
////	public String () {
////		return "";
////	}
//	
////	////필메뉴 제어 하려고... 2019.10.31
////	/* 고객센터 메인으로 이동하게 하는 Controller 시작*/
////	@RequestMapping("/customerService.do")
////	public String customer(){
////		return "mypage/customer/mypage_Index.tiles";
////	}
//	
//	
//	
//	
//	
////	@RequestMapping("/customerService/event/eventView.do")
////	public String eventView() {
////		System.out.println("이벤트 상세보기");
////		return "customerService/event/eventView.tiles";
////	}	
////	@RequestMapping("/customerService/event/eventList.do")
////	public String eventList() {
////		System.out.println("이벤트 리스트");
////		
////		return "customerService/event/eventList.tiles";
////	}
	
	
}
