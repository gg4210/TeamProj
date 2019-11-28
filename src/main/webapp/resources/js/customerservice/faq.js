/* function tofaqa() = location.href="/workout/member/customerServiceMain.do#pills-faq-tab"; */

function tofaq(pa){
	$('#pills-faq-tab').tab('show');
	$("#content"+selector).addClass('show');
}
/*
function tofaq(pa){
	console.log("여기는 .js 입니다.");
	console.log(pa);
	// $('#pick').click(function(){
	 		//var link = $(this).attr('href');////console.log('link:',link);=> link :  /workout/customerServiceMain.do#pills-notice-tab
	 		//var sactiveTab = link.substring(link.indexOf("#"));////내가 +1지움 그래서 .tab('show')에서 선택자 앞에 # 안 더해줌.
	 		//console.log('link : ',link);
	 		//console.log('sactiveTab : ',sactiveTab);
	 		//$('#serviceLinks a').removeClass("active");
	 		//$(this).addClass("active");
	 		//$(sactiveTab).tab('show');
			//console.log("들어오나?");	 
	// }
	
	//location.href="/workout/member/customerServiceMain.do#pills-faq-tab";
	 $('#pills-faq-tab').tab('show');
	 picker(pa);
} 

function picker(selector){
	console.log("같은 페이지에 있으면 되나?");
	console.log(selector);
	//$( 'h1' ).addClass( 'abc' );
	$("#content"+selector).addClass('show');
//	 $('#content'+selector).click(function(){
//		   console.log($(this));
//		   console.log($(this).prop('href'));
//	      var link = $(this).attr('href');
//	      var sactiveTab = link.substring(link.indexOf("#") + 1);
//	      console.log(link);
//	      console.log(sactiveTab);
//	      $('#customerLinks a').removeClass("active");
//	      $(this).addClass("active");
//	      $('#'+sactiveTab).tab('show');
//	   });
}
*/