function tofaq(selector){
	$('#pills-faq-tab').tab('show');
	$('div[class="collapse show"]').removeClass("show");
	$("#content"+selector).addClass('show');
}
