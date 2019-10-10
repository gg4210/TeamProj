<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/healthMate/healthMateMain.css'/>" />


  <!-- Page Content -->
  <div class="container-fluid">
  
    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
	
	<div class="text-right mb-2">
	<button type="button" class="btn btn-primary" id="write" data-toggle="modal" data-target="#">Write</button>
	</div>

	<!-- Page Features -->
<div class="row text-center">

		<div class="col-lg-3 col-md-6 mb-4">
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
					<button button type="button" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
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
					<button button type="button" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
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
					<button button type="button" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
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
					<button button type="button" class="btn btn-info">상세보기</button>
				</div>
			</div>
		</div>
		
		<!-- 페이징, 검색창 시작 -->
		<div class="row mx-auto">
			<div class="text-center">
				<div class="btn-group" role="group" aria-label="First group">
					<button type="button" class="btn btn-info mr-1">1</button>
					<button type="button" class="btn btn-info mr-1">2</button>
					<button type="button" class="btn btn-info mr-1">3</button>
					<button type="button" class="btn btn-info mr-1">4</button>
					<button type="button" class="btn btn-info">5</button>
				</div>
				<form class="form-inline" method="#" action="#">
					<div class="form-group">
						<select name="searchColumn" class="form-control">
							<option value="title">제목</option>
							<option value="name">작성자</option>
							<option value="content">내용</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="searchWord" class="form-control"
							placeholder="Search" />
					</div>
					<button button type="button" class="btn btn-primary">search</button>
				</form>
			</div>
		</div>
		<!-- 페이징 끝 -->



		

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
					<h2>임시모달</h2>
					<p>
						임시 모달<br/>임시 모달<br/>임시 모달
					</p>
					<button class="btn btn-outline-primary">YES</button>
					<button class="btn btn-outline-danger">NO</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 끝 -->

	
	
	<div class="modal fade" id="write-modal" data-backdrop="static">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="orangeForm-name" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
        </div>
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="email" id="orangeForm-email" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
        </div>

        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="orangeForm-pass" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
        </div>

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-deep-orange">Sign up</button>
      </div>
    </div>
  </div>
</div>
	

</div>
<!-- /.container -->

<script>
$(function(){
	
	$('.text').click(function(){
		$('#plus-modal').modal('show');
	});
	
	$('#write').click(function(){
		$('#write-modal').modal('show');
	});
});
</script>


