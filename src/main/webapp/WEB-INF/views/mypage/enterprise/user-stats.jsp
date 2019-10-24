<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mypage/enterprise/user-stats.css'/>" />

    
<div class="container-fluid">

	<!-- 페이지 헤더 -->
	<div class="page-header mb-4" style="border-bottom: 1px solid #D8D8D8;">
			<h2 style="font-weight: bold;">회원 관리</h2>
	</div>
	<!-- 페이지 헤더 끝 -->
	
	<div class="row">

		<!-- col-1 시작-->
		<div class="col-md-6">
			<div class="card">
				<div class="card-body">
					<h2 class="card-title" style="font-weight: bold;">회원 증감 추이</h2>
					<hr/>
					<!-- 기업용 네비게이션 바 -->
					<div>
						<nav>
						<div class="nav nav-tabs" id="user_tab" role="tablist">
						  <a class="nav-item nav-link active" id="nav_lineChart" data-toggle="tab" href="#user_lineChart" role="tab" aria-controls="nav-home" aria-selected="true">회원 증감률</a>
						  <a class="nav-item nav-link" id="nav_barChart" data-toggle="tab" href="#user_barChart" role="tab" aria-controls="nav_barChart" aria-selected="false">신규회원 증감률</a>
						</div>
						</nav>
						<div class="tab-content" id="user_tabContent">
						  <div class="member tab-pane fade show active" id="user_lineChart" role="tabpanel" aria-labelledby="nav_lineChart">
						  
								<!-- 셀렉트 박스 시작 -->
									<div class="clearfix">
										<div class="float-right">
											<select class="browser-default custom-select mt-3" id="member">
													<option value="option1" selected="selected">월별</option>
													<option value="option2">분기별</option>
													<option value="option3">년별</option>
											</select>
										</div>
									</div>
									<!-- 셀렉트 박스 끝 -->
								
									<!-- 차트 시작 -->	
									<div class="month mb-4">
										<canvas id="monthLineChart"></canvas>
									</div>
									<div class="quarter mb-4">
										<canvas id="quarterLineChart"></canvas>
									</div>
									<div class="year mb-4">
										<canvas id="yearLineChart"></canvas>
									</div>
									<!-- 차트 끝 -->	

							</div>
						  <div class="tab-pane fade" id="user_barChart" role="tabpanel" aria-labelledby="nav_barChart">
						  	<canvas id="memberBarChart"></canvas>
						  </div>
						</div>
						</div>
						<!-- 기업용 네비게이션 바 끝-->
				</div>
			</div>
		</div>
		<!-- col-1 끝 -->
		
		<!-- col-2  시작-->
		<div class="col-md-6">
			<div class="card">
				<div class="card-body">
					<h2 class="card-title" style="font-weight: bold;">회원 상세 관리</h2>
					<hr/>
						<!-- 회원 등록,삭제 버튼 -->
							<div class="clearfix">
								<div class="float-right">
									<button type="submit" class="btn btn-info px-3" id="ok">회원등록</button>
									<button type="submit" class="btn btn-default px-3" id="update">정보수정</button>	
									<button type="submit" class="btn btn-danger px-3" id="delete">회원삭제</button>			
								</div>
							</div>
					<!-- 회원 등록,삭제 버튼 -->
					<!-- 테이블 시작 -->
						<table class="table" style="text-align: center;">
							<thead class="bg-primary white-text">
								<tr>
									<th scope="col">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="CheckAll">
										<label class="custom-control-label" for="CheckAll"></label>
									</div>
									</th>
									<th scope="col">NO</th>
									<th scope="col">이름</th>
									<th scope="col">아이디</th>
									<th scope="col">성별</th>
									<th scope="col">나이</th>
									<th scope="col">일자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check10">
										<label class="custom-control-label" for="Check10"></label>
									</div>
									</th>
									<td>10</td>
									<td>나아는</td>
									<td>NAA*</td>
									<td>여</td>
									<td>27</td>
									<td>2019.10.24 ~ 2020.09.23</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check9">
										<label class="custom-control-label" for="Check9"></label>
									</div>
									</th>
									<td>9</td>
									<td>김집에</td>
									<td>KIM*</td>
									<td>여</td>
									<td>27</td>
									<td>2019.10.23 ~ 2020.10.22</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check8">
										<label class="custom-control-label" for="Check8"></label>
									</div>
									</th>
									<td>8</td>
									<td>박가고</td>
									<td>PAR*</td>
									<td>남</td>
									<td>45</td>
									<td>2019.10.23 ~ 2020.01.22</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check7">
										<label class="custom-control-label" for="Check7"></label>
									</div>
									</th>
									<td>7</td>
									<td>김고객</td>
									<td>KIM*</td>
									<td>남</td>
									<td>30</td>
									<td>2019.10.20 ~ 2020.01.19</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check6">
										<label class="custom-control-label" for="Check6"></label>
									</div>
									</th>
									<td>6</td>
									<td>최고객</td>
									<td>CHO*</td>
									<td>여</td>
									<td>23</td>
									<td>2019.10.15 ~ 2020.11.14</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check5">
										<label class="custom-control-label" for="Check5"></label>
									</div>
									</th>
									<td>5</td>
									<td>이고객</td>
									<td>LEE*</td>
									<td>여</td>
									<td>25</td>
									<td>2019.09.30 ~ 2020.12.29</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check4">
										<label class="custom-control-label" for="Check4"></label>
									</div>
									</th>
									<td>4</td>
									<td>김집에</td>
									<td>KIM*</td>
									<td>여</td>
									<td>27</td>
									<td>2019.10.23 ~ 2020.10.22</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check3">
										<label class="custom-control-label" for="Check3"></label>
									</div>
									</th>
									<td>3</td>
									<td>김집에</td>
									<td>KIM*</td>
									<td>여</td>
									<td>27</td>
									<td>2019.10.23 ~ 2020.10.22</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check2">
										<label class="custom-control-label" for="Check2"></label>
									</div>
									</th>
									<td>2</td>
									<td>김집에</td>
									<td>KIM*</td>
									<td>여</td>
									<td>27</td>
									<td>2019.10.23 ~ 2020.10.22</td>
								</tr>
								<tr>
									<th scope="row">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="Check1">
										<label class="custom-control-label" for="Check1"></label>
									</div>
									</th>
									<td>1</td>
									<td>김집에</td>
									<td>KIM*</td>
									<td>여</td>
									<td>27</td>
									<td>2019.10.23 ~ 2020.10.22</td>
								</tr>
							</tbody>
						</table>
						<!-- 테이블 끝 -->	
				</div>
				
				<!-- 페이징 시작 -->
				<div class="row justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination pg-blue">
							<li class="page-item"><a class="page-link">Previous</a></li>
							<li class="page-item"><a class="page-link">1</a></li>
							<li class="page-item"><a class="page-link">2</a></li>
							<li class="page-item"><a class="page-link">3</a></li>
							<li class="page-item"><a class="page-link">Next</a></li>
						</ul>
					</nav>
				</div>
				<!-- 페이징 끝 -->
			</div>
		</div>
		<!-- col-2 끝 -->
		
	</div>
	<!-- row 끝 -->
</div>
<!-- container-fluid 끝 -->


<script src="<c:url value="/resources/js/mypage/enterprise/user-stats.js"/>"></script>
