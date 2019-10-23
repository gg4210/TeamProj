<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<style>
#first-main-img{
 position: absolute;
  right: 0px;
  top: 0px;
  z-index: -1;
}

</style>



	<div id="fullpage">
	
		<!-- section 1 시작 -->
	    <div class="section">
	    
		    <img src="<c:url value='/resources/images/main.png'/>" class="img-fluid d-none d-xl-block float-right" style="height:100%" id="first-main-img"/>		    	
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-8">
						<div class="card card-body">
						    <blockquote class="blockquote bq-primary m-5">
						    	<h1 class="font-weight-bold text-left indigo-text display-2">title</h1>
								<p class="mb-0 text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
							</blockquote>
							
						</div>		
					</div>
				</div>
			</div>

	    </div>
	    <!-- section 1 끝! -->
	    
	    <!-- section 2 시작 -->
	    <div class="section">
	    	<div class="container-fluid">
	    		<div class="card ">
	    		
	    		</div>
	    	</div>
	    </div>
	    <!-- section 2 끝 -->
	    <div class="section">Section 3</div>
	</div>


