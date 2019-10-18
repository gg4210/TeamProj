<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/healthMate/healthMateMain.css'/>" />
<title>HealthMate Main</title>

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
					<h4 class="title">TITLE</h4>
					<div class="row justify-content-center">
						<div class="mr-3">
							<h6 style="font-weight: bold;">#태그</h6>
						</div>
						<div class="mr-3">
							<h6 style="font-weight: bold;">#태그</h6>
						</div>
						<div>
							<h6 style="font-weight: bold;">#태그</h6>
						</div>
					</div>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<button button type="submit" class="detail btn btn-info">상세보기</button>
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
					<button button type="submit" class="detail btn btn-info">상세보기</button>
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
					<button button type="submit" class="detail btn btn-info">상세보기</button>
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
					<button button type="submit" class="detail btn btn-info">상세보기</button>
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
					<div class="p-1 px-3form-group">
						<select name="searchColumn" class="form-control">
							<option value="title">제목</option>
							<option value="name">작성자</option>
							<option value="content">내용</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="searchWord" class="form-control" placeholder="Search" />
					</div>
					<button button type="submit" class="p-2 px-3 btn btn-primary">search</button>
				</form>
			</div>
		</div>
		<!-- 페이징, 검색창 끝 -->

		</div>
		<!-- /.row -->


		<!-- PLUS MATE 모달 시작 -->
		<div class="modal fade" id="plus-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-info modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading">PLUS MATE</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row">
							<div class="col-5">
								<img src="http://placehold.it/500x325" class="img-fluid" alt="">
							</div>
							<div class="col-7">
								<p>
									<strong>healthaMate 추가하기</strong>
								</p>
								<p>'아이디'님을<br/>추가하시겠습니까?</p>
								<button type="button" class="btn btn-info btn-md">추가하기</button>
								<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
							</div>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- PLUS MATE 모달 끝 -->
		
		
		<!-- 상세보기 모달 시작 -->
		<div class="modal fade" id="detail-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-lg modal-notify modal-primary modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading">Title</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row">
							<div class="col-5">
								<img src="http://placehold.it/500x325" class="img-fluid" alt="">
							</div>
							<div class="col-7">
								<p>
									<strong>[지역]</strong> 지역
								</p>
								<p>
									<strong>[관심종목]</strong> 관심종목
								</p>
								<p>
									<strong>[운동시간]</strong> 시간협의
								</p>
								<p>
									<strong>[대표 태그]</strong> #여자 #20대 #다이어트
								</p>
								<p>
									<strong>[글 내용]</strong>
								</p>
								<p>함께 운동해요</br>함께 운동해요</br>함께 운동해요</br>함께 운동해요</br>함께 운동해요</br></p>
							</div>
						</div>
						<div class="row justify-content-center">
							<button type="button" class="btn btn-info btn-md">추가하기</button>
							<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 상세보기 모달 끝 -->
		


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
	
	$('.detail').click(function(){
		$('#detail-modal').modal('show');
	});
});
</script>


