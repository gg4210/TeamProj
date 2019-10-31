<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="<c:url value='/resources/datePicker/moment/moment.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/datePicker/versatile-date-time-month-year-picker/css/datepicker.css'/>">

<script src="<c:url value='/resources/datePicker/versatile-date-time-month-year-picker/js/datepicker.all.js'/>"></script>
<script src="<c:url value='/resources/datePicker/versatile-date-time-month-year-picker/js/datepicker.en.js'/>"></script>

<title>HealthMate Write</title>

<!-- 실제 내용 시작 -->
<div class="container">
	<!-- 점보트론(Jumbotron) -->
	 <header class="jumbotron">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
    
    <!-- row 시작 -->
	<form action="/workout/healthMateMain.do" method="get">
  	<div class="form-row">
	  	<!-- 사진 등록 시작 -->
	  	<div class="col-md-3">
			<div class="wrap-custom-file">
				<input type="file" name="image1" id="image1" accept=".gif, .jpg, .png"/>
				<label for="image1"> 
					<span>사진 등록하기<br/>Click</span>
				</label>
			</div>
	  	</div>
	  	<!-- 사진 등록 끝 -->
	  	
	  	<div class="col-md-9">
	  	<!-- 셀렉트박스, 날짜 시작 -->
	  		<label>필수선택</label>
	  		<div class="form-row mb-3">
				<div class="col-md-2">
					<select class="browser-default custom-select">
						<option selected>지역</option>
						<option value="1">전국</option>
						<option value="2">서울</option>
						<option value="3">경기</option>
						<option value="4">인천</option>
						<option value="5">대전</option>
						<option value="6">대구</option>
						<option value="7">부산</option>
						<option value="8">울산</option>
						<option value="9">광주</option>
						<option value="10">강원</option>
						<option value="11">세종</option>
						<option value="12">충북</option>
						<option value="13">충남</option>
						<option value="14">경북</option>
						<option value="15">경남</option>
						<option value="16">전북</option>
						<option value="17">전남</option>
						<option value="18">제주</option>
					</select>
					</div>
					<div class="col-md-2">
					<select class="browser-default custom-select">
						<option selected>관심분야</option>
						<option value="1">헬스</option>
						<option value="2">필라테스</option>
						<option value="3">요가</option>
						<option value="4">스쿼시</option>
						<option value="5">수영</option>
						<option value="6">기타</option>
					</select>
				</div>
				<div class="col-md-auto pr-1">
					<select class="browser-default custom-select">
						<option selected>운동시간</option>
						<option value="1">오전</option>
						<option value="2">오후</option>
						<option value="3">저녁</option>
						<option value="4">새벽</option>
						<option value="5">오전~오후</option>
						<option value="6">오후~저녁</option>
						<option value="7">저녁~새벽</option>
						<option value="8">새벽~오전</option>
						<option value="9">시간협의</option>
					</select>
				</div>
				
				<!-- 날짜 입력란 시작 -->
					<div class="c-datepicker-date-editor  J-datepicker-range-day mt10">
						<i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
						<input placeholder="시작일" name="" class="c-datepicker-data-input only-date" value="">
						<span class="c-datepicker-range-separator">-</span>
						<input placeholder="종료일" name="" class="c-datepicker-data-input only-date" value="">
					</div>
				<!-- 날짜 입력란 끝 -->
				
			</div>
				<!-- 셀렉트박스, 날짜 row 끝 -->
				
				
				<!-- 태그 row 시작 -->
				<label>대표 TAG</label>
				<div class="form-row mb-5">
					<div class="col-md-3">
						<input type="text" class="form-control" name="tag1" id="tag1" placeholder="태그입력" value="#"/>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="tag2" id="tag2" placeholder="태그입력"/>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="tag3" id="tag3" placeholder="태그입력"/>
					</div>
				</div>
				<!-- 태그 row 끝 -->
				
				
				<!-- 제목 row 시작 -->
				<label>제목</label>
				<div class="form-row mb-3">
					<div class="col-md-10">
						<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요" />
					</div>
				</div>
				<!-- 제목 row 끝 -->
				
				<!-- 내용 row 시작 -->
				<label>내용</label>
				<div class="form-row mb-3">
					<div class="col-md-10">
						<textarea rows="10" name="content" id="content" class="form-control" placeholder="내용을 입력하세요"></textarea>
					</div>
				</div>
				<!-- 내용 row 끝 -->
				<!-- 등록 버튼 row 시작 -->
				<div class="form-row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-info" id="ok">등록</button>
					</div>
	
				</div>
		</div>
		</div>
  	<!-- row 끝 -->
 </form>
</div>
<!-- container -->
<!-- 실제 내용 끝 -->


<!-- 데이트 피커 스크립트 -->
<script>

$(function(){
	
	//데이트 피커
	var DATAPICKERAPI = {	

	          rangeShortcutOption1: [{
	            name: '다음 주',
	            day: '0,7'
	          }, {
	            name: '다음 달',
	            day: '0,30'
	          }, {
	            name: '3달 후',
	            day: '0,90'

	}]};
	
	$('.J-datepicker-range-day').datePicker({
	            hasShortcut: true,
	            format: 'YYYY-MM-DD',
	            isRange: true,
	            shortcutOptions: DATAPICKERAPI.rangeShortcutOption1
	            
	});
	
	
	
})


</script>

