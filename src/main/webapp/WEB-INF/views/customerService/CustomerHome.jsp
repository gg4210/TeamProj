<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col">
			<div class="page-header">
				<h3>고객센터 홈</h3>
				<hr />
			</div>
		</div>
	</div>

	<div class="card">
		<div class="card-body">
			<div class="row"  style="background-color: red">
				<div class="col-md-offset-1 col-md-5">
					<h4>자주 묻는 질문 BEST 5</h4>
				</div>
				<div class="col-md-offset-3 col-md-3"  style="background-color: yellow">
					<button>+ 더 보기</button>
				</div>
			</div>
		<!-- <div class="card-text"> -->
				 		
				<div class="row"> 
					<!-- 테이블 시작 -->
					<div class="col">
						<!-- <div class="col-md-12"> -->
						<table class="table table-hover">
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center" style="width:20%">[카테고리1]</td>
									<td class="text-center">가장 많이 하는 질문</td>
								</tr>
								<tr>
									<td class="text-center">2</td>
									<td class="text-center">[카테고리2]</td>
									<td class="text-center">두 번째로 많이 하는 질문</td>
								</tr>
								<tr>
									<td class="text-center">3</td>
									<td class="text-center">[카테고리2]</td>
									<td class="text-center">세 번째로 많이 하는 질문</td>
								</tr>
								<tr>
									<td class="text-center">4</td>
									<td class="text-center">[카테고리2]</td>
									<td class="text-center">네 번째로 많이 하는 질문</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<td class="text-center">[카테고리2]</td>
									<td class="text-center">다섯 번째로 많이 하는 질문</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 테이블 끝 -->
			</div>
			<!-- card-text 끝 -->
		</div>
		<!-- card-body 끝 -->
	</div>
	<!-- 자주 묻는 질문 card 끝 -->

	<div class="row">
		<div class="col-md-4 pt-5">
			<div class="card">
				<div class="card-body">
					<h3 class="card-title">운동해!偕 고객센터</h3>
					<p class="card-text" style="font-size: 1.5em">
						<i class="fas fa-phone"></i> 02)5959-5959
					</p>
					<h3 class="card-title">
						<a>고객센터 운영시간</a>
					</h3>
					<p class="card-text" style="font-size: 1.5em;">9:30~18:30</p>
				</div>
			</div>
			<!-- 연락 card 끝 -->
		</div>
		<div class="col-md-8 pt-3">
			<div class="card">
				<div class="card-body">
					<!-- pb-0 -->
					<div class="row card-title">
						<!-- <div class="row">card-title로 바꿔야 할지도. -->
						<h3>공지사항</h3>
						<button>+ 더 보기</button>
						<hr />
						<!-- 적용 안될지도? -->
					</div>
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
				</div>
			</div>
		</div>
	</div>


<!-- container -->