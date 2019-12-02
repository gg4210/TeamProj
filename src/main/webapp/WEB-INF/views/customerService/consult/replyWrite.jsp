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
</style>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row pt-5">
		<div class="col">
			<h1><strong>1:1문의</strong><small><small> 답변달기 페이지</small></small></h1>
		</div>	
	</div>
	<hr />

	<div class="row pt-2">
		<div class="col">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">작성자</th>
						<td style="width:40%">${consultRecord.id}</td>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">카테고리</td>
						<td style="width:20%;">${consultRecord.category}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">제목</td>
						<td style="width:40%">${consultRecord.title}</td>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">작성일</td>
						<td style="width:20%;text-align: center">${consultRecord.postDate}</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">내용</td>
						<td colspan="3">${consultRecord.content}</td>
					</tr>
					
					
					<tr><!-- form처리 해야 함 -->
						<th class="blue-text" style="text-align: center;font-weight: bold">답변</td>
						<td colspan="3">
							<div class="form-group custominfo-border">
	  							<textarea class="form-control" id="exampleFormControlTextarea4" rows="8"></textarea>
							</div>
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
		<button type="button" class="btn btn-info" id="reply_registration">답변등록</button>		
		<button type="button" class="btn btn-primary" id="go_consultList">목록</button>
	</div>
	<br/>
	<br/>
</div>

<script>
$(function(){
	$('#reply_registration').click(function(){
		location.href="consultView.do";
	});
	
	$('#go_consultList').click(function(){
		location.href="/workout/member/customerServiceMain.do#pills-consultlist-tab";
	});
	
});
</script>
