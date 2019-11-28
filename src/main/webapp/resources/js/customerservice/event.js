function toEventList(){
	console.log("들어는 왔습니다.");
	location.href="/workout/member/customerServiceMain.do#pills-noticeNevent-tab";
	$('#pills-notice').removeClass("active");
	$('#pills-event').addClass('active');
	//되기는 하는데 다른 곳에서 정해놓은 durl의 영향을 먼저 받네...
}