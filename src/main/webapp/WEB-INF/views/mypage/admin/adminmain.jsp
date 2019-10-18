<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">

	<!-- row 시작 -->
	<div class="row">
	
	<!-- col-md-6 시작 -->
	<div class="col-md-6">
	   <button class="btn btn-block" type="button" data-toggle="collapse" data-target="#siteUser"
	    aria-expanded="false" aria-controls="collapseExample">
	    <h2 class="text-left">
	    <span class="fa-stack">	    
	    	<i class="fas fa-circle fa-stack-2x"></i>	    	
	    	<i class="far fa-address-book fa-stack-1x fa-inverse"></i>
	    </span>
	    	 총 회원수 : 2명</h2>
	  </button>
	  <!-- Collapsible element -->
		<div class="collapse" id="siteUser">
		  <div class="card card-body">
			<p><i class=""></i> 기업회원 : </p>
			<p><i class=""></i> 일반회원 : </p>			
		  </div>
		</div>
		<!-- / Collapsible element -->  
	</div>
	<!-- col-md-6 끝-->
	
	<!-- col-md-6 시작 -->
	<div class="col-md-6">
	
		<button class="btn btn-block" type="button" data-toggle="collapse" data-target="#siteBoard"
		    aria-expanded="false" aria-controls="collapseExample">
		    <h2 class="text-left">
		    <span class="fa-stack">
		    	<i class="fas fa-circle fa-stack-2x"></i>
		    	<i class="fas fa-chalkboard fa-stack-1x fa-inverse"></i>
		    </span>
		     게시글 수 : 232개</h2>
		</button>
		<div class="collapse" id="siteBoard">
			<div class="card">
				<div class="card-body">
					<p>지난주에 비하면 적어요.</p>
				</div>
			</div>
		</div>
		
	</div>
	<!-- col-md-6 끝-->
	</div>
	<!-- row1 끝 -->
	
</div>