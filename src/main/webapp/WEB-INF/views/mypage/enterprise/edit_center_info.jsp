<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src='<c:url value="/resources/utils/timepicker/timepicki.js"/>'></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/utils/timepicker/timepicki.css'/>">
<script src='<c:url value="/resources/js/mypage/enterprise/edit_center_info.js"/>'></script>



<div class="container">
	<div class="row no-gutters">
	<div class="card card-body">
	<form action="#" enctype="multipart/form-data" method="post">
		
		<div class="jumbotron">
		    <div class="" style="font-size:4em;">
		       	센터 정보수정
		    </div>
		</div>
		
		<div class="form-group form/row">
		  <label for="edit-centername">센터명</label>
		  <input type="text" class="form-control col-5" id="edit-centername">
		</div>
	
		<!-- 운영시간 시작 -->
			<div class="form-group">
				<label for="weekday">주중</label>
				<div class="form-inline" id="weekday">
					<input type="text" id="weekday_start" class="form-control"/>~
					<input type="text" id="weekday_end" class="form-control"/>
				</div>
				<label for="weekend" class="mt-3">주말</label>
				<div class="form-inline" id="weekend">
					<input type="text" id="weekend_start" class="form-control"/>~
					<input type="text" id="weekend_end" class="form-control"/>
				</div>
			</div>
		<!-- 운영시간 끝-->
		
		<!-- 종목 시작 -->	
  		<div class="form-group">
			<label for="kinds_of_sport">운동종목</label> 
				<select name="kinds_of_sport" id="kinds_of_sport" class="form-control">
					<option value="Health" icon="iw-way">헬스</option>
					<option value="Pilates" icon="iw-crane">필라테스</option>
					<option value="Swimming" icon="iw-scope">수영</option>
					<option value="Crossfit" icon="iw-excavator">크로스핏</option>
					<option value="Boxing" icon="iw-key">복싱</option>
					<option value="Climbing" icon="iw-warning">클라이밍</option>
					<option value="Yoga" icon="iw-bag">요가</option>
					<option value="Aerobics" icon="iw-dozer">에어로빅</option>
					<option value="Group_Exercise" icon="iw-pickup">GX</option>
					<option value="Golf" icon="iw-hammer">골프</option>
					<option value="Spinning" icon="iw-drill">스피닝</option>
					<option value="Something_else" icon="iw-note">기타</option>
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
			<select name="kind_of_service" id="kind_of_service" class="form-control">
				<option value="clothes" icon="iw-uniform">운동복</option>
				<option value="towel" icon="iw-tower">타월</option>
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

