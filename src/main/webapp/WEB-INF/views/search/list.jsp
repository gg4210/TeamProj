<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca8bd5c2c6fb77c9d67c44b5c3d04f58&libraries=services,drawing"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/search/list.css"/>">
<script src="<c:url value="/resources/js/search/searchList.js"/>"></script>

<!-- 모달 -->

	<div class="modal fade" id="#warningModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-notify modal-warning" role="document">
	    <div class="modal-content">
	    
	      <div class="modal-header">
	        <p class="heading lead">alert</p>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true" class="white-text">&times;</span>
	        </button>
	      </div>
	      
	      <div class="modal-body">
	        <div class="text-center">
	          <i class="fas fa-check fa-4x mb-3"></i>
	          <p></p>
	        </div>
	      </div>
	      
	      <div class="modal-footer justify-content-center">
	        <a type="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">확인</a>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
<!-- 모달 끝 -->



<!-- Main Container -->
<div class="container-fluid" id="searchPage">

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







