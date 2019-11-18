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
	
	$('#mateUpdate').click(function(){
		console.log("들어오긴 하니")
		location.href="healthMateWrite.do";
	});
});