<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<!-- row1 시작 -->
	<div class="row">
		<div class="accordion col" id="accordion1">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading1">
					<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#user" aria-expanded="true"
							aria-controls="collapseOne">
							
							<div class="row">
								<div class="col-3 mr-3">
									<h4><span class="fa-stack"> <i
											class="far fa-circle fa-stack-2x text-white"></i> <i
											class="far fa-address-book fa-stack-1x text-white"></i>
									</span></h4>					
								</div>
								<div class="col">
									<div class="row">
										<h5 class="text-left font-weight-bold text-white">
											총 회원 수 : 3명
										</h5>
									</div>
									<div class="row">
										<p class="text-left text-white">
											<span class="badge badge-pill badge-danger"><i class="fas fa-arrow-down" aria-hidden="true"></i></span>
											어제보다 감소 추세입니다.
										</p>
									</div>
								</div>
							</div>

					</button>
				</div>

				<div id="user" class="collapse" aria-labelledby="heading1"
					data-parent="#accordion1">
					<div class="card-body">
						<p class="py-1">
							<i class="fas fa-angle-right indigo-text"></i>&nbsp&nbsp<i
								class="fas fa-building"></i>&nbsp&nbsp기업회원 : 2명
						</p>
						<p class="py-1">
							<i class="fas fa-angle-right indigo-text"></i>&nbsp<i
								class="fas fa-users"></i>&nbsp일반회원 : 1명
						</p>
						<canvas id="doughnutChart"></canvas>
						
					</div>
				</div>
			</div>
		</div>




		<!-- col 2 시작 -->
		<div class="accordion col" id="accordion2">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading2">
						<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#board" aria-expanded="true"
							aria-controls="collapseTwo">
							
							<div class="row">
							<div class="col-3 mr-3">
		
								<h4 class="text-left font-weight-bold">
									<span class="fa-stack"> <i
										class="far fa-circle fa-stack-2x text-white"></i> <i
										class="fas fa-chalkboard fa-stack-1x text-white"></i>
									</span>
								</h4>
							
							</div>
							<div class="col">
								<div class="row">
									<h5 class="text-left font-weight-bold text-white">
											게시글 수 : 232개
									</h5>
								</div>
								<div class="row">
									<p class="text-left text-white">
											<span class="badge badge-pill badge-success"><i class="fas fa-arrow-up" aria-hidden="true"></i></span>
											어제보다 증가추세입니다!
									</p>
								</div>
							</div>
							</div>
							
						</button>
				</div>
				<div id="board" class="collapse" aria-labelledby="board" data-parent="#accordion2">
				<div class="card-body">
					<p>지난주 대비 </p>
					<canvas id="barChart"></canvas>
				</div>
			</div>
		</div>
	</div>
	<!-- col 2 끝 -->
	</div>
	<!-- row1 끝 -->
	
	<!-- row2 시작 -->
	<div class="row mt-3">

		<div class="accordion col-md-8" id="accordion3">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading3">
					<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#connect" aria-expanded="true"
							aria-controls="collapseThree">

							<div class="row">
							<div class="col-3 mr-2">
		
								<h4 class="text-left font-weight-bold">
									<span class="fa-stack"> <i
										class="far fa-circle fa-stack-2x text-white"></i> <i
										class="fas fa-chalkboard fa-stack-1x text-white"></i>
									</span>
								</h4>
							
							</div>
							<div class="col">
								<div class="row">
									<h5 class="text-left font-weight-bold text-white">
											접속자 추이
									</h5>
								</div>
								<div class="row">
									<p class="text-left text-white">
										<span class="badge badge-pill badge-warning"><i class="fas fa-minus"></i></span>
										어제와 같거나 비슷한 수준입니다.
									</p>
								</div>
							</div>
							</div>	
							
					</button>
				</div>

				<div id="connect" class="collapse" aria-labelledby="connect"
					data-parent="#accordion3">
					<div class="card-body">
						<canvas id="lineChart"></canvas>
					</div>
				</div>
			</div>
		</div>




		<!-- col 2 시작 -->
		<div class="accordion col" id="accordion4">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading4">
						<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#info" aria-expanded="true"
							aria-controls="collapseFour">
							
							<div class="row">
							<div class="col-6">
		
								<h4 class="text-left font-weight-bold">
									<span class="fa-stack"> 
										<i class="far fa-circle fa-stack-2x text-white"></i> 
										<i class="fas fa-info-circle fa-stack-1x text-white"></i>
									</span>
								</h4>
							
							</div>
							<div class="col">
								<div class="row">
									<h5 class="text-left font-weight-bold text-white">
											고객센터
									</h5>
								</div>
								<div class="row">
									<p class="text-left text-white">
										<span class="badge badge-pill badge-primary">new</span> 3건
									</p>
								</div>
							</div>
							</div>
							
							
						</button>
				</div>
				<div id="info" class="collapse" aria-labelledby="board" data-parent="#accordion4">
				<div class="card-body">
					<table class="table table-hover">
						<thead class="bg-primary text-white">
						    <tr>
						      <th scope="col" width="80%">고객명</th>
						      <th scope="col"></th>
						    </tr>
					  	</thead>
				       	<tbody>
						    <tr>
						      <th scope="row">김고객</th>
						      <td class="text-right"><i class="fas fa-chevron-circle-right"></i></td>
						    </tr>
						    <tr>
						      <th scope="row">이고객</th>
						      <td class="text-right"><i class="fas fa-chevron-circle-right"></i></td>
						    </tr>
						    <tr>
						      <th scope="row">박고객</th>
						      <td class="text-right"><i class="fas fa-chevron-circle-right"></i></td>
						    </tr>
						</tbody>
				    </table>				
        		</div>
			</div>
		</div>
	</div>
	<!-- col 2 끝 -->
	</div>
	<!-- row2 끝 -->
	
