<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- 왼쪽 사이드 고정된 sidebar -->
<div class="sidebar z-depth-5">
	<a href="<c:url value='/main.do'/>"><i class="fa fa-home"></i></a>
	<a href="#"><i class="fas fa-search"></i></a> 	
	<sec:authorize access="hasRole('ROLE_USER')">
		<a href="#" id="user"><i class="fas fa-user"></i></a>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_CENTER')">
		<a href="#" id="center"><i class="fas fa-user"></i></a>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<a href="#" id="admin"><i class="fas fa-user"></i></a>
	</sec:authorize>
	<sec:authorize access="isAnonymous()">
		<a href="#" id="login" style="display:block"><i class="fas fa-user"></i></a>
	</sec:authorize>
	<a href="<c:url value='/member/healthMateMain.do'/>"><i class="fas fa-user-friends"></i></a> 
	<a href="<c:url value='/bbsList.do'/>"><i class="fas fa-clipboard-list"></i></a> 
	<a href="<c:url value='/member/customerServiceMain.do'/>"><i class="fas fa-info-circle"></i></a>
</div>
<!-- sidebar 영역 끝 -->

<!-- search Bar -->
<div class="bg-dark" id="side_SearchBar">
	<div class="container text-center">
		<h2 class="display-4 text-light py-5">센터 찾기</h2>
		
		<!-- 검색창 영역 -->
		<form id="searchForm" action="<c:url value='/searchList.do'/>">
            <div class="input-group input-group-lg col col-md-6 mx-auto">           
               <div class="input-group-prepend">
                  <span class="input-group-text" id="front"><i
                     class="fas fa-search" aria-hidden="true"></i></span>
               </div>
               <input type="text" class="form-control" placeholder="검색할 내용을 입력하세요"
                  aria-label="검색하기" aria-describedby="button-addon2" name="searchWord" id="searchWord">
               <div class="input-group-append">
                  <button
                     class="btn btn-indigo btn-rounded m-0 px-3 py-2 z-depth-0 waves-effect"
                     id="searchButton">검색</button>
               </div>
            </div>
        </form>
      <!-- 검색창 영역 끝 -->
      
	</div>
</div>
<!-- search Bar 영역 끝-->


