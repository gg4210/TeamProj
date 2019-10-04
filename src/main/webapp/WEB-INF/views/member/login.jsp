<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 로그인 사이드바 제작 중 -->
<div class="login" style="z-index: 5" id="loginMenu">
	<a href="javascript:void(0)" class="closebtn"
	         onclick="closeLogin()">&times;</a>
	<div class="row">
		<div class="container text-center">
			<div>
				<img src="<c:url value='/resources/images/loginImage.png'/>" />
			</div>
			<h3 style="color:white;text-align:center;">운동메이트</h3>
			<div class="md-form">
				<input type="text" id="id" class="form-control"
					placeholder="아이디를 입력하세요"> <label for="id"></label>
			</div>
			<div class="md-form">
				<input type="password" id="password" class="form-control"
					placeholder="비밀번호를 입력하세요"> <label for="password"></label>
			</div>
			<div class="text-right" id="submit">
				<button type="button" class="btn btn-light-blue">들어가기</button>
			</div>
		</div>
	</div>
</div>
<script>
function openLogin() {
    document.getElementById("loginMenu").style.width = "300px";
 }
function closeLogin() {
    document.getElementById("loginMenu").style.width = "0";
 }
</script>