</div>
<!-- container -->


<script>

//doughnut
var ctxD = document.getElementById("doughnutChart").getContext('2d');
var myLineChart = new Chart(ctxD, {
type: 'doughnut',
data: {
labels: ["일반회원", "기업회원"],
datasets: [{
data: [1,2],
backgroundColor: ["#F7464A", "#46BFBD"],
hoverBackgroundColor: ["#FF5A5E", "#5AD3D1"]
}]
},
options: {
responsive: true
}
});


//bar
var ctxB = document.getElementById("barChart").getContext('2d');
var myBarChart = new Chart(ctxB, {
type: 'bar',
data: {
labels: ["월", "화", "수", "목", "금", "토", "일"],
datasets: [{
label: '# of Votes',
data: [12, 19, 3, 5, 2, 3, 190],
backgroundColor: [
'rgba(255, 99, 132, 0.2)',
'rgba(54, 162, 235, 0.2)',
'rgba(255, 206, 86, 0.2)',
'rgba(75, 192, 192, 0.2)',
'rgba(153, 102, 255, 0.2)',
'rgba(255, 159, 64, 0.2)',
'rgba(10, 23, 82, 0.2)'
],
borderColor: [
'rgba(255,99,132,1)',
'rgba(54, 162, 235, 1)',
'rgba(255, 206, 86, 1)',
'rgba(75, 192, 192, 1)',
'rgba(153, 102, 255, 1)',
'rgba(255, 159, 64, 1)',
'rgba(10, 23, 82, 1)'
],
borderWidth: 1
}]
},
options: {
scales: {
yAxes: [{
ticks: {
beginAtZero:true
}
}]
}
}
});


//line
var ctxL = document.getElementById("lineChart").getContext('2d');
var myLineChart = new Chart(ctxL, {
type: 'line',
data: {
labels: ["월", "화", "수", "목", "금", "토", "일"],
datasets: [{
label: "접속자",
data: [1, 2, 5, 10, 20, 45, 44],
backgroundColor: [
'rgba(105, 0, 132, .2)',
],
borderColor: [
'rgba(200, 99, 132, .7)',
],
borderWidth: 2
}
]
},
options: {
responsive: true
}
});


</script>