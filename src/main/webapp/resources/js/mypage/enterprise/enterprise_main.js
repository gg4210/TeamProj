$(function(){


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
	
	$('#makeQRCode').click(function(){
		url="makeQRCode.do";
		$('#img').attr("src",url);
		console.log("여기는 js파일인데 들어왔니?")
	})
	
})
