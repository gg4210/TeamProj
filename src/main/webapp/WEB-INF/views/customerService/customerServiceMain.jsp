<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!--  아이디 얻어서 var에 지정한 변수 id에 저장 
<sec:authentication property="principal.username" var="id"/> -->
<sec:authentication property="principal.authorities" var="auth"/>

<script>
$(function () {
	//다른페이지에 있다가 눌렀을 때
	var durl = window.location.hash;////console.log(durl); => #id
	console.log(durl);
	if (durl !='') {
		 $(durl).tab('show');
	}
	$('#serviceLinks a').click(function(){
		var link = $(this).attr('href');////console.log('link:',link);=> link :  /workout/customerServiceMain.do#pills-notice-tab
		var sactiveTab = link.substring(link.indexOf("#"));////내가 +1지움 그래서 .tab('show')에서 선택자 앞에 # 안 더해줌.
		console.log('link : ',link);
		console.log('sactiveTab : ',sactiveTab);
		$('#serviceLinks a').removeClass("active");
		$(this).addClass("active");
		$(sactiveTab).tab('show');
	});
});

function selectdel() {
	$('div[class="collapse show"]').removeClass("show");
}
</script>

<div class="container">
	<!-- pill menu -->
	<div class="row justify-content-md-center text-center">
		<ul class="nav nav-pills mb-4 mt-5" id="pills-tab" role="tablist">
			<li class="nav-item col">
				<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
					aria-controls="pills-home" aria-selected="true"><i class='fas fa-headphones fa-6x'></i><h4 class="mt-2">고객센터 홈</h4></a>
			</li>
			<li class="nav-item col">
				<a class="nav-link" id="pills-faq-tab" data-toggle="pill" href="#pills-faq" role="tab" onclick="selectdel();"
					aria-controls="pills-faq" aria-selected="false"> <i class='fas fa-edit fa-6x'></i><h4 class="mt-2">자주 묻는 질문</h4></a>
			</li>
			<li class="nav-item col">
				<a class="nav-link" id="pills-noticeNevent-tab" data-toggle="pill" href="#pills-noticeNevent" role="tab" 
					aria-controls="pills-notice" aria-selected="false"> <i class="fas fa-bullhorn fa-6x"></i><h4 class="mt-2">공지<br />/이벤트</h4></a>
			</li>
			<!-- 
			<c:if test="${auth eq '[ROLE_USER]' || auth eq '[ROLE_CENTER]'}"> -->
				<li class="nav-item col">
					<a class="nav-link" id="pills-consultwrite-tab" data-toggle="pill" href="#pills-consultwrite" role="tab" 
						aria-controls="pills-consultwrite" aria-selected="false"><i class='fas fa-edit fa-6x'></i><h4 class="mt-2">1:1문의</h4></a>
				</li>
			<!--</c:if>-->
			<li class="nav-item col">
				<a class="nav-link"	id="pills-consultlist-tab" data-toggle="pill" href="#pills-consultlist" role="tab"
					aria-controls="pills-consultlist" aria-selected="false"><i class='fas fa-comments fa-6x'></i><h4 class="mt-2">문의내역<br />확인</h4></a>
			</li>
		</ul>
	</div>
	<!-- pill menu 끝 -->

	<!-- content -->
	<div class="tab-content pt-1 pl-1" id="pills-tabContent">
		<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
			<jsp:include page="/WEB-INF/views/customerService/CustomerHome.jsp" />
		</div>
		<div class="tab-pane fade" id="pills-faq" role="tabpanel" aria-labelledby="pills-profile-tab">
			<jsp:include page="/WEB-INF/views/customerService/faq/FAQ.jsp" />
		</div>
		<div class="tab-pane fade" id="pills-noticeNevent" role="tabpanel" aria-labelledby="pills-noticeNevent-tab">
			<jsp:include page="/WEB-INF/views/customerService/NoticeNEvent.jsp" />
		</div>
		<div class="tab-pane fade" id="pills-consultwrite" role="tabpanel" aria-labelledby="pills-consultwrite-tab">
			<jsp:include page="/WEB-INF/views/customerService/consult/consultWrite.jsp" />
		</div>
		<div class="tab-pane fade" id="pills-consultlist" role="tabpanel" aria-labelledby="pills-consultlist-tab">
			<%-- <c:if test="${auth eq '[ROLE_USER]' || auth eq '[ROLE_CENTER]'}"> --%>
				<jsp:include page="/WEB-INF/views/customerService/consult/consultList.jsp" />
			<%-- </c:if>
			<c:if test="${auth eq '[ROLE_ADMIN]'}">
				<jsp:include page="/WEB-INF/views/customerService/consult/admin_consultList.jsp" />
			</c:if> --%>
		</div>
	</div>
	<!-- content 끝 -->
</div>
<!-- container -->
