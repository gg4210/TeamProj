<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/healthMate/healthMateWrite.css'/>" />
<!-- 실제 내용 시작 -->
<div class="container">
	<!-- 점보트론(Jumbotron) -->
	 <header class="jumbotron">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
    <!-- row 시작 -->
  	<div class="row">
	  	<div class="col-md-3">
	  	<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
	  	<div class="row justify-content-center mt-2">
	  		<a href="#">사진 등록</a>  
	  	</div>
	  	</div>
	  	<div class="col-md-9">
	  	<!-- 셀렉트박스 시작 -->
	  		<label>필수선택</label>
	  		<div class="row mb-3">
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
				<div class="col-md-2">
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
				<!-- 날짜 -->
					<div class="col-md-4">
						<input type="text" id="datepicker" placeholder="날짜를 선택하세요" />
					</div>
				<!-- 날짜 -->




			</div>
				<!-- 셀렉트박스 row 끝 -->
				
				<!-- 태그 row 시작 -->
				<label>대표 TAG</label>
				<div class="row mb-5">
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
				<div class="row mb-3">
					<div class="col-md-10">
						<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요" />
					</div>
				</div>
				<!-- 제목 row 끝 -->
				
				<!-- 내용 row 시작 -->
				<label>내용</label>
				<div class="row mb-3">
					<div class="col-md-10">
						<textarea rows="10" name="content" id="content" class="form-control" placeholder="내용을 입력하세요"></textarea>
					</div>
				</div>
				<!-- 내용 row 끝 -->
				<!-- 등록 버튼 row 시작 -->
				<div class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-info" id="ok">등록</button>
					</div>
	
				</div>
		</div>
  	<!-- row 끝 -->
 
</div>
<!-- container -->
<!-- 실제 내용 끝 -->




<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<!-- 제이쿼리 코어용 라이브러리 임베드 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 제이쿼리 UI용 라이브러리 임베드 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
<!-- 제이쿼리 UI용 CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>

	$(function() {

		$('#ok').click(function() {
			location.href("/healMateMain.do");
		});
		$('#datepicker').datepicker({
			showAnim : "fold",
			dateFormat : "yy-mm-dd",
			minDate : new Date(2019, 10, 17),
			//showOn: "button"
			showOn : "both",
			onSelect : function(dateText) {
				console.log(dateText);
				$('#display').html(dateText);
			}
		});
	});
</script>