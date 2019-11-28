<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!--  아이디 얻어서 var에 지정한 변수 id에 저장 -->
<sec:authentication property="principal.username" var="id"/>
<sec:authentication property="principal.authorities" var="auth"/>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row pt-5">
		<div class="col">
			<h1><strong>1:1문의</strong><small><small> 상세보기 페이지</small></small></h1>
		</div>	
	</div>
	<hr />

	<div class="row pt-2">
		<div class="col">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">카테고리</th>
						<td colspan="3">${consultRecord.category}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">제목</th>
						<td style="width:40%">${consultRecord.title}</td>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">작성일</th>
						<td style="width:20%;text-align: center">${consultRecord.postDate}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">내용</th>
						<td colspan="3">${consultRecord.content}</td>
					</tr>
					
					
					
					<c:if test='${empty consultRecord.reply}' var="isEmpty">
						<tr>
							<td colspan="4" class="text-center">답변 대기중입니다.</td><!-- 지금은 default처리도 해놨음(나만) -->
						</tr>
					</c:if>
					<c:if test="${not isEmpty}">
						<tr>
							<th class="blue-text" style="text-align: center;font-weight: bold">답변</th>
							<td colspan="3">${consultRecord.reply}</td>
						</tr>
					</c:if>
					<c:if test="${auth eq '[ROLE_ADMIN]'}">
						<tr>
							<th class="blue-text" style="text-align: center;font-weight: bold">답변</th>
							<td colspan="3">답변입니다<br/>
											답변의 길이에 따라 영역의 크기가 변합니다.<br/> 
											//////////여기에 텍스트필드 넣어야 합니다./////////////<br/>								
							</td>
						</tr>
					</c:if>
					
					
				</tbody>
			</table>
		</div>
	</div>
	
<!-- 아래 테이블 맘에 안들면 바꿔봅시다.. / 글씨 크기는 작은 거? 큰 거?
	<div class="row">
		<div class="col">
			<span style="text-align: center"><small>▲&nbsp;&nbsp;이전
					글&nbsp;&nbsp;&nbsp;이전 글이 없습니다</small></span>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<p>▼&nbsp;&nbsp;다음 글&nbsp;&nbsp;&nbsp;다음 글의 제목입니다</p>
		</div>
	</div>
 -->
	
	<div class="row">
		<div class="col-md-10 offset-md-1">
			<table class="table table-sm table-borderless">
				<tbody>
					<tr>
						<td style="width:10%">▲</td>
						<td style="width:20%">이전 글</td>
						<td>이전 글이 없습니다.</td>
					</tr>
					<tr>
						<td>▼</td>
						<td>다음 글</td>
						<td>다음 글 제목입니다.</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<div class="row d-flex justify-content-center mt-3 mb-3">		
		<button type="button" class="btn btn-info" id="reply_write">답변</button>
		<button type="button" class="btn btn-primary" id="question_edit">수정</button>
		<button type="button"  class="btn btn-primary" id="consultList">목록</button>
		<button type="button" class="btn btn-primary" id="delete">삭제</button>
	</div>
	<br/>
	<br/>
	
	<!-- 삭제 모달 시작 -->
	<div class="modal fade" id="delete-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-primary modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading">삭제 확인</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row d-flex justify-content-center my-3">
							<h4>정말로 삭제하시겠습니까?</h4>
						</div>
						<div class="row d-flex justify-content-center">	
							<button type="button" class="btn btn-primary btn-md">삭제</button>
							<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
							
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- PLUS MATE 모달 끝 -->
	
	
	
</div>

<script>
$(function(){
	$('#reply_write').click(function(){
		location.href="replyWrite.do";
	});	
	
	$('#question_edit').click(function(){
		location.href="consultEdit.do?=${consultRecord.no}";
	});
	
	$('#consultList').click(function(){
		location.href="/workout/member/customerServiceMain.do#pills-consultlist-tab";
	});	
	
	$('#delete').click(function(){
		$('#delete-modal').modal('show');
	});
	
});
</script>
