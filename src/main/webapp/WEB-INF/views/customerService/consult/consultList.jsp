<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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


<div class="container">
	<div class="page-header pt-2">
		<h2>1:1문의 내역</h2>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover" style="margin-top:50px;">
				<thead>
					<tr>
						<th scope="col" class="text-center" style="width:15%">글번호</th>
						<th scope="col" class="text-center" style="width:15%">카테고리</th>
						<th scope="col" class="text-center" style="width:50%">제목</th>
						<th scope="col" class="text-center" style="width:10%">등록일</th>
						<th scope="col" class="text-center" style="width:10%">답변현황</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">10</td>
						<td class="text-center">헬스장 관련</td>
						<td>헬스장 신청은 어떻게 하면 좋을까요?</td>
						<td class="text-center">2019-10-05</td>
						<td class="text-center">미답변</td>
					</tr>
					<tr>
						<td class="text-center">9</td>
						<td class="text-center">게시판 이용 관련</td>
						<td><a href="<c:url value='/customerService/consult/consultView.do'/>">로그인 했는데 글을 쓸수가 없어요. 댓글은 되는데</a></td>
						<td class="text-center">2019-10-03</td>
						<td class="text-center">답변완료</td>
					</tr>
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
	</div>
	<!-- 페이지네이션 끝 -->
</div>		
