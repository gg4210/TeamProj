<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/healthMate/healthMateWrite.css'/>" />
<!-- 실제 내용 시작 -->
<div class="container-fluid col-6">
	<!-- 점보트론(Jumbotron) -->
	 <header class="jumbotron">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
	<div class="row">
	
	<!-- 셀렉트박스 시작 -->
	<div class="col-md-3">
			<select class="browser-default custom-select mb-4">
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
			<div class="col-md-3">
			<select class="browser-default custom-select">
				<option selected>관심분야</option>
				<option value="1">헬스</option>
				<option value="2">필라테스</option>
				<option value="3">요가</option>
				<option value="4">스쿼시</option>
				<option value="5">기타</option>
			</select>
		</div>
		<div class="col-md-3">
			<select class="browser-default custom-select">
				<option selected>운동시간</option>
				<option value="1">오전</option>
				<option value="2">오후</option>
				<option value="2">저녁</option>
				<option value="2">새벽</option>
				<option value="2">오전~오후</option>
				<option value="2">오후~저녁</option>
				<option value="2">저녁~새벽</option>
				<option value="2">새벽~오전</option>
				<option value="5">시간협의</option>
			</select>
		</div>
		<!-- 셀렉트박스 시작 -->
	
		<div class="col-md-12">
			<form class="form-horizontal" method="post"
				action="<c:url value='/healthMateMain.do'/>">
				<div class="form-group">
					<label class="col-md-2 control-label">제목</label>
					<div class="col-md-5">
						<input type="text" class="form-control" name="title" id="title"
							placeholder="제목을 입력하세요" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label">내용</label>
					<div class="col-md-5">
						<textarea rows="10" name="content" id="content"
							class="form-control" placeholder="내용을 입력하세요"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" class="btn btn-info">등록</button>
					</div>

				</div>
			</form>
		</div>
	</div>
	<!-- row -->
</div>
<!-- container -->
<!-- 실제 내용 끝 -->