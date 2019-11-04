<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.custom-control-input{disabled;}

</style>
<div class="container" id="info">
   	<div class="row align-items-center" id="curow">
   		<form class="text-center border border-light pt-5 pl-5 pr-5 pb-4" action="#!">
   			<p class="h4 mb-4">내 정보</p>
    			<div class="row">
			   	<!-- 사진 -->
				<div class="col-3" style="margin-top:5%;">
					<img src="<c:url value="/resources/images/girl.png"/>" style="width:100%;height:auto;">
			  	</div>
			   	<div class="col-9">
			   		<div class="form-inline text-left">
			   			<label for="Name" class="col-md-3 mb-2">이름:</label>
					    <!-- 이름 -->
					    <input maxlength="5" type="text" id="Name" class="form-control mb-2 col-3" value="가길동"  placeholder="이름을 입력하세요." disabled>
					</div>
					<!-- 아이디 -->
					<div class="form-inline text-left">
						<label for="Id" class="col-md-3 mb-1">아이디:</label>
						<input maxlength="14" type="text" id="Id" class="form-control mb-1 col-md-4" value="svchost1254"  placeholder="아이디" disabled>
				    </div>
				    
				    <!-- 이메일 -->
				    <div class="form-inline mb-2">
				    	<label class="col-md-3">이메일 주소:</label>
				    	<input type="email" maxlength="16" id="email" class="form-control col-md-6 mb-3" placeholder="이메일주소를 입력하세요." value="svchost1254" disabled>
				    	<div class="input-group mb-2 offset-md-3 col-md-4 pl-0">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
					        </div>
							<input type="text" disabled class="form-control col-md-12" id="emailhost" value="naver.com">
						</div>
					</div>
					
					<!-- 휴대폰 번호 -->
					<div class="form-inline mb-3" id="Cel">
						<label class="col-md-3">휴대폰 번호:</label>
						<input type="tel" maxlength="4" class="col-md-2 text-center" value="010" disabled/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" maxlength="4" class="col-md-2 text-center" value="5678" disabled/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" maxlength="4" class="col-md-2 text-center" value="1234" disabled/>
					</div>
					<div class="form-inline mb-3" id="region">
						<label class="col-md-3 text-left">관심 지역:</label>
						<div class="row justify-content-start col-md-9">
							<input type="text" class="form-control col-md-3 mt-2" id="Daum_postcode" placeholder="우편번호" disabled>
						</div>
						<div class="row offset-md-3 pl-0 col">
							<input type="text" class="form-control col-10 mt-2 md-2" id="Daum_address" placeholder="주소" disabled><br>
							<input type="text" class="form-control col-4 mt-2 md-2" id="Daum_detailAddress" placeholder="상세주소" disabled>
							<input type="text" class="form-control col-4 mt-2 md-2" id="Daum_extraAddress" placeholder="참고항목" disabled>
						</div>
					</div>
					
					<div class="form-inline mb-3" id="favorite">
						<label class="col-md-3 text-left">관심 운동:</label>
						<div class="col-md-9 text-left">
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline1" disabled>
							  <label class="custom-control-label" for="defaultInline1">헬스</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline2" disabled>
							  <label class="custom-control-label" for="defaultInline2">GX</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline3" disabled>
							  <label class="custom-control-label" for="defaultInline3">요가</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline4" disabled>
							  <label class="custom-control-label" for="defaultInline4">필라테스</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline5" disabled>
							  <label class="custom-control-label" for="defaultInline5">에어로빅</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline6" disabled>
							  <label class="custom-control-label" for="defaultInline6">스피닝</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline7" disabled>
							  <label class="custom-control-label" for="defaultInline7">클라이밍</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline8" disabled>
							  <label class="custom-control-label" for="defaultInline8">수영</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline9" disabled>
							  <label class="custom-control-label" for="defaultInline9">골프</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline10" disabled>
							  <label class="custom-control-label" for="defaultInline10">복싱</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline11" disabled>
							  <label class="custom-control-label" for="defaultInline11">크로스핏</label>
							</div>
							<div class="custom-control custom-checkbox custom-control-inline">
							  <input type="checkbox" class="custom-control-input" id="defaultInline12" disabled>
							  <label class="custom-control-label" for="defaultInline12">기타</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button class="btn btn-info offset-md-10 col-md-2" id="startchange" type="button">수정</button>
		</form>
	</div>
</div>