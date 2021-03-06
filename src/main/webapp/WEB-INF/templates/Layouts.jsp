<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!-- 모든 곳에 쓰이는 스타일시트와 자바스크립트 불러오기. -->
<tiles:importAttribute name="stylesheets"/>
<tiles:importAttribute name="javascripts"/>



<!doctype html>
<html lang="ko">
<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.parameterName}"/>
<title><tiles:getAsString name="title"/></title>	

	<!-- CSS -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<c:forEach var="css" items="${stylesheets}">
	<link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
	</c:forEach>
	<!-- end CSS -->
	
	<!-- scripts -->
    <c:forEach var="script" items="${javascripts}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach>
    <!-- end scripts -->
<script>


if(${param.required !=null}==true){
	$(window).on('load',function(){
	    $('#required-modal').modal('show');
	});
}
	
</script>
</head>
<body>

	<tiles:insertAttribute name="Side" />
	<tiles:insertAttribute name="login"/>
	<div class="content">
		<tiles:insertAttribute name="Body" />
	</div>
</body>
</html>