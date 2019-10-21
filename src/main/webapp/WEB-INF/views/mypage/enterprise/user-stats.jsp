<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<canvas id="myChart"></canvas>
		</div>
		<div class="col-md-6">
			<table>
				<thead>
					
				</thead>
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
