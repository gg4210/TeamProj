<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="login">
	<div align="center">
		<img src="<c:url value='/resources/images/loginImage.png'/>" />
	</div>
	<h3 style="color:white;text-align:center;">운동메이트</h3>
	<div class="md-form">
		<input type="text" id="id" class="form-control" placeholder="아이디를 입력하세요"> <label
			for="id"></label>
	</div>
	<div class="md-form">
		<input type="password" id="password" class="form-control" placeholder="비밀번호를 입력하세요"> <label
			for="password"></label>
	</div>
</div>