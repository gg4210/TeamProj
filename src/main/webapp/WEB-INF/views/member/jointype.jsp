<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
html, body, .content{
    height:100%;
}
</style>

<div class="container h-100" id="jtype">
	<!-- <div class="flex-item flex-center" id="jflex"> -->
		<div class="row align-items-center h-100">			
			<div class="card card-body mx-auto py-5">
				<p class="card-title text-center display-3 py-4 mb-4">회원유형</p>
				<div class="row d-flex justify-content-center pb-3">
					<div class="col-5">
						<a href="<c:url value='/join.do'/>" class="btn btn-primary btn-block py-5"><i class="fas fa-user fa-10x"></i><h2 class="pt-5">개인 회원</h2></a>
					</div>
					<div class="col-5">
						<a href="<c:url value='/enterprisejoin.do'/>" class="btn btn-primary btn-block py-5"><i class="fas fa-building fa-10x"></i><h2 class="pt-5">기업 회원</h2></a>
					</div>
				</div>
			</div>
		</div>		
</div>
