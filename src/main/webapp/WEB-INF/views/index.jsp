<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	





	<div id="fullpage">
	
		<!-- section 1 시작 -->
	    <div class="section">
		    <!--  <img src="<c:url value='/resources/images/main.png'/>" class="img-fluid d-none d-lg-none d-xl-block float-right" style="height:100%" id="first-main-img"/>-->		    	
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-4">
						<img src="<c:url value='/resources/images/main_1.png'/>" class="img-fluid d-none d-xl-block mx-auto pt-5"/>
					</div>
					<div class="p-0 col-xl-8 col-lg-12 col-md-12">
						<div class="card card-body z-depth-5" id="mainCard1">
						
							<div class="row mt-5 pt-5 pl-5" id="top_padding_margin">
								<div class="col-md-1">
									<i class="fas fa-quote-left fa-4x"></i>
								</div>
								<div class="col-md-7">	
								    <span class="font-weight-bold indigo-text text-center display-2 mb-2" id="title">운동해(偕)!</span>
								</div>
							</div>
							<div class="row pl-5 pt-5">
								<div class="col offset-1">
									<p class="h5" id="message">운동해(偕)!는 마음이 맞는 사람들과 다양한 운동을 함께할 수 있도록 도움을 주는 플랫폼 서비스입니다.</p>
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
												<span class="fa-stack fa-4x">
												  <i class="fas fa-circle fa-stack-2x"></i>
												  <i class="fas fa-user-friends fa-stack-1x fa-inverse"></i>
												</span>
											</p>
											<p class="card-title text-center indigo-text font-weight-bold h2">함께해요</p>
											<hr/>
											<p>당신과 함께할 수 있는</p>
											<p>운동메이트의 수</p>
											<p class="h5 text-center font-weight-bold">00명!</p>
										</div>
									</div>
									<!-- 카드1 끝 -->
									<!-- 카드2 -->
									<div class="card d-none d-md-block">
										<div class="card-body text-center">
											<p><span class="fa-stack fa-4x">
											  <i class="fas fa-circle fa-stack-2x"></i>
											  <i class="fas fa-search fa-stack-1x fa-inverse"></i>
											</span></p>
											<p class="card-title text-center indigo-text font-weight-bold h2">찾아봐요</p>
											<hr/>
											<p>당신 주변에 있는</p>
											<p>헬스장의 수</p>
											<p class="h5 text-center font-weight-bold">00개!</p>
										</div>
									</div>
									<!-- 카드2 끝 -->
									<!-- 카드3 -->
									<div class="card d-none d-md-block">
										<div class="card-body text-center">
											<p>
												<span class="fa-stack fa-4x">
												  <i class="fas fa-circle fa-stack-2x"></i>
												  <i class="fas fa-clipboard-list fa-stack-1x fa-inverse"></i>
												</span>
											</p>
											<h2 class="card-title text-center indigo-text font-weight-bold h2">소통해요</h2>
											<hr/>
											<p>당신과 나눌 수 있는</p>
											<p>게시글의 수</p>
											<p class="h5 text-center font-weight-bold">00개!</p>
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
									<p class="h4"><a href="#">함께운동하기</a></p>
								</div>
							</div>
							
						</div>
								
					</div><!-- p-0 col-xl-8 offset-xl-4 col-lg-12 col-md-12 -->
				</div><!-- row -->
			</div><!-- container-fluid -->

	    </div>
	    <!-- section 1 끝! -->
	    
	    <!-- section 2 시작 -->
	    <div class="section">
	    	<div class="container-fluid">
		    	<div class="row">
			    	<div class="col p-0">
			    		<div class="card" id="mainCard2">
			    			<div class="card-body pr-5">
			    				<div class="container-fluid m-5">			    				
			    					
			    					<div class="row mr-5">
			    						<div class="col-md-6">
			    							<p class="h2">공지사항</p>
			    							<div class="card card-body">
			    								<table class="table">
			    									<thead>
			    										<tr>
			    											<th scope="col">글번호</th>
			    											<th scope="col">카테고리</th>
			    											<th scope="col">제목</th>
			    											<th scope="col">날짜</th>
			    										</tr>
			    									</thead>
			    									<tbody>
			    										<tr>
			    											<th scope="row">2</th>
			    											<td>[정기점검]</td>
			    											<td>2019-10-26 정기점검 안내</td>
			    											<td>2019-10-21</td>
			    										</tr>
			    										<tr>
			    											<th scope="row">1</th>
			    											<td>[공지사항]</td>
			    											<td>운동해!偕 서비스가 오픈하였습니다.</td>
			    											<td>2019-10-21</td>
			    										</tr>
			    									</tbody>
			    								</table>
			    							</div>
			    						</div>
			    						<div class="col-md-6">
			    							<p class="h2">이벤트</p>
			    							<div class="card card-body">
			    								<table class="table">
			    									<thead>
			    										<tr>
			    											<th scope="col">글번호</th>
			    											<th scope="col">제목</th>
			    											<th scope="col">유효기간</th>
			    										</tr>
			    									</thead>
			    									<tbody>
			    										<tr>
			    											<th scope="row">2</th>
			    											<td>일부 스포츠센터에서 10월 이벤트 5% 할인쿠폰을 제공합니다</td>
			    											<td>2019-10-21</td>
			    										</tr>
			    										<tr>
			    											<th scope="row">1</th>
			    											<td>9월 출석체크 개근 시 스타벅스 커피쿠폰을 드립니다.</td>
			    											<td>2019-10-21</td>
			    										</tr>
			    									</tbody>
			    								</table>
			    							
			    							</div>
			    						</div>
			    					</div>
			    					
			    					<div class="row mt-5">
			    						<div class="col">
			    							<p class="h2">가장 많이 찜한 헬스장</p>
			    							
			    							<!-- 캐러샐은 알아서해 -->		    					
											
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
			    			<div class="card-body p-5">
			    				<div class="container-fluid m-5">
			    					<div class="row">
				    					<div class="col">
				    						<p class="h2">가장 많은 추천을 받은 게시글</p>
				    						<div class="card card-body">
				    						
				    						</div>
				    					</div>
			    					</div>
			    				</div>
			    			</div>
			    		</div>
		    		</div>
	    		</div>
	    	</div>
	    </div>
	</div>


