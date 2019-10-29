<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">
   
   <!-- 페이지 헤더 시작 -->
	<div class="page-header mb-1" style="border-bottom: 1px solid #D8D8D8;">
		<h2 style="font-weight: bold;">센터 관리</h2>
	</div>
	<!-- 페이지 헤더 끝 -->
		<!-- 버튼 시작 -->
		<div class="text-right p-0 mb-2">
			<button class="btn btn-warning px-3" id="edit">수정</button>
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
						<div class="card-header pt-4 font-weight-bold">
							<p class="font-weight-bold h3">도레미스포츠센터</p>
						</div>							
						<div class="card-body">
									<p><span class="badge badge-primary">주소</span> : 경기도 부천시 원미구 역곡동 -------</p>
									<hr/>
									<p><span class="badge badge-primary">전화번호</span> : 000-0000-0000</p>
									<hr/>									
									<p>붐비는 정도가 들어갈 공간</p>
									<hr/>									
									<p><span style="font-weight: bold; color:blue;">TODAY</span> : 현재 운영중!</p>
									<hr/>									
									<p><span class="badge badge-primary">종목</span> <i class="fas fa-swimming-pool"></i> 수영 &nbsp&nbsp<i class="fas fa-dumbbell"></i> 헬스</p>
									<hr/>
									<p>평균별점 : <span id="rateMe">
												<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
												<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
												<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
												<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
												<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
									</span>(3.0)</p>
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
                        	<p class="h4"><span class="badge badge-primary"><i class="fas fa-clock"></i>&nbsp;운영시간</span></p>
									<p>-평일:    08:00~22:00</p>
									<p>-주말/공휴일: 09:00~23:00</p>
									<p style="color: red;">※매주 2,4번째주 수요일은 휴관합니다.</p>
									<p class="h4"><span class="badge badge-primary">제공 서비스</span></p>
									<div class="row">
										<div class="col-2">
											<img src="<c:url value='/resources/images/icon/clothes.png'/>" class="img-fluid"/>
											<br/>
											<p class="text-center mt-2">운동복</p>
										</div>
										<div class="col-2">
											<img src="<c:url value='/resources/images/icon/park.png'/>" class="img-fluid"/>
											<br/>
											<p class="text-center mt-2">주차</p>
										</div>
										<div class="col-2">
											<img src="<c:url value='/resources/images/icon/locker.png'/>" class="img-fluid"/>
											<br/>
											<p class="text-center mt-2">라커</p>
										</div>
										<div class="col-2">
											<img src="<c:url value='/resources/images/icon/wifi.png'/>" class="img-fluid"/>
											<br/>
											<p class="text-center mt-2">와이파이</p>
										</div>
										<div class="col-2">
											<img src="<c:url value='/resources/images/icon/shower.png'/>" class="img-fluid"/>
											<br/>
											<p class="text-center mt-2">샤워실</p>
										</div>
									</div>
                        
                        
                        
                        
                           <!-- 이미지 시작 -->
                           <p class="h4"><span class="badge badge-primary">사진</span></p>                        
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
                           <h3 style="font-weight: bold; margin-bottom: 0px;">이용후기</h3>                        
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

