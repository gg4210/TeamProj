$(function() {
	var durl = window.location.hash;
	console.log(durl);
	if (durl !='') {
		$(durl).tab('show');
	}
	$('#customerLinks a').click(function(){
		var link = $(this).attr('href');
		var sactiveTab = link.substring(link.indexOf("#") + 1);
		console.log(link);
		console.log(sactiveTab);
		$('#customerLinks a').removeClass("active");
		$(this).addClass("active");
		$('#'+sactiveTab).tab('show');
	});
	$('#mate_select').click(function(){
		$('#pills-mate-tab').tab('show');
	});
	$('#msg_plus').click(function(){
		$('#pills-mate-tab').tab('show');
	});
	
	//알림 테스트
	window.addEventListener('load', function () {
		Notification.requestPermission(function (status) {
			// This allows to use Notification.permission with Chrome/Safari
			if (Notification.permission !== status) {
				Notification.permission = status;
			}
		});
	});
});