<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>


    <div class="container">
    
	    <div class="jumbotron">
	    	<div class="container">
	    		<h1>게시판 </h1>
	    	</div>
	    </div>
    	
    	<div class="row">
    		<div class="col clearfix">
    			<div class="float-right">
    				<div class="btn-group" role="group" aria-label="Basic example" style="float: left;">
					  <button type="button" class="btn btn-primary">최신순</button>
					  <button type="button" class="btn btn-primary">추천순</button>
					  <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						      태그</button>
						<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
							<a class="dropdown-item" href="#">헬스</a>
							<a class="dropdown-item" href="#">수영</a>
							<a class="dropdown-item" href="#">요가</a>
							<a class="dropdown-item" href="#">런닝</a>
						</div>
						
  					</div>
  					<a href="#" class="btn btn-success" data-toggle="modal" data-target="#modalWriteForm" style="clear: both;margin-left: 1px;">글쓰기</a>
					
    		    	
    		    	
    		    </div>
    		</div>
    	</div>
    	
    	<!-- 게시판 시작 -->
    	
    	<!-- row 1 시작 -->
    	<div class="row mt-2">	
	    	<div class="card col">
			  <div class="row no-gutters">
			  
			    <div class="col-md-6 mt-4">
					<img src="https://infinitejoynow.ca/wp-content/uploads/2018/06/ZenFest-cause-you-are-worth-it--900x500.jpg" class="img-fluid rounded-lg border"/>			    
				</div>
				
			    <div class="col-md-6">
			      <div class="card-body">
			      
			      	<div class="row mb-2">
			      		<div class="col">
				      		<div class="card">
				    			<div class="card-body mr-3">
				    				<h3 class="card-title font-weight-bold mt-2"><a href="<c:url value='/member/bbsView.do?nowPage=&no='/>">마음이 안정되는</a></h3>
				    				<hr>
				    				<p class="mb-0"><span class="badge badge-primary">글쓴이</span>&nbsp김길동</p>
				    			</div>
				      		</div>
			      		</div>
			      	</div>
			      	
			      	<div class="row">
			      		<div class="col">
				      		<div class="card">
		    				<div class="card-body mr-3">
		    					<p>내면의 평화를 위해</p>
		    					<p>수련중입니다.</p>
		    					<p>요가 사랑합니다</p>	    					
		    					<i class="fas fa-hashtag"></i>&nbsp<span class="badge badge-pill badge-primary"># 요가</span>
		    				</div>
		    				<div class="card-footer">
		    					<i class="far fa-heart"></i>&nbsp2 &nbsp&nbsp<i class="far fa-comment-dots"></i> 12 
	    					</div>
		    				</div>
	    				</div>
	    			</div>
	    			
			      </div>
			    </div><!-- col-md-6 -->
			    
			  </div>
			</div>
		</div>
		<!-- row 1 끝 -->
		
		<!-- row 2 시작 -->
    	<div class="row mt-2">	
	    	<div class="card col">
			  <div class="row no-gutters">
			  
			    <div class="col-md-6 mt-4">
					<img src="https://dgalywyr863hv.cloudfront.net/pictures/clubs/251378/5534586/7/large.jpg" class="img-fluid rounded-lg border"/>			    
				</div>
				
			    <div class="col-md-6">
			      <div class="card-body">
			      
			      	<div class="row mb-2">
			      		<div class="col">
				      		<div class="card">
				    			<div class="card-body mr-3">
				    				<h3 class="card-title font-weight-bold mt-2"><a href="<c:url value='/member/bbsView.do?nowPage=&no='/>">런닝중</a></h3>
				    				<hr>
				    				<p class="mb-0"><span class="badge badge-primary">글쓴이</span>&nbsp조길동</p>
				    			</div>
				      		</div>
			      		</div>
			      	</div>
			      	
			      	<div class="row">
			      		<div class="col">
				      		<div class="card">
		    				<div class="card-body mr-3">
		    					<p>가족 달리기 중!</p>
		    					<p>제 딸 넘모 잘 달리죠?</p>
		    					<p>이번 주말에도 열운중입니다</p>    					
		    					<i class="fas fa-hashtag"></i>&nbsp<span class="badge badge-pill badge-primary"># 런닝</span>
		    				</div>
		    				<div class="card-footer">
		    					<i class="far fa-heart"></i>&nbsp2 &nbsp&nbsp<i class="far fa-comment-dots"></i> 12
		    				</div>
		    				</div>
	    				</div>
	    			</div>
	    			
			      </div>
			    </div><!-- col-md-6 -->
			    
			  </div>
			</div>
		</div>
		<!-- row 2 끝 -->	
		
		<!-- 게시판 끝 -->
	
    </div>
    <!-- container -->
    
        
    
    <!-- 게시글 등록을 위한 modal div -->

	<div class="modal fade" id="modalWriteForm" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h4 class="modal-title w-100 font-weight-bold">등록하기</h4>
				</div>
				<form class="needs-validation" method="post"
					action="<c:url value='/bbs/write.do?nowPage=${nowPage }'/>" novalidate>
					<div class="modal-body">
						<div class="form-group">
							<label data-error="wrong" data-success="right" for="title"><i
								class="fas fa-tag prefix"></i> 제목</label> <input type="text"
								id="title" name="title" class="form-control" required>
							<div class="invalid-feedback">제목을 입력하세요</div>
						</div>
						<div class="form-group">
							<label data-error="wrong" data-success="right" for="content"><i
								class="fas fa-pencil-alt prefix"></i> 내용</label>
							<textarea type="text" id="summernote" name="content" class="textarea form-control"
								rows="8" required></textarea>
							<div class="invalid-feedback">내용을 입력하세요</div>
						</div>
						<div class="form-group">
							<label data-error="wrong" data-success="right" for="title"><i
								class="fas fa-hashtag"></i> 태그</label> <input type="text"
								id="title" name="title" class="form-control" required>
							<div class="invalid-feedback">제목을 입력하세요</div>
						</div>
					</div>
					<div class="modal-footer d-flex justify-content-center">
						<button type="submit" class="btn btn-info">
							<i class="far fa-check-circle"></i> 등록
						</button>
						<button class="btn btn-info" data-dismiss="modal">
							<i class="far fa-times-circle"></i> 취소
						</button>
					</div>

				</form>
				
			</div>
		</div>
	</div>

<script>
	$('#summernote').summernote({
		tabsize: 2,
		height: 300
	});
</script>