<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.section{
 	background-image: url('<c:url value="/resources/images/1.png"/>');
	background-repeat:repeat;
	background-size: auto;
}

#notice, #event, #center, #todayTip, #recommendMate, #community, #title1, #title2, #title3{
	font-family: fantasy;
}

#withUs{
	font-family: fantasy;

}


</style>
<div id="fullpage">

	<!-- section 1 시작 -->
	<div class="section">
		<!--  <img src="<c:url value='/resources/images/main.png'/>" class="img-fluid d-none d-lg-none d-xl-block float-right" style="height:100%" id="first-main-img"/>-->
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-4">
					<img src="<c:url value='/resources/images/logo1.png'/>"
						class="img-fluid" />
				</div>
				<div class="p-0 col-xl-8 col-lg-12 col-md-12">
					<div class="card card-body z-depth-5" id="mainCard1">

						<div class="row mt-5 pt-5 pl-5" id="top_padding_margin">
							<div class="col-md-1">
								<i class="fas fa-quote-left fa-4x"></i>
							</div>
							<div class="col-md-7">
								<span
									class="font-weight-bold indigo-text text-center display-2 mb-2"
									id="title">운동해(偕)!</span>
							</div>
						</div>
						<div class="row pl-5 pt-5">
							<div class="col offset-1">
								<p class="h5" id="message">운동해(偕)!는 마음이 맞는 사람들과 다양한 운동을 함께할
									수 있도록 도움을 주는 플랫폼 서비스입니다.</p>
							</div>
						</div>


						<div class="row d-flex justify-content-center pt-5 mt-3 mx-4">
							<div class="col">
								<!-- 카드덱 -->
								<div class="card-deck">
									<!-- 카드1 -->
									<div class="card d-none d-md-block">
										<div class="card-body text-center">
											<p>
												<span class="fa-stack fa-4x"> <i
													class="fas fa-circle fa-stack-2x"></i> <i
													class="fas fa-user-friends fa-stack-1x fa-inverse"></i>
												</span>
											</p>
											<p
												class="card-title text-center indigo-text font-weight-bold h2" id="title1">TOGETHER</p>
											<hr />
											<p>당신과 함께할 수 있는</p>
											<p>운동메이트 수</p>
											<p class="h3 text-center font-weight-bold">${MateTotal}명!</p>
										</div>
									</div>
									<!-- 카드1 끝 -->
									<!-- 카드2 -->
									<div class="card d-none d-md-block">
										<div class="card-body text-center">
											<p>
												<span class="fa-stack fa-4x"> <i
													class="fas fa-circle fa-stack-2x"></i> <i
													class="fas fa-search fa-stack-1x fa-inverse"></i>
												</span>
											</p>
											<p
												class="card-title text-center indigo-text font-weight-bold h2" id="title2">SEARCH</p>
											<hr />
											<p>운동해와 함께하는</p>
											<p>스포츠센터 수</p>
											<p class="h3 text-center font-weight-bold">${RegiCenterTotal}곳!</p>
										</div>
									</div>
									<!-- 카드2 끝 -->
									<!-- 카드3 -->
									<div class="card d-none d-md-block">
										<div class="card-body text-center">
											<p>
												<span class="fa-stack fa-4x"> <i
													class="fas fa-circle fa-stack-2x"></i> <i
													class="fas fa-clipboard-list fa-stack-1x fa-inverse"></i>
												</span>
											</p>
											<h2
												class="card-title text-center indigo-text font-weight-bold h2" id="title3">COMMUNICATION</h2>
											<hr />
											<p>당신과 나눌 수 있는</p>
											<p>게시글의 수</p>
											<p class="h3 text-center font-weight-bold">00건!</p>
										</div>
									</div>
									<!-- 카드3끝 -->
								</div>
								<!-- 카드덱 끝 -->
							</div>
						</div>
						<!-- row -->

						<div class="row mt-5" id="join-row">
							<div class="col text-center">
								<p class="h4">
									<a href="<c:url value="/jointype.do"/>" id="withUs">TOGETHER WITH US</a>
								</p>
							</div>
						</div>

					</div>

				</div>
				<!-- p-0 col-xl-8 offset-xl-4 col-lg-12 col-md-12 -->
			</div>
			<!-- row -->
		</div>
		<!-- container-fluid -->

	</div>
	<!-- section 1 끝! -->

	<!-- section 2 시작 -->
	<div class="section">
		<div class="container-fluid">
			<div class="row">
				<div class="col p-0">
					<div class="card" id="mainCard2">
						<div class="card-body ">
							<div class="container-fluid">

								<div class="row pr-5" style="margin-right: 7%">
									<div class="col-md-6">
										<p class="h2" id="notice">NOTICE</p>
										<div class="card card-body">
											<table class="table text-center">
												<thead>
													<tr>
														<th scope="col">번호</th>
														<th scope="col">카테고리</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody>												
													<c:forEach var="item" items="${homeNoticeList}" varStatus="loop">
														<tr>
															<th scope="row">${item.r}</th>
															<td>${item.category}</td>
															<td class="text-left">
																<a href="<c:url value='/member/noticeView.do?no=${item.no}&nowPage='/><c:out value='${param.nowPage}' default='1'/>">${item.title}</td>
															<td>${item.postDate}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<div class="col-md-6">
										<p class="h2" id="event">EVENT</p>
										<div class="card card-body">
											<table class="table text-center">
												<thead>
													<tr>
														<th scope="col">번호</th>
														<th scope="col">제목</th>
														<th scope="col">등록일</th>
													</tr>
												</thead>
												<tbody class="text-center">
													<c:forEach var="item" items="${mainEventList}" varStatus="loop">
														<tr>
															<th scope="row">${item.r}</th>
															<td class="text-left">
																<a href="<c:url value='/member/noticeView.do?no=${item.no}&nowPage='/><c:out value='${param.nowPage}' default='1'/>">${item.title}</td>
															<td>${item.postDate}</td>
														</tr>
													</c:forEach>													
												</tbody>
											</table>

										</div>
									</div>
								</div>

								<div class="row mt-5" style="margin-left: 7%">
									<div class="col mt-3">
										<p class="h2" id="center">RECOMMEND CENTER</p>

										<!--Carousel Wrapper-->
										<div id="carousel-example-2"
											class="carousel slide carousel-fade" data-ride="carousel"
											style="height: 400px;">
											<!--Indicators-->
											<ol class="carousel-indicators">
												<li data-target="#carousel-example-2" data-slide-to="0"
													class="active"></li>
												<li data-target="#carousel-example-2" data-slide-to="1"></li>
												<li data-target="#carousel-example-2" data-slide-to="2"></li>
											</ol>
											<!--/.Indicators-->
											<!--Slides-->
											<div class="carousel-inner" role="listbox">
												<div class="carousel-item active">
													<div class="view">
														<img class="d-block w-100"
															src="https://www.lottehotel.com/content/dam/lotte-hotel/city/mapo/facilities/spa-fitness/180708-5-2000-fac-mapo-city.jpg.thumb.768.768.jpg"
															alt="First slide" height="400px">
														<div class="mask rgba-black-light"></div>
													</div>
													<div class="carousel-caption">
														<h3 class="h3-responsive">고투 스포츠센터</h3>
														<p>
															<i class="fas fa-heart"></i>&nbsp100 &nbsp&nbsp<i
																class="far fa-comment-dots"></i> 30
														</p>
													</div>
												</div>
												<div class="carousel-item">
													<!--Mask color-->
													<div class="view">
														<img class="d-block w-100"
															src="http://cdn.prestigegorilla.net/storage/editor/2018/12/a9a17040-f8f6-11e8-b8a2-19c614881e03.jpg"
															alt="Second slide" height="400px">
														<div class="mask rgba-black-strong"></div>
													</div>
													<div class="carousel-caption">
														<h3 class="h3-responsive">구로 스포츠센터</h3>
														<p>
															<i class="fas fa-heart"></i>&nbsp280 &nbsp&nbsp<i
																class="far fa-comment-dots"></i> 100
														</p>
													</div>
												</div>
												<div class="carousel-item">
													<!--Mask color-->
													<div class="view">
														<img class="d-block w-100"
															src="http://ms-housing.kr/data/file/commercial_gallery/31256570_1d4trXk6_bb1c05139a1f12061149e5d1d8ef6b209f1efb33.jpg"
															alt="Third slide" height="400px">
														<div class="mask rgba-black-slight"></div>
													</div>
													<div class="carousel-caption">
														<h3 class="h3-responsive">고투 짐</h3>
														<p>
															<i class="fas fa-heart"></i>&nbsp100 &nbsp&nbsp<i
																class="far fa-comment-dots"></i> 20
														</p>
													</div>
												</div>
											</div>
											<!--/.Slides-->
											<!--Controls-->
											<a class="carousel-control-prev" href="#carousel-example-2"
												role="button" data-slide="prev"> <span
												class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="sr-only">Previous</span>
											</a> <a class="carousel-control-next" href="#carousel-example-2"
												role="button" data-slide="next"> <span
												class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="sr-only">Next</span>
											</a>
											<!--/.Controls-->
										</div>
										<!--/.Carousel Wrapper-->

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- section 2 끝 -->
	
	
	<div class="section">
		<div class="container-fluid">
			<div class="row">
				<div class="col p-0">
					<div class="card" id="mainCard3">

						<div class="card-body">
							<div class="container-fluid">

								<div class="row mb-5">

									<div class="col-md-6 pt-4 pr-2">
										<p class="h2 mt-4 pt-4 text-center pb-4" id="todayTip">TODAY'S TIP</p>

										<!-- Image -->
										<div class="embed-responsive embed-responsive-16by9">
											<iframe class="embed-responsive-item"
												src="https://www.youtube.com/embed/K7WkGULlgJc"
												allowfullscreen></iframe>
										</div>
										<!-- <div class="view overlay rounded z-depth-1-half mb-4">
											<img class="img-fluid"
												src="https://mdbootstrap.com/img/Photos/Slides/1.jpg"
												alt="Sample image"> <a>
												<div class="mask rgba-white-slight"></div>
											</a>
										</div>
										-->

										<div class="row d-flex justify-content-between mx-2">
											<a href="#!" class="light-blue-text">
											<br/>
												<h6 class="font-weight-bold">
													<i class="fas fa-dumbbell pr-2"></i>헬스
												</h6>
											</a>
											<p class="font-weight-bold dark-grey-text">
												<i class="fas fa-clock-o pr-2"></i>2019/10/24
											</p>
										</div>
						
										
										

										<!-- Excerpt-->
										<h3 class="mb-3">
											<a id="community">COMMUNITY</a>
										</h3>
										<p class="dark-grey-text">Nam libero tempore, cum soluta
											nobis est eligendi optio cumque nihil impedit quo minus id
											quod maxime placeat facere possimus, omnis voluptas assumenda
											est, omnis dolor repellendus.</p>

										<ul class="list-group list-group-flush py-0 my-0">

											<li class="list-group-item pb-0 mb-0">
												<!-- Grid column -->
												<div class="row">
													<div class="col-md-3">

														<!--Image-->
														<div class="view overlay rounded z-depth-1 mb-3">
															<img class="img-fluid"
																src="https://mdbootstrap.com/img/Photos/Others/img%20(29).jpg"
																alt="Sample image"> <a>
																<div class="mask rgba-white-slight"></div>
															</a>
														</div>

													</div>
													<div class="col-md-9 mb-0 pb-0">

														<p class="font-weight-bold dark-grey-text">2019/10/25</p>
														<div class="d-flex justify-content-between mb-0 p-0">
															<div class="col-11 text-truncate pl-0 mb-0">
																<a href="#!" class="dark-grey-text pb-0 mb-0">Duis
																	aute irure dolor in reprehenderit in voluptate</a>
															</div>
															<a><i class="fas fa-angle-double-right pb-0 mb-0"></i></a>
														</div>

													</div>
												</div> <!-- Grid column -->
											</li>

											<li class="list-group-item pb-0 mb-0">
												<!-- Grid column -->
												<div class="row pb-0 mb-0">
													<div class="col-md-3 pb-0 mb-0">

														<!--Image-->
														<div class="view overlay rounded z-depth-1 mb-3">
															<img class="img-fluid"
																src="https://mdbootstrap.com/img/Photos/Others/img%20(29).jpg"
																alt="Sample image"> <a>
																<div class="mask rgba-white-slight"></div>
															</a>
														</div>

													</div>
													<div class="col-md-9 pb-0 mb-0">

														<p class="font-weight-bold dark-grey-text">2019/10/25</p>
														<div class="d-flex justify-content-between pb-0 mb-0">
															<div class="col-11 text-truncate pl-0 mb-0 pb-0">
																<a href="#!" class="dark-grey-text">Duis aute irure
																	dolor in reprehenderit in voluptate</a>
															</div>
															<a><i class="fas fa-angle-double-right pb-0 mb-0"></i></a>
														</div>

													</div>
												</div> <!-- Grid column -->
											</li>


										</ul>
									</div>
									<!-- col-md-6-->



									<!-- 추천 운동메이트 시작 -->
									<div class="col-md-6 mt-0 pl-5 pr-4 pt-2">
										<div class="row">
											<p class="h2 mb-4 col text-center" id="recommendMate">RECOMMEND MATE</p>
											<ul class="list-group list-group-flush py-0 my-0 bg-transparent">
											<div class="row">
												<c:forEach var="mate" items="${MateList }">
												<li class="list-group-item pb-0 mb-0">
													<div class="row">
														<div class="col-4">
														
															<img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" class="mb-1 rounded-circle z-depth-1 img-fluid mx-auto"
													          alt="Sample avatar">
														
														</div>
														<div class="col">
															<h5 class="font-weight-bold">${mate.id }</h5>
															<p class="grey-text">
															<div class="row mb-1">
															<span class="badge badge-info">위치</span><strong>&nbsp;${mate.location }</strong>
															</div>
															<div class="row mb-1">
															<span class="badge badge-info">관심 종목</span><strong>&nbsp;${mate.interSport }</strong>
															</div>
															<div class="row mb-1">
															<span class="badge badge-info">운동 시간</span><strong>&nbsp;${mate.healthTime }</strong>
															</div>
															<div class="row mb-1">
															<span class="badge badge-info">일자</span><strong>&nbsp;${mate.startDate } ~ ${mate.endDate }</strong>
															</div>
															</p>
														</div>
													</div>
												</li>
												</c:forEach>
												</div>
												<!--
												<li class="list-group-item pb-0 mb-0">
													<div class="row">
														<div class="col-3">
														
															<img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" class="rounded-circle z-depth-1 img-fluid mx-auto"
													          alt="Sample avatar">
														
														</div>
														<div class="col">
															<h5 class="font-weight-bold">Anna Williams</h5>
															<p class="text-uppercase blue-text">
																<strong><h5><span class="badge badge-pill badge-default">#태그</span></h5></strong>
															</p>
															<p class="grey-text">Neque porro quisquam est, qui
																dolorem ipsum quia dolor sit amet, consectetur, adipisci
																sed quia non numquam modi tempora eius.</p>
														</div>
													</div>
												</li>
												-->
											</ul>
										</div>
									</div>
									<!-- 추천 운동메이트 끝 -->


								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>


