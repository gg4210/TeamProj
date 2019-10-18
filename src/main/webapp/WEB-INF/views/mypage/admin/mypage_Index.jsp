<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mypage/admin/mypageindex.css"/>">

<div class="container">
	<!-- 탭메뉴 시작 -->
	<div class="row justify-content-md-center text-center">
		<ul class="nav nav-pills mb-3 mt-4" id="pills-tab" role="tablist">
		  <li class="nav-item col">
		    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
		      aria-controls="pills-home" aria-selected="true"><i class="fas fa-home fa-10x"></i><h3 class="mt-2">메인</h3></a>
		  </li>
		  <li class="nav-item col">
		    <a class="nav-link" id="pills-user-tab" data-toggle="pill" href="#pills-user" role="tab"
		      aria-controls="pills-user" aria-selected="true"><i class="far fa-address-book fa-10x"></i><h3 class="mt-2">유저관리</h3></a>
		  </li>
		  <li class="nav-item col">
		    <a class="nav-link" id="pills-board-tab" data-toggle="pill" href="#pills-board" role="tab"
		      aria-controls="pills-board" aria-selected="false"><i class="fas fa-chalkboard	fa-10x"></i><h3 class="mt-2">게시글관리</h3></a>
		  </li>
		  <li class="nav-item col">
		    <a class="nav-link" id="pills-customer-service-tab" data-toggle="pill" href="#pills-customer-service" role="tab"
		      aria-controls="pills-customer-service" aria-selected="false"><i class="fas fa-info-circle fa-10x"></i><h3 class="mt-2">고객센터 관리</h3></a>
		  </li>
		</ul>
	</div>
	<!-- 탭메뉴 끝 -->
	<!-- 탭컨텐츠 시작 -->
		<div class="tab-content pt-2 pl-1" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
				<jsp:include page="/WEB-INF/views/mypage/admin/adminmain.jsp"/>
			</div>
			<div class="tab-pane fade show active" id="pills-user" role="tabpanel" aria-labelledby="pills-user-tab">
				<jsp:include page="/WEB-INF/views/mypage/admin/userlist.jsp"/>
			</div>
			<div class="tab-pane fade" id="pills-board" role="tabpanel" aria-labelledby="pills-board-tab">
				<jsp:include page="/WEB-INF/views/mypage/admin/boardlist.jsp"/>
			</div>
			<div class="tab-pane fade" id="pills-customer-service" role="tabpanel" aria-labelledby="pills-customer-service-tab">
				<jsp:include page="/WEB-INF/views/mypage/admin/customer-service.jsp"/>
			</div>
	  	</div>
	  <!-- 탭컨텐츠 끝 -->
</div>

