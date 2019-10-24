//셀렉트박스 선택 시, 차트 보이기 숨기기 기능
$(function(){
	$('.month').show();	
	$('.quarter').hide();
	$('.year').hide();
	
	$('select[id="member"]').on('change',function(){
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


//line(monthLineChart)
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


//line(quarterLineChart)
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

//line(yearLineChart)
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



//bar(memberBarChart)
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
