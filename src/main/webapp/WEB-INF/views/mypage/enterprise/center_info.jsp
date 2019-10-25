<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	.scrolling-wrapper {
	align-item:stretch;
	display:flex;
	flex-direction:row;
	flex-wrap:nowrap;
	overflow-x: scroll;
	overflow-y: hidden;
	
	.scrolling-wrapper .card {
		display: inline-block;
		}
	}

.scrolling-wrapper .card {
  /*float: left;*/
  max-width: 33.333%;
  padding: .75rem;
  margin:10px;
  margin-bottom: 2rem;
  border: 0;
  flex-basis: 33.333%;
  flex-grow: 0;
  flex-shrink: 0;
}

.scrolling-wrapper.card > img {
  margin-bottom: .75rem;
}

</style>



<div class="container-fluid">
	
	<!-- 페이지 헤더 시작 -->
	<div class="page-header mb-1" style="border-bottom: 1px solid #D8D8D8;">
		<h2 style="font-weight: bold;">센터 관리</h2>
	</div>
	<!-- 페이지 헤더 끝 -->
		<!-- 버튼 시작 -->
		<div class="text-right p-0 mb-2">
			<button type="submit" class="btn btn-warning px-3" id="update">수정</button>
			<button type="submit" class="btn btn-danger px-3" id="delete">전체 삭제</button>
		</div>
		<!-- 버튼 끝 -->
	
	<!-- row 시작 -->
	<div class="row">
		<!-- Grid column 1 -->
		<div class="col-md-6 mb-4">

			<!--Card-->
			<div class="card">
				<!--Card content-->
				<div class="card-body">
					<!-- Grid column 1 첫단 시작(이미지, 헬스장 정보) -->
					<div class="row mb-3">
						<div class="col-md-6">
							 <!--Card image-->
						      <div class="view">
						        <img src="https://i1.wp.com/916er.com/wp-content/uploads/ptshopdesing28.jpg?fit=290%2C400&ssl=1" class="card-img-top" alt="photo" height="350px">
						        <a href="#">
						          <div class="mask rgba-white-slight"></div>
						        </a>
						      </div>
						</div>
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h3 style="font-weight: bold; margin-bottom: 0px;">도레미 스포츠센터</h3>
								</div>							
								<div class="card-body">
									<p><i class="fas fa-building"></i>&nbsp;&nbsp;경기도 부천시 원미구 어디동 120</p>
									<p><i class="fas fa-phone-volume"></i>&nbsp;&nbsp;000-0000-0000</p>
									<p><i class="fas fa-car"></i>&nbsp;&nbsp;주차가능</p>
									<p><span style="font-weight: bold; color:blue;">TODAY</span>&nbsp;&nbsp;08:00~22:00</p>
									<p><i class="fas fa-clock"></i>&nbsp;운영시간</p>
									<p>-평일:    08:00~22:00</p>
									<p>-주말/공휴일: 09:00~23:00</p>
									<p style="color: red;">※매주 2,4번째주 수요일은 휴관합니다.</p>
									<p><i class="fas fa-dumbbell"></i>&nbsp;취급 종목</p>
										<p>-헬스, 수영, 필라테스</p>
								</div>								
							</div>
						</div>
					</div>
					<!-- Grid column 1 첫단 끝(이미지,헬스장 정보) -->
					

					<!-- Grid column 1 두번째 단 시작(세부이미지) -->
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header"><h3 style="font-weight: bold; margin-bottom: 0px;">시설 안내</h3></div>
								<div class="card-body">
									<!-- 이미지 시작 -->
									<div class="scrolling-wrapper">
										<div class="card"><img class="card-img-top" src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/samara/facilities/fitness-spa/gym/181126-5-2000-fac-LTSM.jpg.thumb.768.768.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/samara/facilities/fitness-spa/gym/181126-6-2000-fac-LTSM.jpg.thumb.1440.1440.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/samara/facilities/fitness-spa/gym/181126-3-2000-fac-LTSM.jpg.thumb.1440.1440.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/38.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/39.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/40.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/41.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/42.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/43.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/44.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/45.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/46.jpg" alt="Card image cap"></div>
										<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/47.jpg" alt="Card image cap"></div>
									</div>
									<!-- 이미지 끝 -->
								
								</div>
							</div>
						</div>		
					</div>
					<!-- Grid column 1 두번째 단 끝(세부이미지) -->
				
				</div>
				<!--/.Card content-->	
			</div>
			<!--/.Card-->
		</div>
		<!-- Grid column 1 -->
		

		<!-- Grid column 2 시작 -->
		<div class="col-md-6 mb-4">

			<!--Card-->
			<div class="card">
				<div class="card-body">
					
					<!-- 태그 등록 시작 -->
					<div class="row mb-3">
						<div class="col">
							<div class="card">
								<div class="card-header">
									<h3 style="font-weight: bold; margin-bottom: 0px;">센터 대표태그</h3>
								</div>
								<div class="card-body">
								<!--Text-->
									<div class="form-row">
										<div class="col-md-3">
											<input type="text" class="form-control" name="tag1" id="tag1" placeholder="태그입력" value="#필라테스" disabled="disabled"/>
										</div>
										<div class="col-md-3">
											<input type="text" class="form-control" name="tag2" id="tag2" placeholder="태그입력" value="#헬스" disabled="disabled"/>
										</div>
										<div class="col-md-3">
											<input type="text" class="form-control" name="tag3" id="tag3" placeholder="태그입력" value="#최고의강사진" disabled="disabled"/>
										</div>
										</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 태그 등록 끝 -->
					
					
					<!-- 센터 소개 시작 -->
					<div class="row mb-3">
						<div class="col">
							<div class="card">
								<div class="card-header">
									<h3 style="font-weight: bold; margin-bottom: 0px;">센터 소개</h3>
								</div>
								<div class="card-body">
								<!--Text-->
								<p class="card-text">
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다<br/>
									여기에는 센터소개를 적을겁니다									
								</p>
									
								</div>
							</div>
						</div>
					</div>
					<!-- 센터 소개 끝 -->
					

					<!-- 리뷰 시작 -->
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header">
									<div class="row pl-2">
									<h3 style="font-weight: bold; margin-bottom: 0px;">리뷰</h3>
										<span id="rateMe">
										<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
										<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
										<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
										<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
										<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
										</span>
								
									</div>
								</div>
								<div class="card-body">
									<div class="row mb-3">
										<div class="col-2">
											<img src="<c:url value='/resources/images/girl.png'/>" alt="Avatar" class="avatar img-fluid">
										</div>
										<div class="col">
												<span class="mt-0 font-weight-bold blue-text h5">닉네임</span>
												<span id="rateMe">
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
												</span>
											<p>코멘트 내용입니다.</p>
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-2">
											<img src="<c:url value='/resources/images/girl.png'/>" alt="Avatar" class="avatar img-fluid">
										</div>
										<div class="col">
												<span class="mt-0 font-weight-bold blue-text h5">닉네임</span>
												<span id="rateMe">
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
												</span>
											<p>코멘트 내용입니다.</p>
										</div>
									</div>
									</div>
									
									
									
								</div>	
							</div>
						</div>
						<!-- 리뷰 끝 -->
						
					</div>
					
				</div>
				<!--Card 끝-->
			</div>
			<!--Grid column 2 끝-->
		
		</div>
		<!-- row 끝 -->

</div>
<!-- container-fluid -->

