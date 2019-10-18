<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운동해 - 고객센터</title>
</head>

<body>
<div class="container" style='padding-top: 35px;padding-left: 65px'>
<div class=row>
 <ul class="nav nav-pills" id="pills-tab" role="tablist"style='border: 5px solid navy;'><!-- mb-숫자 : margine bottom 숫자(최대 5까지 먹는 듯.)만큼 띄운다. -->
  <li class="nav-item">
   <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
    aria-controls="pills-home" aria-selected="true" >
    <i class='fas fa-headphones' style='font-size:120px;'></i><br/>고객센터 홈</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-faq-tab" data-toggle="pill" href="#pills-faq" role="tab"
      aria-controls="pills-faq" aria-selected="false">
      <i class='fas fa-edit' style='font-size:120px'></i><br/>자주 묻는 질문</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-notice-tab" data-toggle="pill" href="#pills-notice" role="tab"
      aria-controls="pills-notice" aria-selected="false">
      	<i class="fas fa-bullhorn" style='font-size:120px'></i><br/>공지/이벤트</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-personalQ-tab" data-toggle="pill" href="#pills-personalQ" role="tab"
      aria-controls="pills-personalQ" aria-selected="false">
      <i class='fas fa-edit' style='font-size:120px'></i><br/>1:1문의</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-comfirmA-tab" data-toggle="pill" href="#pills-comfirmA" role="tab"
      aria-controls="pills-comfirmA" aria-selected="false">
      <i class='fas fa-comments' style='font-size:120px'></i><br/>상담내역 확인</a>
  </li>
</ul>
</div>

<div class="tab-content pt-2 pl-1" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
        고객센터 홈 내용
  </div>
  <div class="tab-pane fade" id="pills-faq" role="tabpanel" aria-labelledby="pills-profile-tab">
	자주 묻는 질문 내용
  </div>
  <div class="tab-pane fade" id="pills-notice" role="tabpanel" aria-labelledby="pills-contact-tab">
  	공지사항/이벤트 내용
  </div>
  <div class="tab-pane fade" id="pills-personalQ" role="tabpanel" aria-labelledby="pills-contact-tab">
  	1:1문의 내용
  </div>
  <div class="tab-pane fade" id="pills-comfirmA" role="tabpanel" aria-labelledby="pills-contact-tab">
  	상담내역 확인 내용
  </div>
</div>



<ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="#">고객센터 홈</a></li>
  <li role="presentation"><a href="#">자주 묻는 질문</a></li>
  <li role="presentation"><a href="#">공지사항</a></li>
  <li role="presentation"><a href="#">1:1문의</a></li>
  <li role="presentation"><a href="#">상담내역 확인</a></li>
</ul>











<div class="row justify-content-md-center">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
		  <li class="nav-item col-md-3">
		    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-mate" role="tab" 
		    aria-controls="pills-home" aria-selected="true">
		      <i class="fa fa-users" style="font-size:9em"></i>
		      <br/>
		      <span>운동친구 여기가 이미지 아래에 글씨</span>
		    </a>
		  </li>
		  <li class="nav-item col-md-3">
		    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-message" role="tab"
		      aria-controls="pills-profile" aria-selected="false">
		      <i class="fa fa-envelope" style="font-size:9em"></i><br/><span>쪽지함</span></a>
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
		  	나의 운동메이트 목록입니다 여기가 필버튼 눌렀을 때 정보가 나오는 부분입니다.
		  </div>
		  <div class="tab-pane fade" id="pills-message" role="tabpanel" aria-labelledby="pills-profile-tab">
		  	쪽지함 	여기가 필버튼 눌렀을 때 정보가 나오는 부분입니다.
		  </div>
		  <div class="tab-pane fade" id="pills-coupon" role="tabpanel" aria-labelledby="pills-contact-tab">
		  	<jsp:include page="/WEB-INF/views/mypage/Coupon.jsp"/>
		  </div>
		  <div class="tab-pane fade" id="pills-scrap" role="tabpanel" aria-labelledby="pills-contact-tab">
		  	<jsp:include page="/WEB-INF/views/mypage/Scrap.jsp"/>
		  </div>
	  	</div>
	</div>

 
</div>
</body>
</html>