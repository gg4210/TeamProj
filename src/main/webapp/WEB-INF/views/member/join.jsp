<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container">
	   	<div class="col-6">
		    <form class="text-center border border-light p-5" action="#!">
		
		    <p class="h4 mb-4">회원가입</p>
		
		    <!-- 이름 -->
		    <input type="text" id="Name" class="form-control mb-4" placeholder="이름을 입력하세요.">
			
			<!-- 아이디 -->
			<div class="form-inline text-center">
				<input type="text" id="Id" class="form-control mb-4 col-8" placeholder="아이디">
				<button type="button" class="btn btn-primary mb-2 col" id="idcheck">중복확인</button>
		    </div>
		    
		    <!-- Password -->
		    <input type="password" id="Password" class="form-control mb-4" placeholder="비밀번호를 입력하세요.">
		    
		    <!-- Password re-->
		    <input type="password" id="Password" class="form-control mb-4" placeholder="비밀번호를 다시 입력하세요.">
		    
		    <!-- 이메일 -->
			<input type="email" id="email" class="form-control mb-4" placeholder="이메일을 입력하세요.">
			
			<!-- 전화번호 -->
			<div class="form-inline" id="Tel">
				<label class="col-4 text-left">전화번호</label>
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
				<label class="col-4 text-left">휴대폰번호</label>
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
				<label class="col-4 text-left">관심지역</label>
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
				<label class="col-4 text-left">관심운동</label>
				<input type="checkbox" class="custom-control-input" id="defaultUnchecked"/>
			</div>
		
		    <!-- Sign in button -->
		    <button class="btn btn-info btn-block my-4" type="submit">가입하기</button>
			</form>
		</div>
	</div>
<!-- 
=======

>>>>>>> branch 'master' of https://github.com/gg4210/TeamProj.git
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
		<div class="col">이름*</div>
		<div class="col"><input class="form-control" type="text" placeholder="이름을 입력하세요."/></div>
	</div>
	<div class="row">
		<div class="col">닉네임*</div>
		<div class="col">
			<form class="form-inline">
				<div class="form-group mb-2">
					<input class="form-control" type="text" placeholder="닉네임을 입력하세요."/>
				</div>
				<button class="btn btn-light mb-2" id="idcheck">중복확인</button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col">비밀번호*</div>
		<div class="col"><input class="form-control form-control-sm" type="text" placeholder="이름을 입력하세요."/></div>
	</div>
	<div class="row">
		<div class="col">휴대폰(*)</div>
		<div class="col"><input class="form-control form-control-sm" type="text" placeholder="이름을 입력하세요."/></div>
	</div>
	<div class="row">
		<div class="col">이메일</div>
		<div class="col"><input class="form-control form-control-sm" type="text" placeholder="이름을 입력하세요."/></div>
	</div>
	<div class="row">
		<div class="col">관심지역</div>
		<div class="col">
			<input class=""/>
		</div>
	</div>
	<div class="row">
		<div class="col">관심운동</div>
		<div class="col">
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
	</div>
	<div>
	</div>
	<div class="row">
		<div class="col">성별</div>
		<div class="col">
			<input type="radio" name="gender" value="man" />남
			<input type="radio" name="gender" value="woman" />녀
			<input type="radio" name="gender" value="trans" />트랜스젠더
		</div>
	</div>
</div>
-->