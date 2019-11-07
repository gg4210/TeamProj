package com.kosmo.workout.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerServiceController {
	
	@RequestMapping("/customerServiceMain.do")
	public String mainPage() {
		return "customerService/customerServiceMain.tiles";
	}
	
	
	
//	@RequestMapping("/moreFAQ.do")
//	public String moreFAQ() {
//		return "customerService/faq/FAQ.tiles";
//	}
	
	@RequestMapping("/moreNoticeView.do")
	public String moreNotice() {
		return "customerService/notice/noticeList.tiles";
	}
	
	
	
	@RequestMapping("/customerService/notice/noticeList.do")
	public String noticeList() {
		return "customerService/notice/noticeList.tiles";
	}
	
	@RequestMapping("/customerService/notice/noticeView.do")
	public String noticeView() {
		return "customerService/notice/noticeView.tiles";
	}
	
	@RequestMapping("/customerService/notice/noticeEdit.do")
	public String noticeEdit() {
		return "customerService/notice/noticeEdit.tiles";
	}
	
	
	
	
	
	
	@RequestMapping("/customerService/consult/consultView.do")
	public String consultView() {
		return "customerService/consult/consultView.tiles";
	}
	
	@RequestMapping("/customerService/consult/consultList.do")
	public String consultList() {
		return "customerService/consult/consultList.tiles";
	}
	
	@RequestMapping("/customerService/consult/consultEdit.do")
	public String consultEdit () {
		return "customerService/consult/consultEdit.tiles";		
	}
	
	
	
	@RequestMapping("/customerService/event/eventView.do")
	public String eventView() {
		return "customerService/event/EventView.tiles";
	}
	
	@RequestMapping("/customerService/event/eventEdit.do")
	public String eventEdit() {
		return "customerService/event/eventEdit.tiles";
	}	
	
	@RequestMapping("/customerService/event/eventList.do")
	public String eventList() {
		return "customerService/event/eventList.tiles";
	}
	
	@RequestMapping("/customerService/event/eventWrite.do")
	public String eventWrite() {
		return "customerService/event/eventWrite.tiles";
	}
	
	

	@RequestMapping("/customerService/notice/noticeWrite.do")
	public String noticeWrite() {
		return "customerService/notice/noticeWrite.tiles";
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
