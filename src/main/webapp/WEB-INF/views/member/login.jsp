<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 로그인 사이드바 제작 중 -->
<div class="login bg-dark" id="loginMenu">
	<!-- close button 시작 -->
	<button type="button" class="close text-white mt-2" aria-label="Close" id="closelogin">
		 <span aria-hidden="true">×</span>
	</button>		
	<!-- close button 끝 -->
	<div class="container text-center">
		<div class="row">
			<div class="col">
				<img src="<c:url value='/resources/images/loginImage.png'/>" />
			</div>
		</div>
		<div class="h3 text-white">운동메이트</div>
			<div class="md-form">
				<input type="text" id="id" class="form-control text-white"> 
					<label for="id"><span class="text-white" id="labelId">아이디</span></label>
			</div>
			<div class="md-form">
				<input type="password" id="password" class="form-control text-white"> 
					<label for="password"><span class="text-white" id="labelPwd">비밀번호</span></label>
			</div>
		<div class="text-right" id="submit">
			<a href="<c:url value='/mypage.do'/>"><button class="btn btn-primary">들어가기</button></a>
		</div>
		
		<div class="text-center pt-3">
			<span class="text-white">회원이 아니신가요? <a href="<c:url value='jointype.do'/>">회원가입</a></span>
		</div>
		
		<div class="text-center pt-3">
			<span class="text-white"><a href="<c:url value='join.do'/>">아이디/비밀번호 찾기</a></span>
		</div>
		
		<button class="btn btn-indigo btn-block mx-auto mt-2 font-weight-bold">페이스북 로그인</button>
		<button class="btn btn-yellow btn-block mx-auto mt-2 font-weight-bold">카카오톡 로그인</button>
		<button class="btn btn-success btn-block mx-auto mt-2 font-weight-bold">네이버 로그인</button>
		
	</div>
</div>

