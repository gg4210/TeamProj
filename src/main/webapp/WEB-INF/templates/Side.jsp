<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 왼쪽 사이드 고정된 sidebar -->
<div class="sidebar">
	<a href="<c:url value='/main.do'/>"><i class="fa fa-home"></i></a> <a
		href="#"><i class="fas fa-search"></i></a> <a href="#"><i
		class="fas fa-user"></i></a> <a href="#"><i
		class="fas fa-clipboard-list"></i></a> <a href="#"><i
		class="fas fa-info-circle"></i></a>
</div>
<!-- sidebar 영역 끝 -->

<!-- search Bar -->
<div class="jumbotron jumbotron-fluid">
	<div class="container text-center">
		<h2 class="display-4 pb-3">센터 찾기</h2>
		<p class="lead">검색하실 센터를 입력하세요</p>
		<!-- 검색창 영역 -->
            <div class="input-group col col-md-6 mx-auto">
               <div class="input-group-prepend">
                  <span class="input-group-text" id="front"><i
                     class="fas fa-search" aria-hidden="true"></i></span>
               </div>
               <input type="text" class="form-control" placeholder="검색할 내용을 입력하세요"
                  aria-label="검색하기" aria-describedby="button-addon2">
               <div class="input-group-append">
                  <button
                     class="btn btn-unique btn-rounded m-0 px-3 py-2 z-depth-0 waves-effect"
                     type="button" id="button-addon2">검색</button>
               </div>
            </div>
      <!-- 검색창 영역 끝 -->
	</div>
</div>
<!-- search Bar 영역 끝-->


