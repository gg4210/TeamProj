<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.content{
	margin:0px;
	}
	section {
	height:100vh;
	}
</style>

	<div id="fullpage">
	    <div class="section">Section 1</div>
	    <div class="section">Section 2</div>
	    <div class="section">Section 3</div>
	</div>


<script>
new fullpage('#fullpage', {
    navigation: true,
    navigationPosition: 'right',
    responsiveWidth: 700,
    sectionsColor: ['#C63D0F', '#1BBC9B', '#7E8F7C'],
    navigationTooltips: ['첫번째 페이지', '두번째 페이지', '세번째 페이지'],
    anchors: ['home', 'about-us', 'contact'],
    parallax: true,
    onLeave: function(origin, destination, direction){
        console.log("Leaving section" + origin.index);
    },
});
</script>