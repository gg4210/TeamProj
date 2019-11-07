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
	
	
})
