<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div class="container pt-20" id="cujoin">
   	<div class="row align-self-center" id="curow">
   		<form class="text-center border border-light pt-5 pl-5 pr-5 pb-4" action="<c:url value='/joincomplete.do'/>">
   			<p class="h4 mb-4">개인 회원가입</p>
    			<div class="row">
			   	<!-- 사진 -->
				<div class="col-3" style="margin-top:5%;">
					<div class="wrap-custom-file">
						<input type="file" name="image1" id="image1" accept=".gif, .jpg, .png"/>
						<label for="image1">
							<span>사진 등록하기<br/>Click</span>
						</label>
					</div>
			  	</div>
			   	<div class="col-9">
			   		<div class="form-inline text-left">
			   			<label for="Name" class="col-md-3 mb-2">이름:</label>
					    <!-- 이름 -->
					    <input maxlength="5" type="text" id="name" name="name" class="form-control mb-2 col-3" placeholder="이름을 입력하세요.">
					</div>
					<!-- 아이디 -->
					<div class="form-inline text-left">
						<label for="Id" class="col-md-3 mb-1">아이디:</label>
						<input maxlength="14" type="text" id="id" name="id" class="form-control mb-1 col-md-4" placeholder="아이디">
						<button type="button" class="btn btn-primary mb-1 col-md-2" id="idcheck">중복확인</button>
				    </div>
				    <!-- 닉네임 -->
				    <div class="form-inline text-left">
						<label for="Nick" class="col-md-3 mb-1">닉네임:</label>
						<input maxlength="14" type="text" id="nick" name="nick" class="form-control mb-1 col-md-4" placeholder="아이디">
						<button type="button" class="btn btn-primary mb-1 col-md-2" id="nickcheck">중복확인</button>
				    </div>
				    <input type="hidden" id="authority" name="authority" value="user">
				    
				    <!-- Password -->
				    <div class="form-inline text-left">
						<label for="Password" class="col-md-3 mb-2">비밀번호:</label>
					    <input type="password" maxlength="16" id="password" name="password" class="form-control col-md-5 mb-3" placeholder="비밀번호를 입력하세요.">
				    </div>
				    
				    <!-- Password re-->
				    <div class="form-inline text-left">
						<label class="col-md-3 mb-2" for="Password_re">비밀번호 재입력:</label>
				    	<input type="password" maxlength="16" id="password_re" class="form-control col-md-5 mb-3" placeholder="비밀번호를 다시 입력하세요.">
				    </div>
				    
				    <!-- 이메일 -->
				    <div class="form-inline mb-2">
				    	<label class="col-md-3 mb-2">이메일 주소:</label>
				    	<input type="email" maxlength="16" id="email" name="email" class="form-control col-md-6 mb-2" placeholder="이메일주소를 입력하세요.">
				    	<div class="input-group mb-2 offset-md-3 col-md-4 pl-0">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
					        </div>
							<input type="text" disabled class="form-control col-md-12" id="emailhost" value="naver.com">
						</div>
						<select class="browser-default custom-select mb-2">
							<option selected>-이메일 유형- </option>
							<option value="1">네이버</option>
							<option value="2">다음</option>
							<option value="3">구글</option>
							<option value="4">기타</option>
						</select>
					</div>
					
					<!-- 휴대폰 번호 -->
					<div class="form-inline mb-3" id="celphone" name="celphone">
						<label class="col-md-3">휴대폰 번호:</label>
						<select class="browser-default custom-select col-md-2 text-center">
						  <option selected value="1">010</option>
						  <option value="2">011</option>
						  <option value="3">016</option>
						  <option value="4">017</option>
						  <option value="5">018</option>
						  <option value="6">019</option>
						</select>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" maxlength="4" class="col-md-2 text-center"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" maxlength="4" class="col-md-2 text-center"/>
					</div>
					<div class="form-inline mb-3" id="address" name="address">
						<label class="col-md-3 text-left">관심 지역:</label>
						<div class="row justify-content-start col-md-9">
							<input type="text" class="form-control col-md-3 mt-2" id="Daum_postcode" placeholder="우편번호" disabled="disabled">
							<button type="button" class="btn btn-primary mb-2 col-md-3" onclick="DaumPostcode()" value="우편번호 찾기">우편번호</button>
						</div>
						<div class="row offset-md-3 pl-0 col">
							<input type="text" class="form-control col-10 mt-2 md-2" id="Daum_address" placeholder="주소" disabled="disabled"><br>
							<input type="text" class="form-control col-4 mt-2 md-2 pr-3" id="Daum_detailAddress" placeholder="상세주소">
							<input type="text" class="form-control offset-1 col-4 mt-2 md-2" id="Daum_extraAddress" placeholder="참고항목" disabled="disabled">
						</div>
					</div>
				</div>  
					
				<div class="form-inline mb-3" id="favorite">
					<label class="col-md-3 text-left">관심 운동:</label>
					<div class="col-md-9 text-left">
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline1">
						  <label class="custom-control-label" for="defaultInline1">헬스</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline2">
						  <label class="custom-control-label" for="defaultInline2">GX</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline3">
						  <label class="custom-control-label" for="defaultInline3">요가</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline4">
						  <label class="custom-control-label" for="defaultInline4">필라테스</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline5">
						  <label class="custom-control-label" for="defaultInline5">에어로빅</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline6">
						  <label class="custom-control-label" for="defaultInline6">스피닝</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline7">
						  <label class="custom-control-label" for="defaultInline7">클라이밍</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline8">
						  <label class="custom-control-label" for="defaultInline8">수영</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline9">
						  <label class="custom-control-label" for="defaultInline9">골프</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline10">
						  <label class="custom-control-label" for="defaultInline10">복싱</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline11">
						  <label class="custom-control-label" for="defaultInline11">크로스핏</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline12">
						  <label class="custom-control-label" for="defaultInline12">기타</label>
						</div>
					</div>
				</div>
			</div>
			<button class="btn btn-info offset-md-10 col-md-2" id="startchange" type="submit">가입 완료</button>
		</form>
	</div>
</div>