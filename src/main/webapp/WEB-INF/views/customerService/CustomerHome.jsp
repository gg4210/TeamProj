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
								<tr>
									<td class="text-center">3</td>
									<td class="text-center">카테고리3</td>
									<td>가장 최근에 등록된 공지사항 입니다.</td>
									<td class="text-center">2019-10-22</td>
								</tr>
								<tr>
									<td class="text-center">2</td>
									<td class="text-center">카테고리2</td>
									<td>두번째로 최근에 등록된 공지사항입니다.</td>
									<td class="text-center">2019-10-22</td>
								</tr>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center">카테고리1</td>
									<td>최근 공지사항 중 가장 오래된 공지사항입니다.</td>
									<td class="text-center">2019-10-22</td>
								</tr>
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

