<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<<<<<<< HEAD
<style>
	.content{
	margin:0px;
	}
	section {
	height:100vh;
	}
</style>
=======
>>>>>>> branch 'master' of https://github.com/gg4210/TeamProj.git

	<div id="fullpage">
		<!-- section 1 시작 -->
	    <div class="section">
		    <img src="<c:url value='/resources/images/main2.png'/>" class="float-right img-fluid d-none d-md-block" style="height:100%"/>
		    <div class="container-fluid">
		    	
		    	<div class="row">
		    		<div class="col m-5">
		    			<blockquote class="blockquote bq-primary">
		    			  <h1 class="font-weight-bold text-left indigo-text display-2">title</h1>
						  <p class="mb-0 text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
						</blockquote>
		    		</div>
		    	</div>
		    	
		    	<div class="row">
		    	</div>
		    </div>
	    </div>
	    <!-- section 1 끝! -->
	    
	    <div class="section">Section 2</div>
	    <div class="section">Section 3</div>
	</div>
<<<<<<< HEAD


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
=======

>>>>>>> branch 'master' of https://github.com/gg4210/TeamProj.git
