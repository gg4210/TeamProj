<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="row">
		<div class="col">
			<div class="page-header">
				<h3><strong>고객센터 홈</strong></h3>
				<hr />
			</div>
		</div>
	</div>

	<div class="card">
		<div class="card-body">

			<div class="row">
				<div class="col-md-6 pb-2">
					<h4>자주 묻는 질문 BEST 5</h4>
				</div>
				<div class="col-md-2 offset-md-4">
					<button type="button" class="btn btn-primary" id="FAQ">+ 더 보기</button>
				</div>
			</div>

			<!-- 테이블 시작 -->
			<div class="row mt-2">
				<div class="col">
					<table class="table table-hover">
						<tbody>
							<tr>
								<td class="text-center">1</td>
								<td class="text-center" style="width: 20%">[카테고리1]</td>
								<td>가장 많이 하는 질문</td>
							</tr>
							<tr>
								<td class="text-center">2</td>
								<td class="text-center">[카테고리2]</td>
								<td>두 번째로 많이 하는 질문</td>
							</tr>
							<tr>
								<td class="text-center">3</td>
								<td class="text-center">[카테고리2]</td>
								<td>세 번째로 많이 하는 질문</td>
							</tr>
							<tr>
								<td class="text-center">4</td>
								<td class="text-center">[카테고리2]</td>
								<td>네 번째로 많이 하는 질문</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<td class="text-center">[카테고리2]</td>
								<td>다섯 번째로 많이 하는 질문</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 테이블 끝 -->
		</div> <!-- card-body 끝 -->
	</div> <!-- 위쪽 카드(자주 묻는 질문 5) 끝 -->


	<div class="row">
		<div class="col-md-4 pt-4">
			<div class="card">
				<div class="card-body">
					<h3 class="card-title" style="text-align: center"><br/>운동해(偕)! 고객센터<br/></h3>
					<p class="card-text" style="font-size: 1.5em;text-align: center"><i class="fas fa-phone"></i>02)5959-5959<br/>
					</p>
					<h3 class="card-title" style="text-align: center"><br/>고객센터 운영시간<br/></h3>
					<p class="card-text" style="font-size: 1.5em;text-align: center">9:30~18:30<br/><br/></p>
				</div>
			</div>		
		</div>
		<!-- 연락처 card 끝 -->
		
		<!-- 공지사항 시작 -->
		<div class="col-md-8 pt-3">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="clearfix col">
							<h4>공지사항</h4>
						</div>
						<div class="float-right pr-2">
							<button type="button" class="btn btn-primary" id="notice">+ 더 보기</button>
						</div>
					</div>
					<!-- 공지사항 카드 안 첫 row 끝 -->
					
					<div class="card-text">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col" class="text-center" style="width: 15%">글번호</th>
									<th scope="col" class="text-center" style="width: 15%">카테고리</th>
									<th scope="col" class="text-center" style="width: 50%">제목</th>
									<th scope="col" class="text-center" style="width: 15%">등록일</th>
								</tr>
							</thead>
							<tbody>
								<c:if test='${empty noticeList}' var="isEmpty">
									<tr>
										<td colspan="4" class="text-center">등록된 게시물이 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${not isEmpty}">						
									<c:forEach var="item" items="${noticeList}" varStatus="loop">	
										<tr>
											<td>${item.rownum}</td><!-- ROWNUM으로 바꿔줘야 함. -->
											<td>${item.category}</td>
											<td class="text-left">
												<a href="<c:url value='/customerService/notice/noticeView.do?no=${item.no}'/>">${item.title}</a></td>
												<!-- <a href="<c:url value='/OneMemo/BBS/View.bbs?no=${item.no}&nowPage='/><c:out value='${param.nowPage}' default='1'/>">${item.title }</a> -->
											<td>${item.postDate}</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div><!-- card-body 끝 -->
			</div>
		</div>
	</div>
</div>  <!-- container -->

<script>
$(function(){
	$('#FAQ').click(function(){
		$('#pills-faq-tab').tab('show');
	});
	
	$('#notice').click(function(){
		$('#pills-notice-tab').tab('show');
	});
	
});
</script>

