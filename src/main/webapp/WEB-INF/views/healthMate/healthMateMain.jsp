<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>HealthMate Main</title>

  <!-- Page Content -->
  <div class="container-fluid">
  
    <!-- Jumbotron Header -->
    <header class="jumbotron">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
	
	<div class="text-right mb-2">
	<button type="button" class="btn btn-primary" id="write">글쓰기</button>
	</div>

	<!-- Page Features -->
	<div class="row text-center">
	<!-- card 1 시작 -->
	<div class="col-lg-3 col-md-6">
			<div class="card h-100">
				<h2 class="card-title m-0 p-2 mdb-color darken-3" style="color: white">TITLE</h2>
				<div class="card-image-container p-3">
					<img class="card-img-top" src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F9909CB415A87C79932" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text px-3" id="text-modal">추가하기</div>
					</div>
				</div>
				<div class="card-body p-0">
				<div class="row justify-content-center">
					<div class="row tag pb-3">
							<div class="mr-3">
							<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div class="mr-3">
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div>
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
					</div>
				</div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-search-location"></i>지역: 어딘가</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-heart"></i>관심 종목: 기타</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="far fa-clock"></i>운동시간: 협의</strong></div>
					<div class="row justify-content-center pb-3"><strong><i class="far fa-calendar-plus"></i>일자: 협의</strong></div>
				</div>
					
				<div class="card-footer">
					<button button type="submit" class="detail btn btn-info px-3">상세보기</button>
				</div>
			</div>
		</div>
		<!-- card 1 끝 -->

	<!-- card 2 시작 -->
	<div class="col-lg-3 col-md-6">
			<div class="card h-100">
				<h2 class="card-title m-0 p-2 mdb-color darken-3" style="color: white">TITLE</h2>
				<div class="card-image-container p-3">
					<img class="card-img-top" src="https://i.pinimg.com/originals/05/23/7d/05237daed52cbcc8a09cc659fefd055a.jpg" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text px-3" id="text-modal">추가하기</div>
					</div>
				</div>
				<div class="card-body p-0">
				<div class="row justify-content-center">
					<div class="row tag pb-3">
							<div class="mr-3">
							<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div class="mr-3">
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div>
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
					</div>
				</div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-search-location"></i>지역: 어딘가</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-heart"></i>관심 종목: 기타</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="far fa-clock"></i>운동시간: 협의</strong></div>
					<div class="row justify-content-center pb-3"><strong><i class="far fa-calendar-plus"></i>일자: 협의</strong></div>
				</div>
					
				<div class="card-footer">
					<button button type="submit" class="detail btn btn-info px-3">상세보기</button>
				</div>
			</div>
		</div>
		<!-- card 2 끝 -->

	<!-- card 3 시작 -->
	<div class="col-lg-3 col-md-6">
			<div class="card h-100">
				<h2 class="card-title m-0 p-2 mdb-color darken-3" style="color: white">TITLE</h2>
				<div class="card-image-container p-3">
					<img class="card-img-top" src="http://file3.instiz.net/data/cached_img/upload/2019/01/12/2/bac13a8318021766d23e4baffb8b2da9.jpg" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text px-3" id="text-modal">추가하기</div>
					</div>
				</div>
				<div class="card-body p-0">
				<div class="row justify-content-center">
					<div class="row tag pb-3">
							<div class="mr-3">
							<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div class="mr-3">
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div>
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
					</div>
				</div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-search-location"></i>지역: 어딘가</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-heart"></i>관심 종목: 기타</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="far fa-clock"></i>운동시간: 협의</strong></div>
					<div class="row justify-content-center pb-3"><strong><i class="far fa-calendar-plus"></i>일자: 협의</strong></div>
				</div>
					
				<div class="card-footer">
					<button button type="submit" class="detail btn btn-info px-3">상세보기</button>
				</div>
			</div>
		</div>
		<!-- card 3 끝 -->
		
		<!-- card 4 시작 -->
		<div class="col-lg-3 col-md-6">
			<div class="card h-100">
				<h2 class="card-title m-0 p-2 mdb-color darken-3" style="color: white">TITLE</h2>
				<div class="card-image-container p-3">
					<img class="card-img-top" src="http://file3.instiz.net/data/cached_img/upload/2018/10/09/19/f5b3efe432a7408a6621560452a46278.jpg" alt="" style="width: 100%">
					<div class="card-img-middle">
						<div class="text px-3" id="text-modal">추가하기</div>
					</div>
				</div>
				<div class="card-body p-0">
				<div class="row justify-content-center">
					<div class="row tag pb-3">
							<div class="mr-3">
							<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div class="mr-3">
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
							<div>
								<h5><span class="badge badge-pill badge-default">#태그</span></h5>
							</div>
					</div>
				</div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-search-location"></i>지역: 어딘가</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-heart"></i>관심 종목: 기타</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="far fa-clock"></i>운동시간: 협의</strong></div>
					<div class="row justify-content-center pb-3"><strong><i class="far fa-calendar-plus"></i>일자: 협의</strong></div>
				</div>
					
				<div class="card-footer">
					<button button type="submit" class="detail btn btn-info px-3">상세보기</button>
				</div>
			</div>
		</div>
		<!-- card 4 끝 -->
		
		
		<!--
		<div class="col-lg-3 col-md-6 col-mb-4">
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
		</div> -->
		
		
		<!-- 페이징, 검색창 시작 -->
		<div class="row mx-auto pt-4">
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
					<button button type="submit" class="p-2 px-3 btn btn-primary">검색</button>
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


