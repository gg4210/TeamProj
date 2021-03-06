<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!--  아이디 얻어서 var에 지정한 변수 id에 저장 -->
<sec:authentication property="principal.username" var="id"/>
<sec:authentication property="principal.authorities" var="auth"/>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row pt-5 ml-3">
		<div class="col-md-12 ml-5">
			<h1><strong>1:1문의</strong><small><small> 상세보기 페이지</small></small></h1>
		</div>	
	</div>
	<hr />

	<div class="row pt-4">
		<div class="col-md-10 offset-1">
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
				</tbody>
			</table>
		</div>
	</div>
	
	<!-- 
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
	 -->
	<div class="row d-flex justify-content-center mt-5 mb-3">
		<c:if test="${auth eq '[ROLE_ADMIN]'}"><!-- admin 페이지 분리하면 없앨지도 모르는 버튼 -->
			<button type="button" class="btn btn-info" id="reply_write">답변</button>
		</c:if>
		<c:if test="${empty consultRecord.reply}">
			<button type="button" class="btn btn-primary" id="question_edit">수정</button>
		</c:if>
		<button type="button"  class="btn btn-primary" id="consultList">목록</button>
		<button type="button" class="btn btn-primary" id="delete">삭제</button>
	</div>
	<br/>
	<br/>
	
	<!-- 삭제 모달 시작 -->
	<div class="modal fade" id="delete-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-sm modal-dialog modal-notify modal-primary modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading py-0">삭제 확인</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row d-flex justify-content-center my-3">
							<h5>정말로 삭제하시겠습니까?</h5>
						</div>
						<div class="row d-flex justify-content-center">	
							<button type="button" class="btn btn-primary" id="real_delete">삭제</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div><!--/.Content-->				
			</div>
		</div>
		<!-- 모달 끝 -->
	
	
	
</div>

<script>
$(function(){
	$('#reply_write').click(function(){
		location.href="replyWrite.do";
	});	
	
	$('#question_edit').click(function(){
		location.href="consultEdit.do?no=${consultRecord.no}";
	});
	
	$('#consultList').click(function(){
		location.href="/workout/member/customerServiceMain.do#pills-consultlist-tab";
	});	
	
	$('#delete').click(function(){
		$('#delete-modal').modal('show');
	});
	$('#real_delete').click(function(){
		location.href="/workout/member/consultDelete.do?no=${consultRecord.no}&nowPage=${param.nowPage}";
	});
	
});
</script>
