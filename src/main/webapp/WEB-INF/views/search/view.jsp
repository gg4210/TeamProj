<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>

.content{
 padding-top:20px;
 padding-left:15px;

}

.shadow-textarea textarea.form-control::placeholder {
    font-weight: 300;
}
.shadow-textarea textarea.form-control {
    padding-left: 0.8rem;
}
.card-image-container {
  position: relative;
}
.card-img-top {
  opacity: 1;
  display: block table;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.card-img-middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}
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

.scrolling-wrapper .card-container{
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


.scrollbar-primary::-webkit-scrollbar {
width: 10px;
background-color: #F5F5F5; 
}

.scrollbar-primary::-webkit-scrollbar-thumb {
border-radius: 10px;
-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
background-color: #4285F4; }
}


</style>


<div class="container-fluid">
	<div class="row">
		<!-- Grid column 1 -->
		<div class="col-md-6 mb-4">

			<!--Card-->
			<div class="card">
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
						<div class="col-md-6 pb-3">
							<div class="card">
								<div class="card-header pt-4 font-weight-bold">
									<p class="font-weight-bold h3">도레미스포츠센터</p>
								</div>							
								<div class="card-body">
									<p>[주소] : 경기도 부천시 원미구~~</p>
									<p>[전화번호] : 000-0000-0000</p>
									<p>붐비는 정도가 들어갈 공간</p>
									<p>[운영여부] : 현재 운영중!</p>
									<p>[종목]</p>
									<p><i class="fas fa-swimming-pool"></i> 수영</p>
									<p><i class="fas fa-dumbbell"></i> 헬스</p>
								</div>								
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header pt-4"><p class="font-weight-bold h3">시설안내</p></div>
								<div class="card-body">

									<p>[운영시간]</p>
									<p>- 평일 : 6:00 am ~ 12:</p>
									<p>- 토요일</p>
									<p>- 휴관일</p>
									<p>[제공 서비스]</p>										
									<p>[사진]</p>
										<div class="scrolling-wrapper scrollbar scrollbar-primary">
											<div class="card-container p-3">
												<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
												<div class="card-img-middle">
													<div class="text px-3" id="tex	t-modal">추가하기</div>
												</div>
											</div>
											<div class="card-container p-3">
												<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
												<div class="card-img-middle">
													<div class="text px-3" id="text-modal">추가하기</div>
												</div>
											</div>
											<div class="card-container p-3">
												<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
												<div class="card-img-middle">
													<div class="text px-3" id="text-modal">추가하기</div>
												</div>
											</div>
											<div class="card-container p-3">
												<img class="card-img-top" src="http://placehold.it/500x325" alt="" style="width: 100%">
												<div class="card-img-middle">
													<div class="text px-3" id="text-modal">추가하기</div>
												</div>
											</div>
									</div>
									
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
			<div class="card">
				<div class="card-body">
				
					<div class="row pb-3">
						<div class="col">
							<div class="card">
								<div class="card-body">
								
									<!--Text-->
									<p>Sed ut perspiciatis unde omnis
										iste natus error sit voluptatem accusantium doloremque laudantium,
										totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et
										quasi architecto beatae vitae dicta sunt explicabo. Nemo enim
										ipsam voluptatem quia voluptas.</p>
										
								</div>
							</div>
						</div>
					</div>
					
					<div class="row pb-3">
						<div class="col">
							<div class="card">
							
								<div class="card-header pt-4"><p class="font-weight-bold h3">평균별점  / 후기 남기기</p></div>
								
								<div class="card-body">
									<div class="row align-items-center h-100">
										<div class="col-md-4 mx-auto text-center">
										
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
												<div class="form-group shadow-textarea m-0 mt-2">
													<textarea class="form-control z-depth-1" id="exampleFormControlTextarea6" rows="3" placeholder="후기를 등록하세요!"></textarea>
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
								<div class="card-header pt-4"><p class="font-weight-bold h3">이용후기</p></div>
								<div class="card-body">
								
									<div class="row pb-4">
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
									
									<div class="row pb-3">
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
										<hr/>										
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



