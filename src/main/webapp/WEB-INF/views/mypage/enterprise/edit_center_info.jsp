<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src='<c:url value="/resources/utils/timepicker/timepicki.js"/>'></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/utils/timepicker/timepicki.css'/>">
<script src='<c:url value="/resources/js/mypage/enterprise/edit_center_info.js"/>'></script>



<div class="container">
	<div class="row no-gutters">
	<div class="card card-body">
	
	
	<form name="editcenterinfo_form" action="<c:url value='/center/edit_OK.do?_csrf=${_csrf.token }'/>" enctype="multipart/form-data" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<div class="jumbotron">
		    <div class="" style="font-size:4em;">
		       	센터 정보수정
		    </div>
		</div>
		
		<div class="row">
			<div class="col-6">
				<!-- 센터명 시작 -->
				<div class="form-group">
				  <label for="edit-centername">센터명</label>
				  <input type="text" class="form-control col-5" name="title" value="${dto.title }">
				</div>
				<!-- 센터명 끝 -->
	
				<!-- 운영시간 시작 -->
				<div class="form-group">
					<label for="weekday">주중</label>
					<div class="form-inline" id="weekday">
						<input type="text" id="weekday_start" class="form-control" name="weekday_start"/>~
						<input type="text" id="weekday_end" class="form-control" name="weekday_end"/>
					</div>
					<label for="weekend" class="mt-3">주말</label>
					<div class="form-inline" id="weekend">
						<input type="text" id="weekend_start" class="form-control" name="weekend_start"/>~
						<input type="text" id="weekend_end" class="form-control" name="weekend_end"/>
					</div>
				</div>
				<!-- 운영시간 끝-->
		
				<!-- 정원 시작 -->
				<div class="form-group">
				  <label for="edit-centername mt-1">정원</label>
				  <div class="form-inline">
				  	<input type="text" class="form-control col-3" id="max" style="text-align:right;" name="maxNumber" value="${dto.MAXNUMBER }"><span class="mt-2">&nbsp명</span>
				  </div>
				</div>
				<!-- 정원 끝 -->
			</div>
			<!-- 센터소개 시작 -->			
			<div class="form-group col-lg-6">
				<label for="center-info-textarea">센터소개</label>
				<textarea class="form-control" id="center-info-textarea" rows="11" name="content" value="${dto.content }"></textarea>
			</div>
			<!-- 센터소개 끝 -->
			
		</div>
		
		<!-- 종목 시작 -->	
  		<div class="form-group">
			<label for="kinds_of_sport">운동종목</label> 
				<select name="kinds_of_sport" id="kinds_of_sport" class="form-control" multiple="multiple">
					<option value="헬스" icon="iw-way">헬스</option>
					<option value="필라테스" icon="iw-crane">필라테스</option>
					<option value="수영" icon="iw-scope">수영</option>
					<option value="크로스핏" icon="iw-excavator">크로스핏</option>
					<option value="복싱" icon="iw-key">복싱</option>
					<option value="클라이밍" icon="iw-warning">클라이밍</option>
					<option value="요가" icon="iw-bag">요가</option>
					<option value="에어로빅" icon="iw-dozer">에어로빅</option>
					<option value="GX" icon="iw-pickup">GX</option>
					<option value="골프" icon="iw-hammer">골프</option>
					<option value="스피닝" icon="iw-drill">스피닝</option>
					<option value="기타" icon="iw-note">기타</option>
				</select>
		</div>
		<!-- 종목 끝 -->
		
		<!-- 제공서비스 시작 -->
		<div class="form-group">	
		
			<label for="kind_of_service">제공 서비스</label>			
			<select name="kind_of_service" id="kind_of_service" class="form-control" multiple="multiple">
				<option value="운동복" icon="iw-uniform">운동복</option>
				<option value="타월" icon="iw-tower">타월</option>
				<option value="주차" icon="iw-park">주차</option>
				<option value="라커" icon="iw-locker">라커</option>
				<option value="와이파이" icon="iw-wifi">와이파이</option>
				<option value="샤워실" icon="iw-shower">샤워실</option>
				<option value="찜질방" icon="iw-sauna">찜질방</option>
				<option value="기타" icon="iw-etc">기타</option>
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
			<div class="input-images" style="padding-top: .5rem;" id="upload-image" name="upload-images"></div>
		</div>
		<!-- 이미지 첨부 끝 -->
		
		<div class="row">
			<div class="col d-flex justify-content-center">
				<button class="btn btn-primary" id="submit_edit">확인</button>
			</div>
		</div>

	</form>
	
	</div>
	</div>
</div>

<script>
$(function(){
	console.log("여기서 체크");
	console.log("${isallowed}");
	console.log("${isallowed ==0}");
	var token = $("meta[name='_csrf']").attr("content");

	$('#submit_edit').click(function(e){
		
		e.preventDefault();

		$('form').append('<input type="hidden" name="_csrf" value="'+token+'">');
		$('form').submit();
		
	});
});


document.addEventListener('keydown', function(event) {
	  if (event.keyCode === 13) {
	    event.preventDefault();
	  };
	}, true);
</script>