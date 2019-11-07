<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<script src='<c:url value="/resources/js/mypage/enterprise/edit_center_info.js"/>'></script>


<div class="container">
	<div class="row no-gutters">
	<div class="card card-body">
	<form action="#" enctype="multipart/form-data" method="post">
		<!-- 운영시간 시작 -->
		<!-- 운영시간 끝-->
		
		<!-- 종목 시작 -->	
  		<div class="form-group">
			<label for="kinds_of_sport">운동종목</label> 
				<select name="work-condition" id="kinds_of_sport" class="form-control">
					<option value="1" icon="iw-way">헬스</option>
					<option value="2" icon="iw-crane">필라테스</option>
					<option value="3" icon="iw-scope">수영</option>
					<option value="4" icon="iw-excavator">크로스핏</option>
					<option value="5" icon="iw-key">복싱</option>
					<option value="6" icon="iw-warning">클라이밍</option>
					<option value="7" icon="iw-bag">요가</option>
					<option value="8" icon="iw-dozer">에어로빅</option>
					<option value="9" icon="iw-pickup">GX</option>
					<option value="10" icon="iw-hammer">골프</option>
					<option value="11" icon="iw-drill">스피닝</option>
					<option value="12" icon="iw-note">기타</option>
				</select>
		</div>
		<!-- 종목 끝 -->	
		
		<!-- 센터소개 시작 -->			
		<div class="form-group">
			<label for="center-info-textarea">센터소개</label>
			<textarea class="form-control" id="center-info-textarea" rows="7"></textarea>
		</div>
		<!-- 센터소개 끝 -->
		
		<!-- 제공서비스 시작 -->
		<div class="form-group">	
		
			<label for="kind_of_service">제공 서비스</label>			
			<select name="work-service" id="kind_of_service" class="form-control">
				<option value="clothes" icon="iw-uniform">운동복</option>
				<option value="parking-lot" icon="iw-park">주차</option>
				<option value="locker" icon="iw-locker">라커</option>
				<option value="wifi" icon="iw-wifi">와이파이</option>
				<option value="shower-room" icon="iw-shower">샤워실</option>
				<option value="sauna" icon="iw-sauna">찜질방</option>
				<option value="etc" icon="iw-etc">기타</option>
			</select>
							
		</div>
		<!-- 제공서비스 끝 -->
		
		<!-- 태그 받기 시작 -->
		<div class="form-group">
			<label for="tag-input">태그</label> 
			<input type="text" class="form-control" name="work-tag" id="work-tag">
		</div>
		<!-- 태그 받기 끝 -->
		
		<!-- 이미지 첨부 시작 -->
		<div class="form-group">
			<label for="image-upload">센터 이미지 업로드</label>		
			<div class="input-images" style="padding-top: .5rem;"></div>
		</div>
		<!-- 이미지 첨부 끝 -->
		
		<div class="row">
			<div class="col d-flex justify-content-center">
				<button class="btn btn-primary" id="image-upload">확인</button>
			</div>
		</div>

	</form>
	</div>
	</div>
</div>

