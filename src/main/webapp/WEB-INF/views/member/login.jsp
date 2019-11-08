<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 구글 로그인에 필요한 소스 시작 -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="471338080176-g046e95v00o1np1q8glj03ghqf97mjra.apps.googleusercontent.com">
<!-- 구글 로그인에 필요한 소스 끝 -->
<!-- 비로그인시 로그인 사이드바 -->
<style>
#customerLinks a{
	padding-top:10px;
	padding-bottom:10px;
}
</style>
<div class="login bg-dark" id="loginMenu">
	<!-- close button 시작 -->
	<button type="button" class="close text-white mt-2" aria-label="Close" id="closelogin">
		 <span aria-hidden="true">×</span>
	</button>		
	<!-- close button 끝 -->
	<div class="container text-center">
		<div class="row">
			<div class="col">
				<img src="<c:url value='/resources/images/loginImage.png'/>" />
			</div>
		</div>
		<div class="h3 text-white">운동메이트</div>
			<div class="md-form">
				<input type="text" id="id" class="form-control text-white"> 
					<label for="id"><span class="text-white" id="labelId">아이디</span></label>
			</div>
			<div class="md-form">
				<input type="password" id="password" class="form-control text-white"> 
					<label for="password"><span class="text-white" id="labelPwd">비밀번호</span></label>
			</div>
		<div class="text-right" id="submit">
			<a href="<c:url value='mypage.do'/>"><button class="btn btn-primary">들어가기</button></a>
		</div>
		
		<div class="text-center pt-3">
			<span class="text-white">회원이 아니신가요? <a href="<c:url value='jointype.do'/>">회원가입</a></span>
		</div>
		
		<div class="text-center pt-3">
			<span class="text-white"><a href="<c:url value='join.do'/>">아이디/비밀번호 찾기</a></span>
		</div>
		
		<!-- 구글 로그인 버튼 시작 -->
		<div class="row justify-content-center mt-4">
			<div class="g-signin2" data-onsuccess="onSignIn"></div>
		</div>
		<!-- 구글 로그인 버튼 끝 -->
		<button class="btn btn-yellow btn-block mx-auto mt-2 font-weight-bold">카카오톡 로그인</button>
		<button class="btn btn-success btn-block mx-auto mt-2 font-weight-bold">네이버 로그인</button>
		
	</div>
