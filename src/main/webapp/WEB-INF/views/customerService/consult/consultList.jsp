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
	<!-- <br/> -->
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover pt-5 text-center">
				<thead>
					<tr>
						<th scope="col" style="width:10%">글번호</th>
						<th scope="col" style="width:20%">카테고리</th>
						<th scope="col" style="width:50%">제목</th>
						<th scope="col" style="width:10%">등록일</th>
						<th scope="col" style="width:10%">답변현황</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${auth}" var="item_auth">
	

					<c:if test='${empty consultList}' var="isEmpty">
						<tr>
							<td colspan="4" class="text-center">등록된 게시물이 없습니다.</td>
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
									<td>미답변</td><!-- 수정처리 필요 -->
								</tr>
							</c:forEach>
						</c:if>
						</c:forEach>
					<!-- 
					<tr>
						<td class="text-center">9</td>
						<td class="text-center">게시판 이용 관련</td>
						<td><a href="<c:url value='/customerService/consult/consultView.do'/>">로그인 했는데 글을 쓸수가 없어요. 댓글은 되는데</a></td>
						<td class="text-center">2019-10-03</td>
						<td class="text-center">답변완료</td>
					</tr>
					 -->
				</tbody>			
			</table>			
		</div><!-- col-md-12 -->
	</div><!-- row 끝 -->
	
		<!-- 검색창 -->
			<div class="form-inline d-flex justify-content-center mt-3">
				<select name="searchColumn" class="form-control custom-select mr-2">
					<option value="title">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
				<input type="text" class="form-control" placeholder="Search">
				<button class="btn blue-gradient p-2 px-4">검색</button>
			</div>
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
		<div class="col-md-12 text-center">${consultPagingString}</div>
	</div>
</div>		
