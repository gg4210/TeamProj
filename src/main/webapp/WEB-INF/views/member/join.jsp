<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container">
	<div class="row" style="margin-bottom:5px">
		<div class="col-2 offset-2">
			<p class="h3"><span style="font-size:2em;vertical-align:text-bottom;">회원가입</span></p>
		</div>
		<div class="col" style="background-color:yellow;">
			<p class="h5"><span style="font-size:1em;vertical-align:text-bottom;">운동메이트는 당신의 건강한 삶을 응원합니다.</span></p>
		</div>
	</div>
	<div class="row">
		<div class="col-2">이름*</div>
		<div class="col-5"><input class="form-control" type="text" placeholder="이름을 입력하세요."/></div>
		<div class="col-2">프로필사진</div>
		<div class="col-3"></div>
	</div>
	<div class="row">
		<div class="col-2">닉네임*</div>
		<div class="col-5">
			<form class="form-inline">
				<div class="form-group mb-2">
					<input class="form-control" type="text" placeholder="닉네임을 입력하세요."/>
				</div>
				<button class="btn btn-light mb-2" id="idcheck">중복확인</button>
			</form>
		</div>
		<div class="col-2"></div>
		<div class="col-3"></div>
	</div>
	<div class="row">
		<div class="col-2">비밀번호*</div>
		<div class="col-5"><input class="form-control form-control-sm" type="text" placeholder="이름을 입력하세요."/></div>
		<div class="col-2"></div>
		<div class="col-3"></div>
	</div>
	<div class="row">
		<div class="col-2">휴대폰(*)</div>
		<div class="col-5"><input class="form-control form-control-sm" type="text" placeholder="이름을 입력하세요."/></div>
		<div class="col-2"></div>
		<div class="col-3"></div>
	</div>
	<div class="row">
		<div class="col-2">이메일</div>
		<div class="col-5"><input class="form-control form-control-sm" type="text" placeholder="이름을 입력하세요."/></div>
		<div class="col-2"></div>
		<div class="col-3"></div>
	</div>
	<div class="row">
		<div class="col-2">관심지역</div>
		<div class="col-5">
			<input class=""/>
		</div>
		<div class="col-2"></div>
		<div class="col-3"></div>
	</div>
	<div class="row">
		<div class="col-2">관심운동</div>
		<div class="col-5">
			<input type="checkbox" name="inter" value="health" />헬스
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="inter" value="gx" />GX
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="inter" value="yoga" />요가
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="inter" value="pila" />필라테스
			&nbsp;&nbsp;&nbsp;&nbsp;
			<br/>
			<input type="checkbox" name="inter" value="robic" />에어로빅
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="inter" value="climb" />클라이밍
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="inter" value="spin" />스피닝
			&nbsp;&nbsp;&nbsp;&nbsp;
			<br/>
			<input type="checkbox" name="inter" value="swim" />수영
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="inter" value="golf" />골프
			&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<div class="col-2"></div>
		<div class="col-3"></div>
	</div>
	<div>
	</div>
	<div class="row">
		<div class="col-2">성별</div>
		<div class="col-5">
			<input type="radio" name="gender" value="man" />남
			<input type="radio" name="gender" value="woman" />녀
			<input type="radio" name="gender" value="trans" />트랜스젠더
		</div>
		<div class="col-2"></div>
		<div class="col-3"></div>
	</div>
	
</div>