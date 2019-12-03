<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authentication property="principal.username" var="id"/>
<sec:authentication property="principal.authorities" var="auth"/>

<style>
#page-header {
	font-style: inherit;
}

th, td {
	border-bottom: 1px solid #D8D8D8;
}

td:nth-child(1) {
	width:30px;
}

td:nth-child(2) {
	width:100px;
}


nav > ul a {
	width:35px;
}

</style>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row pt-2">
		<h3>문의내역 확인</h3>
	</div>
	
	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<form class="form-inline" method="post" action="<c:url value='/member/consultList.do'/>">
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
			<table class="table table-hover pt-5 text-center">
				<thead>
					<tr>
						<th scope="col" style="width:10%">글번호</th>
						<th scope="col" style="width:15%">카테고리</th>
						<c:if test="${auth eq '[ROLE_ADMIN]'}">
							<th scope="col" style="width:10%">작성자</th>
						</c:if>
						<th scope="col">제목</th>
						<th scope="col" style="width:10%">등록일</th>
						<th scope="col" style="width:10%">답변현황</th>
						
					</tr>
				</thead>
				<tbody>
					<c:if test="${auth eq '[ROLE_USER]' || auth eq '[ROLE_CENTER]'}">
						<c:if test='${empty consultList}' var="isEmpty">
							<tr>
								<td colspan="5" class="text-center">등록된 게시물이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not isEmpty}">						
							<c:forEach var="item" items="${consultList}" varStatus="loop">	
								<tr>
									<td>${item.r}</td>
									<td>${item.category}</td>
									<td class="text-left">
										<%-- <a href="<c:url value='consultView.do?no=${item.no}&${item_auth}'/>">${item.title}</a></td> --%>
										<a href="<c:url value='consultView.do?no=${item.no}'/>">${item.title}</a></td>
										<!-- member/noticeView.do?no= : 패턴0에서 에러 / -->
										<!-- noticeView.do?no= : 패턴0에서 정상작동 / -->
									<td>${item.postDate}</td>
									<td><c:if test="${item.reply != null}" var="reply">답변완료</c:if><c:if test="${not reply}">미답변</c:if></td><!-- 수정처리 필요 -->
								</tr>
							</c:forEach>
						</c:if>
					</c:if>
					<c:if test="${auth eq '[ROLE_ADMIN]'}"><!-- 아이디나 이름 더 보여주는 쿼리 처리할 것. -->
						<c:if test='${empty adminConsultList}' var="isEmpty">
							<tr>
								<td colspan="6" class="text-center">등록된 게시물이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not isEmpty}">						
							<c:forEach var="item" items="${adminConsultList}" varStatus="loop">	
								<tr>
									<td>${item.r}</td>
									<td>${item.category}</td>
									<td>${item.id}</td>
									<td class="text-left">
										<%-- <a href="<c:url value='consultView.do?no=${item.no}&${item_auth}'/>">${item.title}</a></td> --%>
										<a href="<c:url value='/admin/consultView.do?no=${item.no}'/>">${item.title}</a></td>
									<td>${item.postDate}</td>
									<td><c:if test="${item.reply != null}" var="reply">답변완료</c:if><c:if test="${not reply}">미답변</c:if></td><!-- 수정처리 필요 -->
								</tr>
							</c:forEach>
						</c:if>
					</c:if>
				</tbody>			
			</table>			
		</div><!-- col-md-12 -->
	</div><!-- row 끝 -->
	
		<!-- 검색창 -->
		<!-- 
			<div class="form-inline d-flex justify-content-center mt-3">
				<select name="searchColumn" class="form-control custom-select mr-2">
					<option value="title">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
				<input type="text" class="form-control" placeholder="Search">
				<button class="btn blue-gradient p-2 px-4">검색</button>
			</div>
			 -->
		<!-- 검색창 끝 -->		

	<!-- 페이지네이션 시작 -->
	<!-- 
	<div class="row">
		<div class="col">
			<nav class="d-flex justify-content-center mt-3">
				<ul class="pagination pagination-circle pg-blue">
					<li class="page-item"><a class="page-link" href="#">◀</a></li>
					<li class="page-item"><a class="page-link" href="#" tabindex="-1">＜</a></li>
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
	</div> -->
	<!-- 페이지네이션 끝 -->	
	<!-- 페이징 -->
	<div class="row">
		<c:if test="${auth eq '[ROLE_USER]' || auth eq '[ROLE_CENTER]'}">
			<div class="col-md-12 text-center">${consultPagingString}</div>
		</c:if>
		<c:if test="${auth eq '[ROLE_ADMIN]'}">
			<div class="col-md-12 text-center">${adminConsultPagingString}</div>
		</c:if>
	</div>
</div>		
