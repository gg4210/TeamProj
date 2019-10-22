<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<canvas id="myChart"></canvas>
		</div>
		<div class="col-md-6">
			<table class="table table-hover">
				<thead class="black white-text">
					<tr>
						<th scope="row" width="5%">
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id="allmembers">
							    <label class="custom-control-label" for="health1"></label>
							</div>
						</th>
						<th scope="row" width="15%" style="text-align:center;">이름</th>
						<th scope="row" width="15%" style="text-align:center;">성별</th>
						<th scope="row" width="25%" style="text-align:center;">전화번호</th>
						<th scope="row" width="40%" style="text-align:center;">등록기간</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id=" 0  ">
							    <label class="custom-control-label" for="health1"></label>
							</div>
						</td>
						<td style="text-align:center;">김길동</td>
						<td style="text-align:center;">남</td>
						<td style="text-align:center;">010-1234-5678</td>
						<td style="text-align:center;">2018-03-05 ~ 2019-10-31</td>
					</tr>
					<tr>
						<td>
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id="allmembers">
							    <label class="custom-control-label" for="health1"></label>
							</div>
						</td>
						<td style="text-align:center;">나길동</td>
						<td style="text-align:center;">여</td>
						<td style="text-align:center;">010-3444-5555</td>
						<td style="text-align:center;">2019-09-05 ~ 2019-11-20</td>
					</tr>
					<tr>
						<td>
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id="allmembers">
							    <label class="custom-control-label" for="health1"></label>
							</div>
						</td>
						<td style="text-align:center;">김길동</td>
						<td style="text-align:center;">남</td>
						<td style="text-align:center;">010-1234-5678</td>
						<td style="text-align:center;">2018-03-05 ~ 2019-10-31</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<script>
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
type: 'bar',
data: {
	labels: ["6월", "7월", "8월", "9월"],
	datasets: [{
		label:'월별 회원 수',
		data: [50, 52, 49, 55],
		backgroundColor: [
			'rgba(255, 99, 132, 0.2)',
			'rgba(54, 162, 235, 0.2)',
			'rgba(255, 206, 86, 0.2)',
			'rgba(75, 192, 192, 0.2)'
		],
		borderColor: [
			'rgba(255,99,132,1)',
			'rgba(54, 162, 235, 1)',
			'rgba(255, 206, 86, 1)',
			'rgba(75, 192, 192, 1)'
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
