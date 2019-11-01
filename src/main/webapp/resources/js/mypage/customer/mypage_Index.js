$(function() {
	var durl = window.location.hash;
	if (durl !='') {
		$(durl).tab('show');
	}
	$('#customerLinks a').click(function(){
		var link = $(this).attr('href');
		var sactiveTab = link.substring(link.indexOf("#") + 1);
		console.log(sactiveTab);
		$('#customerLinks a').removeClass("active");
		$(this).addClass("active");
		$(".tab-pane fade").removeClass("show active");
		$(".tab-pane fade").removeClass("active show");
		$('a[href="#'+ sactiveTab +'"]').tab('show');
	});
	$('#mate_select').click(function(){
		$('#pills-mate-tab').tab('show');
	});
	$('#msg_plus').click(function(){
		$('#pills-mate-tab').tab('show');
	});
});