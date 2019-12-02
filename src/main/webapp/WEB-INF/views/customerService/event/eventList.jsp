<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authentication property="principal.username" var="id"/>
<sec:authentication property="principal.authorities" var="auth"/>

<%-- <c:forEach items="${auth}" var="item"/> --%>

<!-- 실제 내용 시작 -->
<div class="container" id="herejqueryajax">
	<div class="row pt-2">
		<h3>이벤트</h3>
		<div class="col clearfix">
			<div class="float-right">
				<c:if test="${auth eq '[ROLE_ADMIN]'}">
					<button type="button" class="btn btn-info p-2 px-3" id="event_write">
						<i class="fas fa-pencil-alt"></i> 이벤트작성
					</button>
				</c:if>
			</div>
		</div>
	</div>	

	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<form class="form-inline" method="post" action="<c:url value='/member/eventList.do'/>">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<div class="form-group">
						<select class="browser-default custom-select form-control" name="searchColumn">
							<option selected disabled>검색조건</option>
							<option value="category">카테고리</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<div class="form-group px-1">
							<input type="text" name="searchWord" class="form-control" />
						</div>
						<button type="submit" class="btn btn-primary p-2 px-4">
							<i class='fas fa-search' style='font-size: 20px; text-align: center'></i>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th scope="col" class="text-center" style="width: 10%">글번호</th>
						<th scope="col" class="text-center" style="width: 15%">카테고리</th>
						<th scope="col" class="text-center" style="width: 65%">제목</th>
						<th scope="col" class="text-center" style="width: 10%">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty eventList}" var="isEmpty">
						<tr>
							<td colspan="4" class="text-center">등록된 게시물이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not isEmpty}">
						<c:forEach var="item" items="${eventList}" varStatus="loop">
							<tr>
								<td>${item.r}</td>
								<td>${item.category}</td>
								<td class="text-left"><a href="<c:url value='/member/eventView.do?no=${item.no}&nowPage='/><c:out value='${param.nowPage}' default='1'/>">${item.title}</a></td>
<%-- 								<td class="text-left"><a href="<c:url value='/customerService/event/eventView.do?no=${item.no}'/>">${item.title}</a></td> --%>
								<td>${item.postDate}</td>
							</tr>
						</c:forEach>
						</c:if>
				</tbody>
			</table>
		</div>  <!-- col-md-12 -->
	</div>
	<!-- 
	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<c:if test="${auth eq '[ROLE_ADMIN]'}">
					<button type="button" class="btn btn-info p-2 px-4" id="event_write">이벤트 작성</button>
				</c:if>
			</div>
		</div>
	</div>
 	-->
	<!-- 페이지네이션 시작 -->
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
	</div> -->  <!-- 페이지네이션 끝 -->	
	<!-- 페이징 -->
	<div class="row">
		<div class="col-md-12 text-center">${eventPagingString}</div>
	</div>
</div>

<script>
	$(function(){
				
		$('#event_write').click(function(){
			location.href="eventWrite.do";
		});
		
	});
</script>
