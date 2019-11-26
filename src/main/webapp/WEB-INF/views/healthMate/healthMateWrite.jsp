<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="<c:url value='/resources/utils/datePicker/moment/moment.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/css/datepicker.css'/>">


<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.all.js'/>"></script>
<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.en.js'/>"></script>


<!-- 실제 내용 시작 -->
<div class="container">
	<!-- 점보트론(Jumbotron) -->
	 <header class="jumbotron">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
    
    <!-- row 시작 -->
	<form method="post" id="mateWriteForm" action='<c:url value="/member/mateWriteOk.do?${_csrf.parameterName}=${_csrf.token}"/>' enctype="multipart/form-data">
  	<div class="form-row">
	  	<!-- 사진 등록 시작 -->
	  	<div class="col-md-3">
			<div class="wrap-custom-file">
				<input type="file" name="matePhoto" id="matePhoto" accept=".gif, .jpg, .png"/>
				<label for="matePhoto"> 
					<span>사진 등록하기<br/>Click</span>
				</label>
			</div>
	  	</div>
	  	<!-- 사진 등록 끝 -->
	  	
	  	<div class="col-md-9">
	  	<!-- 셀렉트박스, 날짜 시작 -->
	  		<label><span style="color: red; font-weight: bold;">필수 항목</span></label>
	  		<div class="form-row mb-3">
				<div class="col-md-2">
					<select class="browser-default custom-select" id="location" name="location">
						<option selected>지역</option>
						<option value="전국">전국</option>
						<option value="서울">서울</option>
						<option value="경기">경기</option>
						<option value="인천">인천</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
						<option value="울산">울산</option>
						<option value="광주">광주</option>
						<option value="강원">강원</option>
						<option value="세종">세종</option>
						<option value="충북">충북</option>
						<option value="충남">충남</option>
						<option value="경북">경북</option>
						<option value="경남">경남</option>
						<option value="전북">전북</option>
						<option value="전남">전남</option>
						<option value="제주">제주</option>
					</select>
					</div>
					<div class="col-md-2">
					<select class="browser-default custom-select" id="interSport" name="interSport">
						<option selected>관심분야</option>
						<option value="헬스">헬스</option>
						<option value="필라테스">필라테스</option>
						<option value="요가">요가</option>
						<option value="스쿼시">스쿼시</option>
						<option value="수영">수영</option>
						<option value="기타">기타</option>
					</select>
				</div>
				<div class="col-md-auto">
					<select class="browser-default custom-select" id="healthTime" name="healthTime">
						<option selected>운동시간</option>
						<option value="오전">오전</option>
						<option value="오후">오후</option>
						<option value="저녁">저녁</option>
						<option value="새벽">새벽</option>
						<option value="오전~오후">오전~오후</option>
						<option value="오후~저녁">오후~저녁</option>
						<option value="저녁~새벽">저녁~새벽</option>
						<option value="새벽~오전">새벽~오전</option>
						<option value="시간협의">시간협의</option>
					</select>
				</div>
				
				<!-- 날짜 입력란 시작 -->
					<div class="c-datepicker-date-editor J-datepicker-range-day" style="margin-top: 3px; margin-left: 5px">
						<i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
						<input placeholder="시작일" class="c-datepicker-data-input only-date" id="startDate" name="startDate">
						<span class="c-datepicker-range-separator">-</span>
						<input placeholder="종료일" class="c-datepicker-data-input only-date" id="endDate" name="endDate">
					</div>
				<!-- 날짜 입력란 끝 -->		
			</div>
			<!-- 셀렉트박스, 날짜 row 끝 -->
				
				
				<!-- 기존 태그 row 시작 -->
				<label>대표 TAG</label>
				<div class="form-row mb-3" id="tag">
					<div class="col-md-3">
						<input type="text" class="form-control" name="first_tag" id="first_tag" placeholder="태그입력" value=""/>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="second_tag" id="second_tag" placeholder="태그입력" value=""/>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="third_tag" id="third_tag" placeholder="태그입력" value=""/>
					</div>
				</div>
				<!-- 기존 태그 row 끝 -->
			
				
				
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
						<button type="button" class="btn btn-info" id="writeOk">등록</button>
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
	
	//태그
	/*
	$('input[name="mate_tag"]').amsifySuggestags({
        type :'bootstrap',tagLimit: 3
   });
	*/
	
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
	
	$('#writeOk').click(function(){
		console.log("계세요?");
		/*
		var mateWriteForm=document.getElementById("mateWriteForm");
		var imgValue=document.getElementById('image1').value;
		var locValue=document.getElementById('location').value;
		var likeValue=document.getElementById("likeSport").value;
		var timeValue=document.getElementById('healthTime').value;
		var startDateValue=document.getElementById('startHealthDate').value;
		var endDateValue=document.getElementById('endHealthDate').value;
		var titleValue=document.getElementById('title').value;
		var contentValue=document.getElementById('content').value;
		
		console.log(imgValue);
		console.log(locValue);
		console.log(likeValue);
		console.log(timeValue);
		console.log(startDateValue);
		console.log(endDateValue);
		console.log(titleValue);
		console.log(contentValue);
		*/
		console.log("여긴 오니")
		mateWriteForm.submit();
		
		
		
	})
	
	
})

</script>