</div>
<!-- 개인회원으로 로그인시 사이드바 -->
<div class="login bg-dark" id="CustomerLoMenu">
	<!-- close button 시작 -->
	<button type="button" class="close text-white mt-2" aria-label="Close" id="closeCulogin">
		 <span aria-hidden="true">×</span>
	</button>		
	<!-- close button 끝 -->
	<div class="container text-center">
		<div class="row">
			<div class="col-6" style="margin-bottom:15px;">
				<img class="col-12" src="<c:url value='/resources/images/girl.png'/>" />
			</div>
			<div class="h5 text-white col-6" style="align-self:center;">ooo님,<br/>반갑습니다</div>
			
			<div class="row">
				<!-- col1 등록한 센터 시작 -->
				<div class="accordion col" id="customeraccordion">
				   <div class="card">
				      <div class="card-header mdb-color darken-3 pb-0" id="heading1" style="padding:0px;">
				         <button class="btn btn-link" type="button" data-toggle="collapse"
				               data-target="#center1" aria-expanded="true"
				               aria-controls="collapseOne" style="margin:0px;">
				               <div class="row">
				                  <div class="col-2 mr-5">
				                     <h4>
				                     	  <span class="fa-stack">
					                        <i class="far fa-circle fa-stack-2x text-white"></i>
					                        <i class="fas fa-heart fa-stack-1x text-white"></i>
				                     	  </span>
				                     </h4>               
				                  </div>
				                  <div class="col" style="align-self:center;">
				                     <div class="row">
				                        <h5 class="text-left font-weight-bold text-white">
				                          	내가 등록한 센터
				                        </h5>
				                     </div>
				                  </div>
				               </div>
				         </button>
				      </div>
				
				      <div id="center1" class="collapse" aria-labelledby="heading1"
				         data-parent="#customeraccordion">
				         <!-- 카드 바디 시작 -->
				         <div class="card-body" style="padding:0px">
				         	  <!-- 등록한 센터 테이블 시작 -->
				            <table class="table" style="text-align: center;" >
				               <thead class="bg-primary white-text">
				                  <tr class="align-middle">
				                     <th scope="col" style="width: 60%">센터명</th>
				                     <th scope="col" style="width: 40%">혼잡도</th>
				                  </tr>
				               </thead>
				               <tbody>
				                  <tr>
				                     <td><a href="#">도레미</br>스포츠센터</a></td>
				                     <td><i class="fas fa-circle text-danger"></i> 혼잡</br>85%</td>
				                  </tr>
				                  <tr>
				                     <td><a href="#">파솔라</br>스포츠센터</a></td>
				                      <td><i class="fas fa-circle text-info"></i> 여유</br>30%</td>
				                  </tr>
				                  <tr>
				                     <td><a href="#">시도</br>스포츠센터</a></td>
				                      <td><i class="fas fa-circle text-warning"></i> 보통</br>65%</td>
				                  </tr>
				               </tbody>
				            </table>
				            <!-- 등록한 센터 테이블 끝 -->
				         </div>
				         <!-- 카드 바디 끝 -->
				      </div>
				   </div>
				</div>
				<div class="accordion col" id="customeraccordion2">
					<div class="card">
						<div class="card-header mdb-color darken-3 pb-0" id="heading1" style="padding:0px;">
							<button class="btn btn-link" type="button" data-toggle="collapse"
				               data-target="#center2" aria-expanded="true"
				               aria-controls="collapseOne" style="margin:0px;">
				               <div class="row">
				                  <div class="col-2 mr-5">
				                     <h4>
				                     	  <span class="fa-stack">
					                        <i class="far fa-circle fa-stack-2x text-white"></i>
					                        <i class="fas fa-heart fa-stack-1x text-white"></i>
				                     	  </span>
				                     </h4>               
				                  </div>
				                  <div class="col" style="align-self:center;">
				                     <div class="row">
				                        <h5 class="text-left font-weight-bold text-white">
				                          	마이페이지 메뉴
				                        </h5>
				                     </div>
				                  </div>
				               </div>
							</button>
						</div>
						<div id="center2" class="collapse" aria-labelledby="heading1"
				         data-parent="#customeraccordion2">
				         <!-- 카드 바디 시작 -->
				         	<div class="card-body" style="padding:0px">
				         		<div class="list-group" id="customerLinks">
									<a class="list-group-item list-group-item-action" href="<c:url value='/customer.do#pills-home-tab'/>" id="lpills-home">
										<span>마이페이지</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customer.do#pills-mate-tab'/>" id="lpills-mate">
										<span>운동메이트</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customer.do#pills-coupon-tab'/>" id="lpills-coupon">
										<span>쿠폰함</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customer.do#pills-scrap-tab'/>">
										<span>스크랩</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customer.do#pills-info-tab'/>">
										<span>내 정보 관리</span>
									</a>
								</div>
				         	</div>
				         </div>
					</div>
				</div>
				<!-- col2 끝 -->
				<div class="accordion col" id="customeraccordion3">
					<div class="card">
						<div class="card-header mdb-color darken-3 pb-0" id="heading1" style="padding:0px;">
							<button class="btn btn-link" type="button" data-toggle="collapse"
				               data-target="#center3" aria-expanded="true"
				               aria-controls="collapseOne" style="margin:0px;">
				               <div class="row">
				                  <div class="col-2 mr-5">
				                     <h4>
				                     	  <span class="fa-stack">
					                        <i class="far fa-circle fa-stack-2x text-white"></i>
					                        <i class="fas fa-heart fa-stack-1x text-white"></i>
				                     	  </span>
				                     </h4>               
				                  </div>
				                  <div class="col" style="align-self:center;">
				                     <div class="row">
				                        <h5 class="text-left font-weight-bold text-white">
				                          	고객센터 메뉴
				                        </h5>
				                     </div>
				                  </div>
				               </div>
							</button>
						</div>
						<div id="center3" class="collapse" aria-labelledby="heading1"
				         data-parent="#customeraccordion3">
				         <!-- 카드 바디 시작 -->
				         	<div class="card-body" style="padding:0px">
				         		<div class="list-group" id="serviceLinks">
									<a class="list-group-item list-group-item-action" href="<c:url value='/customerServiceMain.do#pills-home-tab'/>" id="lpills-home">
										<span>고객센터 홈</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customerServiceMain.do#pills-faq-tab'/>" id="lpills-mate">
										<span>자주 묻는 질문</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customerServiceMain.do#pills-notice-tab'/>" id="lpills-coupon">
										<span>공지 이벤트</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customerServiceMain.do#pills-consultwrite-tab'/>">
										<span>1:1 문의</span>
									</a>
									<a class="list-group-item list-group-item-action" href="<c:url value='/customerServiceMain.do#pills-consultlist-tab'/>">
										<span>문의내역 확인</span>
									</a>
								</div>
				         	</div>
				         </div>
					</div>
				</div>
				<!-- col3 끝 -->
			</div>
		</div>
	</div>
</div>

<script>
	//구글 로그인 후, 호출되는 함수
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		console.log('Name: ' + profile.getName());
		console.log('Image URL: ' + profile.getImageUrl());
		console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	}
</script>

