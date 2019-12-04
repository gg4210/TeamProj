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
		<div class="col-md-10 offset-md-1">
			<h1><strong>공지사항</strong><small><small> 상세보기 페이지</small></small></h1>
		</div>	
	</div>
	<hr />
	
	<div class="row pt-2">
		<div class="col-md-10 offset-md-1 pt-3">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">카테고리</th>
						<td colspan="3">${record.category}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">제목</th>
						<td style="width:40%">${record.title}</td>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">작성일</th>
						<td style="width:20%;text-align: center">${record.postDate}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">내용</th>
						<td colspan="3">${record.content}</td>
					</tr>
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
	<!-- 
	<div class="row">
		<div class="col-md-10 offset-md-1">
			<table class="table table-sm table-borderless">
				<tbody>
					<tr>
						<td style="width:10%">▲</td>
						<td style="width:20%">이전 글</td>
						<%-- <c:if test=""></c:if> --%>
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
			<a class="btn btn-info" href="<c:url value='/member/noticeEdit.do?no=${record.no}'/>">수정</a>
<!-- 			<button type="button" class="btn btn-info" id="notice_edit">수정</button> -->
		</c:if>
		<button type="button" class="btn btn-primary" id="notice_confirm">목록</button>
		<c:if test="${auth eq '[ROLE_ADMIN]'}">
			<button type="button" class="btn btn-info" id="notice_delete">삭제</button>
			<!-- <a class="btn btn-info" href="<c:url value='/admin/noticeDelete.do?no=${record.no}'/>">삭제</a> -->
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
	$('#notice_edit').click(function(){
		location.href="noticeEdit.do?no=${record.no}";
	});	

	$('#notice_confirm').click(function(){
		//console.log("들어옵니까?");
		//console.log("href:",window.location.href);
		location.href="/workout/member/customerServiceMain.do#pills-noticeNevent-tab";
	});
	 
	$('#notice_delete').click(function(){
		$('#delete-modal').modal('show');
	});

	$('#real_delete').click(function(){
		//console.log(${param.nowPage});
		location.href="/workout/admin/noticeDelete.do?no=${record.no}&nowPage=${param.nowPage}";
	});
	
});	
</script>
<%-- <script src="<c:url value='/resources/js/customerservice/transfer.js'/>"></script> --%>