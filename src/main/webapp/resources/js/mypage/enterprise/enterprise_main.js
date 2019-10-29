$(function(){
	//line
	var ctxL = document.getElementById("lineChart").getContext('2d');
	var myLineChart = new Chart(ctxL, {
	type: 'line',
	data: {
	labels: ["10월","11월","12월"],
	datasets: [{
	label: "회원 증감 추이",
	data: [185, 178, 200],
	backgroundColor: [
	'rgba(134, 178, 249, 1)',
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

	//평점
	var $stars;

	jQuery(document).ready(function ($) {

	  // Custom whitelist to allow for using HTML tags in popover content
	  var myDefaultWhiteList = $.fn.tooltip.Constructor.Default.whiteList
	  myDefaultWhiteList.textarea = [];
	  myDefaultWhiteList.button = [];

	  $stars = $('.rate-popover');
	  
	  function markStarsAsActive(index) {
	    unmarkActive();
	    for (var i = 0; i <= index; i++) {
	      $($stars.get(i)).addClass('amber-text');
	    }
	  }

	  function unmarkActive() {
	    $stars.removeClass('amber-text');
	  }
	  
	});

	
	
	
	
	
})
