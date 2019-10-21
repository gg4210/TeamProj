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
							<h3 class="text-left font-weight-bold">
								<span class="fa-stack"> <i
									class="far fa-circle fa-stack-2x text-white"></i> <i
									class="far fa-address-book fa-stack-1x text-white"></i>
								</span> <span class="text-white">총 회원수 : 3명</span>
							</h3>
					</button>
				</div>

				<div id="user" class="collapse" aria-labelledby="heading1"
					data-parent="#accordion1">
					<div class="card-body">
						<p class="h5 py-3">
							<i class="fas fa-angle-right indigo-text"></i>&nbsp&nbsp<i
								class="fas fa-building"></i>&nbsp&nbsp기업회원 : 2명
						</p>
						<p class="h5 py-3">
							<i class="fas fa-angle-right indigo-text"></i>&nbsp<i
								class="fas fa-users"></i>&nbsp일반회원 : 1명
						</p>
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
							aria-controls="collapseOne">
							<h3 class="text-left font-weight-bold">
								<span class="fa-stack"> <i
									class="far fa-circle fa-stack-2x text-white"></i> <i
									class="fas fa-chalkboard fa-stack-1x text-white"></i>
								</span> <span class="text-white">게시글 수 : 232개</span>
							</h3>
						</button>
				</div>
				<div id="board" class="collapse" aria-labelledby="board" data-parent="#accordion2">
				<div class="card-body">
					<p>지난주 대비 </p>
					<canvas id="myChart" style="max-width: 500px;" class="mx-auto"></canvas>
				</div>
			</div>
		</div>
	</div>
	<!-- col 2 끝 -->
	</div>
	<!-- row1 끝 -->
	
	<div class="row mt-3">
		
		<div class="col-md-8">
			<div class="card card-body">
				<h3 class="card-title font-weight-bold"><i class="fas fa-angle-right indigo-text"></i>&nbsp&nbsp접속자 추이</h3>
				<hr/>
							
			</div>
		</div>
		<div class="col-md-4">
			<div class="card card-body">
				<h3 class="card-title font-weight-bold"><i class="fas fa-angle-right indigo-text"></i>&nbsp&nbsp문의 내역 </h3>
				<hr/>
				<table>
					<thead>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- row -->
	
</div>
<!-- container -->


<script>
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
type: 'bar',
data: {
labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
datasets: [{
label: '# of Votes',
data: [12, 19, 3, 5, 2, 3],
backgroundColor: [
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
</script>