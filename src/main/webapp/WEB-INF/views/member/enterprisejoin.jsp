<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	$('.file-upload').file_upload();
</script>
<style>
html, body {
    height: 100%;
}
.content{
	height:100%;
}
#enjoin{
	height:100%;
}
#enjoin #enrow{
	height:100%;
}
</style>
    <div class="container" id="enjoin">
    	<div class="row align-items-center" id="enrow">
		   	<div class="offset-md-2 col-md-8 align-items-center">
			    <form class="text-center border border-light p-5" action="#!">
			    <p class="h4 mb-4">사업자 회원가입</p>
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
				<!-- 이메일 수신여부 -->
				<div class="row">
					<label class="col-md-3 text-left">이메일 수신 여부</label>
					<div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="emailreceive" name="defaultExampleRadios">
					  <label class="custom-control-label" for="emailreceive">받음</label>
					</div>
					<div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="emailnoreceive" name="defaultExampleRadios">
					  <label class="custom-control-label" for="emailnoreceive">받지 않음</label>
					</div>
				</div>
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
			    <!-- Sign in button -->
			    <button class="btn btn-info btn-block my-4" type="submit">가입하기</button>
				</form>
			</div>
		</div>
	</div>