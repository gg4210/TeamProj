

$(function() {
					//사이드바 관련 자바 스크립트.
	var sidebarIndex = $('a').click(function() {
		switch(sidebarIndex.index(this)){
			case 1://search 버튼 클릭
			    $("#side_SearchBar").fadeToggle("3000");
				break;
			case 2://마이페이지 클릭
				$("#loginMenu").fadeToggle("3000");
				break;
			case 3:
				break;
			
			default: break;
		}
	
	});
	
	$("#closelogin").click(function(){
		$("#loginMenu").fadeOut("3000");
	});
	
});
