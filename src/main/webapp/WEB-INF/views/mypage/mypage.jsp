<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-mate" role="tab"
      aria-controls="pills-home" aria-selected="true">운동메이트</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-message" role="tab"
      aria-controls="pills-profile" aria-selected="false">쪽지함</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-coupon" role="tab"
      aria-controls="pills-contact" aria-selected="false">쿠폰함</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-scrap" role="tab"
      aria-controls="pills-contact" aria-selected="false">스크랩</a>
  </li>
</ul>
<div class="tab-content pt-2 pl-1" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-mate" role="tabpanel" aria-labelledby="pills-home-tab">
  	운동메읻트
  </div>
  <div class="tab-pane fade" id="pills-message" role="tabpanel" aria-labelledby="pills-profile-tab">
  	쪽지함
  </div>
  <div class="tab-pane fade" id="pills-coupon" role="tabpanel" aria-labelledby="pills-contact-tab">
  	쿠폰함
  </div>
  <div class="tab-pane fade" id="pills-scrap" role="tabpanel" aria-labelledby="pills-contact-tab">
  	스크랩
  </div>
</div>
</body>
</html>