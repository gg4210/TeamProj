<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<script>
$(function () {
	////다른페이지에 있다가 눌렀을 때
	var durl = window.location.hash;////console.log(durl); = #id
	//var dactiveTab = durl.substring(durl.indexOf("#") + 1);////id ////의미없는 코드인 듯.
	//console.log(dactiveTab);	
	if (durl !='') {
		$(durl).tab('show');
	}
	////같은 페이지에 있다가 눌렀을 때
	$('#customerLinks a').click(function(){
		var link = $(this).attr('href');////console.log('link:',link);=>/workout/customer.do#pills-scrap-tab
		var sactiveTab = link.substring(link.indexOf("#"));////내가 +1지움 ////console.log('sactiveTab:',sactiveTab);=>sactiveTab: #pills-scrap-tab	
		$('#customerLinks a').removeClass("active");
		$(this).addClass("active");
		$(sactiveTab).tab('show');
	});
});

</script>


	<div class="container">
		<!-- 탭메뉴 시작 -->
		<div class="row justify-content-md-center text-center">
			<ul class="nav nav-pills mt-5 mb-4" id="pills-tab" role="tablist">
			  <li class="nav-item col">
			    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
			      aria-controls="pills-home" aria-selected="false"><i class="fas fa-home fa-6x"></i><h4 class="mt-2">메인</h4></a>
			  </li>
			  <li class="nav-item col">
			    <a class="nav-link" id="pills-mate-tab" data-toggle="pill" href="#pills-mate" role="tab"
			      aria-controls="pills-mate" aria-selected="false"><i class="fa fa-users fa-6x"></i><h4 class="mt-2">운동메이트</h4></a>
			  </li>
			  <li class="nav-item col">
			    <a class="nav-link" id="pills-coupon-tab" data-toggle="pill" href="#pills-coupon" role="tab"
			      aria-controls="pills-coupon" aria-selected="false"><i class="fa fa-ticket-alt fa-6x"></i><h4 class="mt-2">쿠폰함</h4></a>
			  </li>
			  <li class="nav-item col">
			    <a class="nav-link" id="pills-scrap-tab" data-toggle="pill" href="#pills-scrap" role="tab"
			      aria-controls="pills-scrap" aria-selected="false"><i class="far fa-list-alt fa-6x"></i><h4 class="mt-2">스크랩</h4></a>
			  </li>
			  <li class="nav-item col">
			    <a class="nav-link" id="pills-info-tab" data-toggle="pill" href="#pills-info" role="tab"
			      aria-controls="pills-scrap" aria-selected="false"><i class="far fa-id-card fa-6x"></i><h4 class="mt-2">내 정보</h4></a>
			  </li>
			</ul>
		</div>
		<!-- 탭메뉴끝 -->
		
		<!-- tab content 시작 -->
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active mt-4" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/customer_main.jsp"/>
			</div>
			<div class="tab-pane fade mt-4" id="pills-mate" role="tabpanel" aria-labelledby="pills-mate-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/healthmatelist.jsp"/>
			</div>
			<div class="tab-pane fade mt-4" id="pills-coupon" role="tabpanel" aria-labelledby="pills-coupon-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/Coupon.jsp"/>
			</div>
			<div class="tab-pane fade mt-4" id="pills-scrap" role="tabpanel" aria-labelledby="pills-scrap-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/Scrap.jsp"/>
			</div>
			<div class="tab-pane fade mt-4" id="pills-info" role="tabpanel" aria-labelledby="pills-info-tab">
				<jsp:include page="/WEB-INF/views/mypage/customer/Infochange.jsp"/>
			</div>
	  	</div>
	  	<!-- tab content 끝-->
	  	
	</div><!-- container -->