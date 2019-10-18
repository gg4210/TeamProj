<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"--%>


<style>

.row{
	padding-top: 35px;	
	padding-left: 65px;
}
ul a{
	width:200px;
	text-align:center;
}
ul i{
	height:120px;
}
ul span{
	font-size:1.5em;
}

</style>
<div class="container">
	<div class=row>
		 <ul class="nav nav-pills" id="pills-tab" role="tablist"><!-- mb-숫자 : margine bottom 숫자(최대 5까지 먹는 듯.)만큼 띄운다. -->
		  <li class="nav-item">
		   <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
		    aria-controls="pills-home" aria-selected="true" >
		    <i class='fas fa-headphones' style='font-size:100px;'></i><br/><span>고객센터 홈</span></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-faq-tab" data-toggle="pill" href="#pills-faq" role="tab"
		      aria-controls="pills-faq" aria-selected="false">
		      <i class='fas fa-edit' style='font-size:100px'></i><br/><span>자주 묻는 질문</span></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-notice-tab" data-toggle="pill" href="#pills-notice" role="tab"
		      aria-controls="pills-notice" aria-selected="false">
		      	<i class="fas fa-bullhorn" style='font-size:100px'></i><br/><span>공지/이벤트</span></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-personalQ-tab" data-toggle="pill" href="#pills-personalQ" role="tab"
		      aria-controls="pills-personalQ" aria-selected="false">
		      <i class='fas fa-edit' style='font-size:100px'></i><br/><span>1:1문의</span></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-comfirmA-tab" data-toggle="pill" href="#pills-comfirmA" role="tab"
		      aria-controls="pills-comfirmA" aria-selected="false">
		      <i class='fas fa-comments' style='font-size:100px'></i><br/><span>상담내역 확인</span></a>
		  </li>
		</ul>
	</div>
<div class="tab-content pt-2 pl-1" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
        고객센터 홈 내용
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        ddd
  </div>
  <div class="tab-pane fade" id="pills-faq" role="tabpanel" aria-labelledby="pills-profile-tab">
	<jsp:include page="/WEB-INF/views/customerService/FAQ.jsp"/>
  </div>
  <div class="tab-pane fade" id="pills-notice" role="tabpanel" aria-labelledby="pills-contact-tab">
  	공지사항/이벤트 내용
  </div>
  <div class="tab-pane fade" id="pills-personalQ" role="tabpanel" aria-labelledby="pills-contact-tab">
  	<jsp:include page="/WEB-INF/views/customerService/consultwrite.jsp"/>
  </div>
  <div class="tab-pane fade" id="pills-comfirmA" role="tabpanel" aria-labelledby="pills-contact-tab">
  	<jsp:include page="/WEB-INF/views/customerService/consultlist.jsp"/>
  </div>
</div>
</div>