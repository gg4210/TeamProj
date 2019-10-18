$(function(){
	
	$('.text').click(function(){
		$('#plus-modal').modal('show');
	});
	$('#write').click(function(){
		location.href="healthMateWrite.do";
	});
	
	$('.detail').click(function(){
		$('#detail-modal').modal('show');
	});
});