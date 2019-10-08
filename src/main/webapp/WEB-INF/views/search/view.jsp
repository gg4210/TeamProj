<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/search/view.css"/>">
	<div class="container">
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
		
			<div class="col-7">
				<div class="card">
					<div class="card-body">
						<h2>지도 위치</h2>
						<h2>지도 위치</h2>
						<h2>지도 위치</h2>
						<h2>지도 위치</h2>
						<h2>지도 위치</h2>
						<h2>지도 위치</h2>
					</div>
				</div>
			</div>
			
			
			<div class="col">
							
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
		
		<!-- row 2 시작 -->
		<div class="card mt-3">
			<div class="card-body">
				<h4>센터소개</h4>
				<h4>센터소개</h4>
				<h4>센터소개</h4>
				<h4>센터소개</h4>
				<h4>센터소개</h4>
				<h4>센터소개</h4>	
			</div>
		</div>
		<!-- row 2 끝 -->
		
		<!-- row 3 시작 -->
		<div class="card mt-3">
			<div class="card-body">
				<h4>사진</h4>
				<h4>사진</h4>
				<h4>사진</h4>
			</div>
		</div>
		<!-- row 3 끝 -->
		
		<!--comment-->
		<div class="card mt-3">
			<div class="card-header font-weight-bold">코멘트 달기</div>
			<div class="card-body">
				<div class="row">
					<div class="col-1">
						<img src="<c:url value='/resources/images/girl.png'/>" alt="Avatar" class="avatar img-fluid">					
					</div>
					<form action="#" class="col">
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
			<div class="card-header font-weight-bold">[코멘트 갯수]개</div>
			<div class="card-body">
			
				<div class="row">
					<div class="col-1">
						<img src="<c:url value='/resources/images/girl.png'/>" alt="Avatar" class="avatar img-fluid">
					</div>
					<div class="col">
						<h5 class="mt-0 font-weight-bold blue-text"><strong>닉네임</strong><img src="<c:url value='/resources/images/reply.png'/>" alt="reply-button" class="img-fluid reply-button mx-2"></h5>
						<p>코멘트 내용입니다.</p>
					</div>
				</div>
				<div class="row mt-4">
					<div class="col-1 offset-1">
						<img src="<c:url value='/resources/images/student.png'/>" alt="Avatar" class="avatar img-fluid">
					</div>
					<div class="col">
						<h5 class="mt-0 font-weight-bold blue-text"><strong>답글러 닉네임</strong><img src="<c:url value='/resources/images/reply.png'/>" alt="reply-button" class="img-fluid reply-button mx-2"></h5>
						<p>답글러의 코멘트 내용입니다.</p>
					</div>				
				</div>
				
				<!-- 답글버튼 클릭할 때 나오는 내용 -->
				<div class="row mt-3">
					<div class="col-1 offset-2">
						<img src="<c:url value='/resources/images/girl.png'/>" alt="Avatar" class="avatar img-fluid">					
					</div>
					<form action="#" class="col">
						<div class="form-group basic-textarea rounded-corners">
							   <label for="replyTextarea"><strong>답글 달기</strong></label>
						      <textarea class="form-control z-depth-1" id="replyTextarea" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary z-depth-1">등록</button>					  
					</form>	
				</div>
				<!-- 답글버튼 클릭할 때 나오는 내용 끝 -->
						
			</div>
		</div>
		<!-- 코멘트 보기 끝 -->
</div>


