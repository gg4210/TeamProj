<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authentication property="principal.username" var="id"/>
<sec:authentication property="principal.authorities" var="auth"/>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row pt-5">
		<div class="col-md-10 offset-md-1">
			<h1><strong>이벤트</strong><small><small> 상세보기 페이지</small></small></h1>
		</div>	
	</div>
	<hr />

	<div class="row pt-2">
		<div class="col-md-10 offset-md-1 pt-3">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">카테고리</th>
						<td colspan="3">${eventRecord.category}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">제목</th>
						<td style="width:40%">${eventRecord.title}</td>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">작성일</th>
						<td style="width:20%;text-align: center">${eventRecord.postDate}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">내용</th>
						<td colspan="3">${eventRecord.content}</td>
					</tr>
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
		<c:if test="${auth eq '[ROLE_ADMIN]'}">
			<button type="button" class="btn btn-info" id="event_edit">수정</button>
<%-- 		<button type="button" class="btn btn-primary" id="event_confirm" onclick="<c:url value='/noitceView.do'/>">목록</button> --%>
		</c:if>
 		<button type="button" class="btn btn-primary" onclick="toEventList();">목록</button>
 		<!-- <button type="button" class="btn btn-primary" id="event_confirm">목록</button> -->
		<c:if test="${auth eq '[ROLE_ADMIN]'}">
			<button type="button" class="btn btn-info" id="event_delete">삭제</button>
		</c:if>
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
			</div>
		</div>
	</div>
	<!-- 삭제 모달 끝 -->
	
	
	
</div>

<script>
$(function(){
	$('#event_edit').click(function(){
		location.href="eventEdit.do?no=${eventRecord.no}";
	});
	
	$('#event_confirm').click(function(){
		location.href="/workout/member/customerServiceMain.do#pills-noticeNevent-tab";		
	});
	
	$('#event_delete').click(function(){
		$('#delete-modal').modal('show');
	});
	$('#real_delete').click(function(){
		location.href="/workout/admin/eventDelete.do?no=${eventRecord.no}&nowPage=${param.nowPage}";
	});
	
});

</script>
<script src="<c:url value='/resources/js/customerservice/event.js'/>"></script>