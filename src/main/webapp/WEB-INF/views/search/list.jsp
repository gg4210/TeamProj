<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<script src="<c:url value="/resources/js/search/searchList.js"/>"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca8bd5c2c6fb77c9d67c44b5c3d04f58&libraries=services,drawing"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/search/list.css"/>">

<!-- Main Container -->
<div class="container-fluid">

   <div class="card">
      <div class="map_wrap card-body">
         <div id="map"></div>
         <div id="menu_wrap" class="card scrollbar scrollbar-primary">
            <div class="card-body">
               <table class="table table-hover"><tbody id="placesList"></tbody></table>
               <ul class="pagination pg-blue row justify-content-center mt-2" id="pagination"></ul>
            </div>
         </div>
      </div>
   </div>
   
</div>
<!-- main 끝-->

<!-- 아래는 View 페이지를 확인하기 위해 임시로 만든 버튼입니다. -->
<form action="/workout/searchView.do">
   <button class="btn btn-primary" type="submit">뷰페이지 확인</button>
</form>


