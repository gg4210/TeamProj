<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    <style>
    .month{
    	display: none;
    }
    .quarter{
    	display: none;
    }
    .year{
    	display: none;
    }
    
    
    </style>
    -->
    
<div class="container-fluid">

	<!-- 페이지 헤더 -->
	<div class="page-header mb-4" style="border-bottom: 1px solid #D8D8D8">
			<h2>회원 관리</h2>
	</div>
	<!-- 페이지 헤더 끝 -->
	
	<div class="row">

		<!-- col-1 시작-->
		<div class="col-md-7">
			<div class="card">
				<div class="card-body">
					<h2 class="card-title">회원수 추이</h2>
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
								<div class="month">
									<canvas id="monthLineChart"></canvas>
								</div>
								<div class="quarter">
									<canvas id="quarterLineChart"></canvas>
								</div>
								<div class="year">
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
		<div class="col-md-5">
			<div class="card">
				<div class="card-body">
					<h2 class="card-title">회원관리</h2>
					<hr/>
					<!-- 회원 등록,삭제 버튼 -->
					<div class="clearfix">
						<div class="float-right">
							<button type="submit" class="btn btn-info px-3" id="ok">등록</button>
							<button type="submit" class="btn btn-danger px-3" id="delete">삭제</button>		
							<button type="submit" class="btn btn-info px-3" id="update">수정</button>		
						</div>
					</div>
					<!-- 회원 등록,삭제 버튼 -->
					<!-- 테이블 시작 -->
						<table class="table">
							<thead class="bg-primary white-text">
								<tr>
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
									<th scope="row">5</th>
									<td>김집에</td>
									<td>KIM*</td>
									<td>여</td>
									<td>27</td>
									<td>2019.10.23 ~ 2020.10.22</td>
								</tr>
								<tr>
									<th scope="row">4</th>
									<td>박가고</td>
									<td>PAR*</td>
									<td>남</td>
									<td>45</td>
									<td>2019.10.23 ~ 2020.01.22</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>김고객</td>
									<td>KIM*</td>
									<td>남</td>
									<td>30</td>
									<td>2019.10.20 ~ 2020.01.19</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>최고객</td>
									<td>CHO*</td>
									<td>여</td>
									<td>23</td>
									<td>2019.10.15 ~ 2020.11.14</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>이고객</td>
									<td>LEE*</td>
									<td>여</td>
									<td>25</td>
									<td>2019.09.30 ~ 2020.12.29</td>
								</tr>
							</tbody>
						</table>
						<!-- 테이블 끝 -->
					
				</div>
			</div>
		</div>
		<!-- col-2 끝 -->
		
	</div>
	<!-- row 끝 -->
</div>
<!-- container-fluid 끝 -->


<script>


$(function(){
	$('.month').show();	
	$('.quarter').hide();
	$('.year').hide();
	
	$('select').on('change',function(){
		var select = $('select option:selected').val();
		if(select=='option2'){
			$('.month').hide();	
			$('.quarter').show();
			$('.year').hide();
		}
		else if(select=='option3'){
			$('.month').hide();	
			$('.quarter').hide();
			$('.year').show();
		}
		else{
			$('.month').show();	
			$('.quarter').hide();
			$('.year').hide();
		}
	});


//line
var ctxL = document.getElementById("monthLineChart").getContext('2d');
var myLineChart = new Chart(ctxL, {
type: 'line',
data: {
labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월",
	"8월","9월","10월","11월","12월"],
datasets: [{
label: "월별 회원 증감 추이",
data: [85,100,120,130,110,99,90,120,140,190,185,200],
backgroundColor: [
'rgba(0, 137, 132, .2)',
],
borderColor: [
'rgba(0, 10, 130, .7)',
],
borderWidth: 2
}]
},
options: {
responsive: true
}
});


//line
var ctxL = document.getElementById("quarterLineChart").getContext('2d');
var myLineChart = new Chart(ctxL, {
type: 'line',
data: {
labels: ["1분기", "2분기", "3분기", "4분기"],
datasets: [{
label: "분기별 평균 회원 증감 추이",
data: [73,113,116,191],
backgroundColor: [
'rgba(134, 178, 249, .1)',
],
borderColor: [
'rgba(22, 107, 243, 1)',
],
borderWidth: 1
}]
},
options: {
responsive: true
}
});

//line
var ctxL = document.getElementById("yearLineChart").getContext('2d');
var myLineChart = new Chart(ctxL, {
type: 'line',
data: {
labels: ["2015","2016", "2017", "2018", "2019"],
datasets: [{
label: "년도별 회원 증감 추이",
data: [200,250,200,300,350],
backgroundColor: [
	'rgba(153, 102, 255, 0.2)',
	],
	borderColor: [
	'rgba(153, 102, 255, 1)',
	],
	borderWidth: 1
	}]
	},
	options: {
	responsive: true
	}
	});



//bar
var ctxB = document.getElementById("memberBarChart").getContext('2d');
var myBarChart = new Chart(ctxB, {
type: 'bar',
data: {
labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월",
		"8월","9월","10월","11월","12월"],
datasets: [{
label: '월별 신규 회원',
data: [10,15,18,20,21,14,10,30,35,20,40,12],
backgroundColor: [
'rgba(255, 99, 132, 0.2)',
'rgba(54, 162, 235, 0.2)',
'rgba(255, 206, 86, 0.2)',
'rgba(75, 192, 192, 0.2)',
'rgba(153, 102, 255, 0.2)',
'rgba(255, 159, 64, 0.2)',
'rgba(255, 99, 132, 0.2)',
'rgba(54, 162, 235, 0.2)',
'rgba(255, 206, 86, 0.2)',
'rgba(75, 192, 192, 0.2)',
'rgba(153, 102, 255, 0.2)',
'rgba(255, 159, 64, 0.2)'
],
borderColor: [
'rgba(255,99,132,1)',
'rgba(54, 162, 235, 1)',
'rgba(255, 206, 86, 1)',
'rgba(75, 192, 192, 1)',
'rgba(153, 102, 255, 1)',
'rgba(255, 159, 64, 1)',
'rgba(255,99,132,1)',
'rgba(54, 162, 235, 1)',
'rgba(255, 206, 86, 1)',
'rgba(75, 192, 192, 1)',
'rgba(153, 102, 255, 1)',
'rgba(255, 159, 64, 1)'
],
borderWidth: 1
}]
},
options: {
scales: {
yAxes: [{
ticks: {
beginAtZero: true
}
}]
}
}
});

});




</script>