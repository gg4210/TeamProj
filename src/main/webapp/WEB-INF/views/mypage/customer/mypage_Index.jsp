<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

	<div class="container">
		<!-- 탭메뉴 시작 -->
		<div class="row justify-content-md-center text-center">
			<ul class="nav nav-pills mt-4 mb-3" id="pills-tab" role="tablist">
			  <li class="nav-item col">
			    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-mate" role="tab"
			      aria-controls="pills-home" aria-selected="true"><i class="fa fa-users fa-10x"></i><h3 class="mt-2">운동메이트</h3></a>
			  </li>
			  <li class="nav-item col">
			    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-message" role="tab"
			      aria-controls="pills-profile" aria-selected="false"><i class="fa fa-envelope fa-10x"></i><h3 class="mt-2">쪽지함</h3></a>
			  </li>
			  <li class="nav-item col">
			    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-coupon" role="tab"
			      aria-controls="pills-contact" aria-selected="false"><i class="fa fa-ticket-alt fa-10x"></i><h3 class="mt-2">쿠폰함</h3></a>
			  </li>
			  <li class="nav-item col">
			    <a class="nav-link" id="pills-scrap-tab" data-toggle="pill" href="#pills-scrap" role="tab"
			      aria-controls="pills-contact" aria-selected="false"><i class="far fa-list-alt fa-10x"></i><h3 class="mt-2">스크랩</h3></a>
			  </li>
			</ul>
		</div>
		<!-- 탭메뉴끝 -->
		
		<!-- tab content 시작 -->
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active mt-4" id="pills-mate" role="tabpanel" aria-labelledby="pills-home-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/healthmatelist.jsp"/>
			</div>
			<div class="tab-pane fade mt-4" id="pills-message" role="tabpanel" aria-labelledby="pills-profile-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/letter.jsp"/>
			</div>
			<div class="tab-pane fade mt-4" id="pills-coupon" role="tabpanel" aria-labelledby="pills-coupon-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/Coupon.jsp"/>
			</div>
			<div class="tab-pane fade mt-4" id="pills-scrap" role="tabpanel" aria-labelledby="pills-scrap-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/Scrap.jsp"/>
			</div>
	  	</div>
	  	<!-- tab content 끝-->
	  	
	</div><!-- container -->