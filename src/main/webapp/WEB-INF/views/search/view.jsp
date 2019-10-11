<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/search/view.css"/>">
	<script src="<c:url value="/resources/MDB-Free_4.8.10/js/addons/rating.js"/>"></script>
	
	<style>
	.rate-popover{
	  color: #c4c4c4;
	}
	.live{
	  color: black;
	}
	.noReview{
	}
	.review{
	 padding:0;
	}
	</style>
	
	<div class="container-fluid">
		<div class="row mt-3">
			<div class="col">
				<blockquote class="blockquote bq-primary card">
					<div class="card-body">
						  <h1 class="card-title text-primary">센터명</h1>
					</div>
				</blockquote>	
			</div>
		</div>
	
		<div class="row">
		
			<div class="col-md-7">
				<div class="card">
					<div class="card-body">
						<h2>사진 위치</h2>
						<h2>사진 위치</h2>
						<h2>사진 위치</h2>
						<h2>사진 위치</h2>
						<h2>사진 위치</h2>
						<h2>사진 위치</h2>	
					</div>
				</div>
			</div>
			
			
			<div class="col-md mt-2">
							
				<!-- 센터 관련 간략정보 -->
				<div class="row">
					<div class="col">
						<div class="card">
							<div class="card-body">
								<h4>상세정보</h4>
								<h4>상세정보</h4>
								<h4>상세정보</h4>
								<h4>상세정보</h4>
								<h4>상세정보</h4>
								<h4>상세정보</h4>
								<h4>상세정보</h4>
								<h4>상세정보</h4>
							</div>
						</div>
					</div>
				</div>
				
			</div>	
			<!-- col 끝 -->		
		</div>
		<!--  row 1 끝-->
		
		
		<!--comment-->
		<div class="card mt-3">
			<div class="card-header font-weight-bold">Review 쓰기</div>
			<div class="card-body">
				<div class="row">
					<div class="col-1">
						<img src="<c:url value='/resources/images/girl.png'/>" alt="Avatar" class="avatar img-fluid">					
					</div>
					<form action="#" class="col">
						<span id="rating" class="rating-faces"></span>
						<div class="form-group basic-textarea rounded-corners">
						      <textarea class="form-control z-depth-1" id="exampleFormControlTextarea345" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary z-depth-1">등록</button>					  
					</form>	
				</div>
			</div>
		</div>
		<!-- comment 끝 -->
		
		<!-- 코멘트 보기 시작 -->
		<div class="card card-comments mb-3 wow fadeIn mt-3">
			<div class="card-header font-weight-bold">Review : [갯수]개</div>
			<div class="card-body">
			
			<!-- 코멘트가 존재할 경우 시작 -->
				<div class="row">
					<div class="col-1">
						<img src="<c:url value='/resources/images/girl.png'/>" alt="Avatar" class="avatar img-fluid">
					</div>
					<div class="col">
						<div>
							<strong class="h5 mt-0 font-weight-bold blue-text">닉네임</strong> 
								<span id="rated" class="rating-faces" data-placement="top" data-toggle="tooltip" title="보통이에요">
									 <i class="far fa-meh py-2 px-1 live" data-index="0"></i>
									 <i class="far fa-meh py-2 px-1 live" data-index="1"></i>
									 <i class="far fa-meh py-2 px-1 live" data-index="2"></i>
									 <i class="far fa-meh-blank px-1 py-2 rate-popover" data-index="3"></i>
									 <i class="far fa-meh-blank px-1 py-2 rate-popover" data-index="4"></i>			
								</span>
						</div>
						<div class="card review">
							<div class="card-body">
								<p>For proper cross-browser and cross-platform behavior, you must use the a tag, not the button tag, and you also must include a tabindex attribute.</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 코멘트가 존재할 경우 끝 -->
				
				<!-- 데이터가 존재하지 않을 경우 시작-->
					<div class="text-center h3">
						<p><i class="far fa-laugh-wink"></i> 후기가 존재하지 않습니다. 첫 후기를 입력해주세요!</p>
					</div>
				<!-- 데이터가 존재하지 않을 경우 끝 -->
						
			</div>
		</div>
		<!-- 코멘트 보기 끝 -->
</div>



<script>
$(function(){
	$('#rating').mdbRate();
	$('[data-toggle="tooltip"]').tooltip();
});



</script>


