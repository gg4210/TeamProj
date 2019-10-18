<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	$('.file-upload').file_upload();
</script>
    <div class="container">
	   	<div class="col-md-8">
		    <form class="text-center border border-light p-5" action="#!">
			
		    <p class="h4 mb-4">회원가입</p>
			<!-- 사진 -->
			<div class="file-upload-wrapper col-md-4 offset-md-4">
			  <input type="file" id="input-file-now" class="file-upload" data-height="300"
			  data-default-file="https://mdbootstrap.com/img/Photos/Others/images/89.jpg"/>
			</div>
		    <!-- 이름 -->
		    <input type="text" id="Name" class="form-control mb-4" placeholder="이름을 입력하세요.">
			
			<!-- 아이디 -->
			<div>
				<div class="form-inline text-center">
					<input type="text" id="Id" class="form-control mb-4 col-md-7" placeholder="아이디">
					<button type="button" class="btn btn-primary mb-2 col-md-4" id="idcheck">중복확인</button>
			    </div>
		    </div>
		    
		    <!-- Password -->
		    <input type="password" id="Password" class="form-control mb-4" placeholder="비밀번호를 입력하세요.">
		    
		    <!-- Password re-->
		    <input type="password" id="Password" class="form-control mb-4" placeholder="비밀번호를 다시 입력하세요.">
		    
		    <!-- 이메일 -->
			<input type="email" id="email" class="form-control mb-4" placeholder="이메일을 입력하세요.">
			
			<!-- 전화번호 -->
			<div class="form-inline" id="Tel">
				<label class="col-md-4 text-left">전화번호</label>
				<select class="browser-default custom-select col-2">
				  <option selected value="1">02)</option>
				  <option value="2">031)</option>
				  <option value="3">032)</option>
				  <option value="4">033)</option>
				  <option value="5">041)</option>
				  <option value="6">042)</option>
				  <option value="7">043)</option>
				  <option value="8">044)</option>
				  <option value="9">051)</option>
				  <option value="10">052)</option>
				  <option value="11">053)</option>
				  <option value="12">054)</option>
				  <option value="13">055)</option>
				  <option value="14">061)</option>
				  <option value="15">062)</option>
				  <option value="16">063)</option>
				  <option value="17">064)</option>
				</select>
				<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
				<input type="tel" class="col"/>
				<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
				<input type="tel" class="col"/>
			</div>
			
			<!-- 휴대폰 번호 -->
			<div class="form-inline" id="Cel">
				<label class="col-md-4 text-left">휴대폰번호</label>
				<select class="browser-default custom-select col-2">
				  <option selected value="1">010</option>
				  <option value="2">011</option>
				  <option value="3">016</option>
				  <option value="4">017</option>
				  <option value="5">018</option>
				  <option value="6">019</option>
				</select>
				<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
				<input type="tel" class="col"/>
				<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
				<input type="tel" class="col"/>
			</div>
			<div class="form-inline" id="region">
				<label class="col-md-4 text-left">관심지역</label>
				<select class="browser-default custom-select col-2">
				  <option selected value="1">서울</option>
				  <option value="2">경기</option>
				  <option value="3">강원</option>
				  <option value="4">충북</option>
				  <option value="5">충남</option>
				  <option value="6">전북</option>
				  <option value="7">전남</option>
				  <option value="8">경북</option>
				  <option value="9">경남</option>
				  <option value="10">제주</option>
				</select>
			</div>
			<div class="form-inline" id="favorite">
				<label class="col-md-2 text-left">관심운동</label>
				<div class="col-md-10">
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
					  <label class="custom-control-label" for="defaultInline6">클라이밍</label>
					</div>
					<div class="custom-control custom-checkbox custom-control-inline">
					  <input type="checkbox" class="custom-control-input" id="defaultInline7">
					  <label class="custom-control-label" for="defaultInline7">스피닝</label>
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
					  <label class="custom-control-label" for="defaultInline10">기타</label>
					</div>
				</div>
			</div>
		
		    <!-- Sign in button -->
		    <button class="btn btn-info btn-block my-4" type="submit">가입하기</button>
			</form>
		</div>
	</div>