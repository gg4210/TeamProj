<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 

<style>
	.best5{
		padding:5px;
		background-color:#D3D3D3;
	}
	#questions #nospace{
		padding-top:0px !important;
		padding-bottom:0px !important;
	}
</style>

<sec:authentication property="principal.username" var="id"/>
<sec:authentication property="principal.authorities" var="auth"/>
<script>

</script>

<div class="container">
	<div class="row pt-2 pl-5">
		<h3>자주 묻는 질문</h3>
		<div class="col clearfix">
			<div class="float-right">
				<c:if test="${auth eq '[ROLE_ADMIN]'}">
					<button type="button" class="btn btn-info p-2 px-3" id="faq_write">
						<i class="fas fa-pencil-alt"></i> FAQ작성
					</button>
				</c:if>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<div class="form-inline">
					<select class="browser-default custom-select">
						<option selected value="">검색조건</option>
						<option value="[계정 관련 질문]">계정 관련 질문</option>
						<option value="[앱 관련 질문]">앱 관련 질문</option>
						<option value="[운동메이트]">운동메이트</option>
						<option value="[기타]">기타</option>
					</select>
					<button type="button" class="btn btn-primary p-2 px-4">
						<i class='fas fa-search'
							style='font-size: 20px; text-align: center'></i>
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-11 ml-5 pt-3">
			<table class="table table-hover" id="questions">
				<thead>
					<tr style="background-color: #DCDCDC;">
						<th scope="col" class="text-center" style="width: 10%"></th>
						<th scope="col" class="text-center" style="width: 20%">분류</th>
						<th scope="col" class="text-center" style="width: 80%">질문</th>
					</tr>
				</thead>
				<tbody id="contentGroup">
					<c:forEach var="item" items="${faqList}" varStatus="loop">
						<c:if test="${item.r<=5}" var="best5">
							<tr class="best5 clickable" role="button" data-toggle="collapse" id="tab${item.no}" data-target="#content${item.no}" aria-expanded="true"
							aria-controls="content${item.no}">
							<td class="text-center">${item.r}</td>
							<td class="text-center">${item.category}</td>
							<td class="col pl-3">${item.title}</td>
						</tr>
						<tr>
							<td id="nospace" colspan="2"></td>
							<td id="nospace">
								<div id="content${item.no}" class="collapse" data-parent="#contentGroup" style="align-content: center;">
									<p class="py-3">${item.content}</p>
								</div>
							</td>
						</tr>
						</c:if>
						<c:if test="${not best5}">
							<tr class="clickable" role="button" data-toggle="collapse" id="tab${item.no}" data-target="#content${item.no}" aria-expanded="true"
								aria-controls="content${item.no}">
								<td class="text-center">${item.r}</td>
								<td class="text-center">${item.category}</td>
								<td class="col pl-3">${item.title}</td>
							</tr>
							<tr>
								<td id="nospace" colspan="2"></td>
								<td id="nospace">
									<div id="content${item.no}" class="collapse" data-parent="#contentGroup" style="align-content: center;">
										<p class="py-3">${item.content}</p>
									</div>
								</td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 아코디언 완료 -->
	<%-- 
	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<c:if test="${auth eq '[ROLE_ADMIN]'}">
					<button type="button" class="btn btn-info p-2 px-4" id="faq_write">FAQ 작성</button>
					<!-- <button type="button" class="btn btn-info p-2 px-4" id="faq_edit">FAQ 수정</button>
					<button type="button" class="btn btn-info p-2 px-4" id="faq_delete">FAQ 삭제</button> -->
				</c:if>
			</div>
		</div>
	</div>	
	 --%>
	<!-- 페이지네이션 시작 -->	 
	<div class="row">
		<div class="col-md-12 text-center">${faqPagingString}</div>
	</div>	
	<!--
	<div class="row">
		<div class="col">
			<nav class="d-flex justify-content-center mt-3">
				<ul class="pagination pagination-circle pg-blue">
					<li class="page-item"><a class="page-link" href="#">◀</a></li>
					<li class="page-item"><a class="page-link" href="#"
						tabindex="-1">＜</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">＞</a></li>
					<li class="page-item"><a class="page-link" href="#">▶</a></li>
				</ul>
			</nav>
		</div>
	</div> --><!-- 페이지네이션 끝 -->
</div>

 
<script>
$(function(){
	
	$('#faq_write').click(function(){
		location.href="FAQWrite.do";
	});
});
</script>

