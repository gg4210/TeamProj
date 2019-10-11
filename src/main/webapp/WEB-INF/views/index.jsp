<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.content{
		margin-left:50px;
		margin-top:0px;
		margin-right:0px;
		margin-bottom:0px;
	}
	
	.section{
	text-align: center;
	}
	
</style>

	<div id="fullpage">
	    <div class="section">Section 1</div>
	    <div class="section">Section 2</div>
	    <div class="section">Section 3</div>
	</div>


<script>
var myFullpage = new fullpage('#fullpage', {
    anchors: ['firstPage', 'secondPage', '3rdPage'],
    sectionsColor: ['#C63D0F', '#1BBC9B', '#7E8F7C'],
    navigation: true,
    navigationPosition: 'right',
    navigationTooltips: ['첫번째 페이지', '두번째 페이지', '세번째 페이지'],
});
</script>