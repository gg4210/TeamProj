<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 


<!-- 카카오맵 키 시작-->
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=277dd2a8bda106627e537859aae6e385&libraries=services,drawing"></script>
<!-- 카카오맵 키 끝 -->

<script>
$(function(){
	console.log("${_csrf.token}");
	console.log("${_csrf.parameterName}");
});
</script>
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
<div class="container-fluid">

   <div class="card px-0 mx-0">
      <div class="map_wrap card-body">
         <div id="map"></div>
            <div class="card card-body w-25" id="menu_wrap">
               <div class="list-group list-group-flush"><div id="placesList"></div></div>
               <ul class="pagination pg-blue row justify-content-center mt-2" id="pagination"></ul>
            </div>
      </div>
   </div>
   
</div>
<!-- main 끝-->







