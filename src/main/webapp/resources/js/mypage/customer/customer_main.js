$(function(){
	//등록한 센터 삭제
	$('#center_delete').click(function(){
		$('#centerDeleteCheck').modal('show');
	});
	
	//찜한 센터 삭제
	$('#like_delete').click(function(){
		$('#likeCenterDeleteCheck').modal('show');
	});
	
	//메이트 삭제
	$('#mate_delete').click(function(){
		$('#mateDeleteCheck').modal('show');
	});
	
	//쪽지 삭제
	$('#msg_delete').click(function(){
		$('#msgDeleteCheck').modal('show');
	});
		
	
	
});