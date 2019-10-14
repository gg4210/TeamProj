<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
ul a{
	width:200px;
	text-align:center;
}
ul i{
	height:100px;
}
ul span{
	font-size:2em;
}
</style>
</head>
<body>
	<div class="row justify-content-md-center">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
		  <li class="nav-item col-md-3">
		    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-mate" role="tab"
		      aria-controls="pills-home" aria-selected="true"><i class="fa fa-users" style="font-size:9em"></i><br/><span>운동메이트</span></a>
		  </li>
		  <li class="nav-item col-md-3">
		    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-message" role="tab"
		      aria-controls="pills-profile" aria-selected="false"><i class="fa fa-envelope" style="font-size:9em"></i><br/><span>쪽지함</span></a>
		  </li>
		  <li class="nav-item col-md-3">
		    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-coupon" role="tab"
		      aria-controls="pills-contact" aria-selected="false"><i class="fa fa-ticket-alt" style="font-size:9em"></i><br/><span>쿠폰함</span></a>
		  </li>
		  <li class="nav-item col-md-3">
		    <a class="nav-link" id="pills-scrap-tab" data-toggle="pill" href="#pills-scrap" role="tab"
		      aria-controls="pills-contact" aria-selected="false"><i class="far fa-list-alt" style="font-size:9em"></i><br/><span>스크랩</span></a>
		  </li>
		</ul>
	</div>
	<div class="container">
		<div class="tab-content pt-2 pl-1" id="pills-tabContent">
		  <div class="tab-pane fade show active" id="pills-mate" role="tabpanel" aria-labelledby="pills-home-tab">
		  	운동메이트
		  </div>
		  <div class="tab-pane fade" id="pills-message" role="tabpanel" aria-labelledby="pills-profile-tab">
		  	쪽지함
		  </div>
		  <div class="tab-pane fade" id="pills-coupon" role="tabpanel" aria-labelledby="pills-contact-tab">
		  	<jsp:include page="/WEB-INF/views/mypage/Coupon.jsp"/>
		  </div>
		  <div class="tab-pane fade" id="pills-scrap" role="tabpanel" aria-labelledby="pills-contact-tab">
		  	<jsp:include page="/WEB-INF/views/mypage/Scrap.jsp"/>
		  </div>
	  	</div>
	</div>
</body>
</html>