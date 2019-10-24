<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.shadow-textarea textarea.form-control::placeholder {
    font-weight: 300;
}
.shadow-textarea textarea.form-control {
    padding-left: 0.8rem;
}
</style>


<div class="container-fluid">
	<div class="row">
		<!-- Grid column 1 -->
		<div class="col-md-6 mb-4">

			<!--Card-->
			<div class="card default-color-dark">
				<!--Card content-->
				<div class="card-body">
				
					<div class="row">
						<div class="col-md-6">
							 <!--Card image-->
						      <div class="view">
						        <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(125).jpg" class="card-img-top" alt="photo">
						        <a href="#">
						          <div class="mask rgba-white-slight"></div>
						        </a>
						      </div>
						</div>
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h3>도레미헬스장</h3>
								</div>							
								<div class="card-body">
									<p>[주소] : 경기도 부천시 원미구~~</p>
									<p>[전화번호] : 000-0000-0000</p>
									<p>[운영여부] : </p>
									<p>[운영시간]</p>
									<p>- 평일</p>
									<p>- 토요일</p>
									<p>- 휴관일</p>	
								</div>								
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header"><h4>시설안내</h4></div>
								<div class="card-body">
									<h4 class="card-title "></h4>
									<p>편의시설</p>
									<p>부가서비스</p>
									<p>사진</p>
								</div>
							</div>
						</div>		
					</div>
				
				</div>
				<!--/.Card content-->	
			</div>
			<!--/.Card-->

		</div>
		<!-- Grid column 1 -->

		<!-- Grid column 2 -->
		<div class="col-md-6 mb-4">

			<!--Card-->
			<div class="card primary-color-dark">
				<div class="card-body">
				
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-body">
								
								<!--Title-->
								<h4 class="card-title ">Title of the news</h4>
								<!--Text-->
								<p class="card-text">Sed ut perspiciatis unde omnis
									iste natus error sit voluptatem accusantium doloremque laudantium,
									totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et
									quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
									ipsam voluptatem quia voluptas.</p>
									
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-4">
										
											<h2>3.0</h2>
											<hr/>
											<span id="rateMe">
												<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
												<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
												<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
												<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
												<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
											</span>
											
										</div>
										<div class="col-md-8">
										
											<div class="form" action="#">
												<span id="rateMe">
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
													<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
													<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
													<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
												</span>
												<div class="form-group shadow-textarea">
													<textarea class="form-control z-depth-1" id="exampleFormControlTextarea6" rows="3" placeholder="Write something here..."></textarea>
												</div>
												<button type="submit" class="btn btn-indigo">등록하기</button>
											</div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header">평점 확인</div>
								<div class="card-body">
								
									<div class="row">
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
					
				</div>
			</div>
			<!--/.Card-->

		</div>
		<!-- Grid column 2 -->

	</div>
	<!-- row -->
</div>
<!-- container-fluid -->



