<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!--  아이디 얻어서 var에 지정한 변수 id에 저장 -->
<sec:authentication property="principal.username" var="id"/>
<sec:authentication property="principal.authorities" var="auth"/>

<style>
.custominfo-border textarea {
    border: 1px solid #33B5E5;
}
.custominfo-border .form-control:focus {
    border: 1px solid #33B5E5;
    box-shadow: 0 0 0 0.2rem rgba(131, 186, 207, .25);
}
#edit_elert {
	color: red
}
</style>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row pt-5">
		<div class="col">
			<h1><strong>1:1문의</strong><small><small> 답변달기 페이지</small></small></h1>
		</div>	
	</div>
	<hr />
	<form action="<c:url value='/admin/consultList.do'/>" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<input type="hidden" name="no" value="${consultRecord.no}"/>
	<div class="row pt-2">
		<div class="col">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">카테고리</th>
						<td style="width:20%;">${consultRecord.category}</td>
						<th class="blue-text" style="text-align: center;font-weight: bold">작성자</th>
						<td style="width:40%;text-align: center">${consultRecord.id}</td>						
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">제목</td>
						<td style="width:40%">${consultRecord.title}</td>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">작성일</th>
						<td style="width:20%;text-align: center">${consultRecord.postDate}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">내용</th>
						<td colspan="3">${consultRecord.content}</td>
					</tr>
					
					
					<%-- 
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
					 --%>
					
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">답변</th>
						<td colspan="3">
							<c:if test="${auth eq '[ROLE_ADMIN]'}">
								<c:if test="${empty consultRecord.reply}" var="isEmpty">								
									<div class="form-group custominfo-border">
										<textarea name="reply" class="form-control" id="exampleFormControlTextarea4" rows="8"></textarea>
									</div>
								</c:if>
							</c:if>
							<c:if test="${not isEmpty}">
								<div>${consultRecord.reply}
									<br/>
									<br/><span id="edit_elert">(수정 시 아래의 상자 안에 적힌 내용만 답변으로 등록되니 유의하세요.)</span>
								</div>
								<div class="form-group custominfo-border">
								<textarea name="reply" class="form-control" id="exampleFormControlTextarea4" rows="8">${consultRecord.reply}</textarea>
								</div>
							</c:if>
						</td>
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
	<div class="row d-flex justify-content-center mt-3 mb-3">		
		<button type="submit" class="btn btn-info">답변등록/수정</button>
		<button type="button" class="btn btn-primary" id="question_edit">수정</button>
		<button type="button"  class="btn btn-primary" id="consultList">목록</button>
		
	</div>
	<br/>
	<br/>
	</form>
	
	<!-- 삭제 모달 시작 -->
	<!-- 
	<div class="modal fade" id="delete-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-primary modal-dialog-centered" role="document">
				
				<div class="modal-content">
					
					<div class="modal-header">
						<p class="heading">삭제 확인</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					
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
				
			</div>
		</div> -->
		<!-- 삭제 모달 끝 -->
	
	
	
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
