

$(function() {
					//사이드바 관련 자바 스크립트.
	var sidebarIndex = $('a').click(function() {
		switch(sidebarIndex.index(this)){
			case 1://search 버튼 클릭
			    $(".jumbotron").fadeToggle("3000");
				break;
			case 2://마이페이지 클릭
				
				break;
			default: break;
		}
		
	});
});
