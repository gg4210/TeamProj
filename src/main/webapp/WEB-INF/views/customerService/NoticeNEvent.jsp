<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
<!-- 
<script>
$(function () {
	//다른페이지에 있다가 눌렀을 때
	var durl = window.location.hash;////console.log(durl); => #id
	console.log('durl:',durl);
	if (durl !='') {
		 $(durl).tab('show');
	}
	//같은 페이지에 있다가 눌렀을 때 - 일단 포기////serviceLinks는 login.jsp에 있는 div태그의 id속성의 값이다.
	/*
	$('#nav-item a').click(function(){
		var link = $(this).attr('href');////console.log('link:',link);=> link :  /workout/customerServiceMain.do#pills-notice-tab
		var sactiveTab = link.substring(link.indexOf("#"));////내가 +1지움 그래서 .tab('show')에서 선택자 앞에 # 안 더해줌.
		console.log('link : ',link);
		console.log('sactiveTab : ',sactiveTab);
		$('#nav-item a').removeClass("active");
		$(this).addClass("active");
		$(sactiveTab).tab('show');
	});
	*/
});
</script>
 -->
	<!-- 
	<div class="row">
		<div class="col">
			<div class="page-header">
				<h3>공지/이벤트</h3>
			</div>
			<hr />
		</div>
	</div>
	 -->
	<!-- 필메뉴 -->
	<div class="row">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="pills-notice-tab" data-toggle="pill" href="#pills-notice" 
				role="tab" aria-controls="pills-notice" aria-selected="true">공지사항</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="pills-event-tab" data-toggle="pill" href="#pills-event"
				role="tab" aria-controls="pills-event" aria-selected="false">이벤트</a>
			</li>			
		</ul>
	</div>
	<!-- 필메뉴 끝 -->
	
	<div class="tab-content pt-2 pl-1" id="pills-tabContent">
		<div class="tab-pane fade show active" id="pills-notice" role="tabpanel" aria-labelledby="pills-notice-tab">
			<jsp:include page="/WEB-INF/views/customerService/notice/noticeList.jsp" />
		</div>

		<div class="tab-pane fade" id="pills-event" role="tabpanel" aria-labelledby="pills-event-tab">
			<jsp:include page="/WEB-INF/views/customerService/event/eventList.jsp" />
		</div>		
	</div>	
</div>