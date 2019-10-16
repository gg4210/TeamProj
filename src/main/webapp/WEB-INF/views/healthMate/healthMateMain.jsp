<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/healthMate/healthMateMain.css'/>" />


  <!-- Page Content -->
  <div class="container-fluid">
  
    <!-- Jumbotron Header -->
    <header class="jumbotron">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
	
	<div class="text-right mb-2">
	<button type="button" class="btn btn-primary" id="write">Write</button>
	</div>

	<!-- Page Features -->
<div class="row text-center">

		<div class="col-lg-3 col-md-6 col mb-4">
			<div class="card h-100">
				<div class="card-image-container">
					<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text" id="text-modal">추가하기</div>
					</div>
				</div>

				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<button button type="submit" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col mb-4">
			<div class="card h-100">
				<div class="card-image-container">
					<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text">추가하기</div>
					</div>
				</div>

				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<button button type="submit" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col mb-4">
			<div class="card h-100">
				<div class="card-image-container">
					<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text" id="text-modal">추가하기</div>
					</div>
				</div>

				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<button button type="submit" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 col mb-4">
			<div class="card h-100">
				<div class="card-image-container">
					<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text">추가하기</div>
					</div>
				</div>

				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<button button type="submit" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>
		
		<!-- 페이징, 검색창 시작 -->
		<div class="row mx-auto">
			<div class="text-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination pg-blue justify-content-center">
						<li class="page-item "><a class="page-link" tabindex="-1">Previous</a>
						</li>
						<li class="page-item"><a class="page-link">1</a></li>
						<li class="page-item"><a class="page-link">2</a></li>
						<li class="page-item"><a class="page-link">3</a></li>
						<li class="page-item "><a class="page-link">Next</a></li>
					</ul>
				</nav>
				<form class="form-inline" method="#" action="#">
					<div class="form-group">
						<select name="searchColumn" class="form-control">
							<option value="title">제목</option>
							<option value="name">작성자</option>
							<option value="content">내용</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="searchWord" class="form-control" placeholder="Search" />
					</div>
					<button button type="submit" class="btn btn-primary">search</button>
				</form>
			</div>
		</div>
		<!-- 페이징, 검색창 끝 -->

		</div>
		<!-- /.row -->

		<!-- 추가하기 모달 시작 -->
		<div class="modal fade" id="plus-modal" data-backdrop="static">
			<div class="modal-dialog modal-sm modal-dialog-centered">
				<div class="modal-content">
	
					<div class="modal-body">
						<button class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
						<h2>Plus Mate</h2>
						<p>
							임시모달<br/>임시 모달<br/>임시 모달
						</p>
						<button class="btn btn-outline-primary">추가</button>
						<button class="btn btn-outline-danger" data-dismiss="modal">취소</button>	
					
					</div>
				</div>
			</div>
		</div>
		<!-- 모달 끝 -->

		<!-- write 모달 시작 -->
		<!--
		<div class="modal fade" id="write-modal" data-backdrop="static">
			<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
	
				<div class="modal-content">
					<div class="modal-header text-center">
						<h4 class="modal-title w-100 font-weight-bold">함께 운동할 메이트를 직접 찾아보세요!</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body mx-3">
				
				<div class="md-form mb-5">
					<select class="browser-default custom-select">
						<option selected>Open this select menu</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
					</div>
					<div class="md-form mb-5">
					<select class="browser-default custom-select">
						<option selected>Open this select menu</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
					</div>
					<div class="md-form mb-5">
							<i class="prefix grey-text"></i>
							<input type="text" id="orangeForm-name" class="form-control validate">
							<label data-error="wrong" data-success="right" for="orangeForm-name">title</label>
						</div>
						</form>
						<div class="md-form mb-5">
							<i class="prefix grey-text"></i>
							<input type="email" id="orangeForm-email" class="form-control validate">
							<label data-error="wrong" data-success="right" for="orangeForm-email">지역</label>
						</div>
						<div class="md-form mb-5">
							<i class="prefix grey-text"></i>
							<input type="email" id="orangeForm-email" class="form-control validate">
							<label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
						</div>
						<div class="md-form mb-4">
							<i class="prefix grey-text"></i>
							<input type="password" id="orangeForm-pass" class="form-control validate">
							<label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
						</div>
					</div>
					<div class="modal-footer d-flex justify-content-center">
						<button class="btn btn-primary">Sign up</button>
					</div>
				</div>
			</div>
		</div>
		 -->
		<!-- write 모달 끝 -->
		
		
		
	


</div>
<!-- /.container -->

<script>
$(function(){
	
	$('.text').click(function(){
		$('#plus-modal').modal('show');
	});
	$('#write').click(function(){
		location.href="healthMateWrite.do";
	});
});
</script>


