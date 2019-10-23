<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"--%>


<div class="container">
	<!-- pill menu -->
	<div class="row justify-content-md-center text-center">
		<ul class="nav nav-pills mb-4 mt-5" id="pills-tab" role="tablist">
			<!-- mb-숫자 : margine bottom 숫자(최대 5까지 먹는 듯.)만큼 띄운다. -->
			<li class="nav-item col">
				<a class="nav-link active"
					id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
					aria-controls="pills-home" aria-selected="true">
					<i class='fas fa-headphones fa-6x'></i>
					<h4 class="mt-2">고객센터 홈</h4>
				</a>
			</li>
			<li class="nav-item col">
				<a class="nav-link" id="pills-faq-tab"
					data-toggle="pill" href="#pills-faq" role="tab"
					aria-controls="pills-faq" aria-selected="false">
					<i class='fas fa-edit fa-6x'></i>
					<h4 class="mt-2">자주 묻는 질문</h4>
				</a>
			</li>
			<li class="nav-item col">
				<a class="nav-link"
					id="pills-notice-tab" data-toggle="pill" href="#pills-noticeNevent"
					role="tab" aria-controls="pills-notice" aria-selected="false">
					<i class="fas fa-bullhorn fa-6x"></i>
					<h4 class="mt-2">공지<br/>/이벤트</h4>
				</a>
			</li>
			<li class="nav-item col">
				<a class="nav-link"
					id="pills-personalQ-tab" data-toggle="pill" href="#pills-personalQ"
					role="tab" aria-controls="pills-personalQ" aria-selected="false">
					<i class='fas fa-edit fa-6x'></i>
					<h4 class="mt-2">1:1문의</h4>
				</a>
			</li>
			<li class="nav-item col">
				<a class="nav-link"
					id="pills-comfirmA-tab" data-toggle="pill" href="#pills-comfirmA"
					role="tab" aria-controls="pills-comfirmA" aria-selected="false">
					<i class='fas fa-comments fa-6x'></i>
					<h4 class="mt-2">상담내역<br/>확인</h4>
				</a>
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
				<jsp:include page="/WEB-INF/views/customerService/FAQ.jsp" />
			</div>
			<div class="tab-pane fade" id="pills-noticeNevent" role="tabpanel" aria-labelledby="pills-contact-tab">
				<jsp:include page="/WEB-INF/views/customerService/NoticeNEvent.jsp" />
			</div>
			<div class="tab-pane fade" id="pills-personalQ" role="tabpanel" aria-labelledby="pills-contact-tab">
				<jsp:include page="/WEB-INF/views/customerService/consultwrite.jsp" />
			</div>
			<div class="tab-pane fade" id="pills-comfirmA" role="tabpanel" aria-labelledby="pills-contact-tab">
				<jsp:include page="/WEB-INF/views/customerService/consultlist.jsp" />
			</div>
		</div>
		<!-- content 끝 -->

</div>
<!-- container -->
