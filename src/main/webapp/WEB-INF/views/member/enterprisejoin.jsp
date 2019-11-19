<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <div class="container" id="enjoin">
    	<div class="row align-items-center" id="enrow">
		   	<div class="col-md-8 align-items-center">
			    <form class="text-center border border-light p-5" action="#!">
				    <p class="h4 mb-4">사업자 회원가입</p>
					<!-- 아이디 -->
					<div class="form-row align-items-center col-12">
						<div class="form-group mt-3 col-md-7">
							<label for="Id" class="sr-only">ID</label>
							<input type="text" id="Id" class="form-control" placeholder="아이디">
					    </div>
					    <button type="button" class="btn btn-primary mb-2 col-md-4" id="idcheck">중복확인</button>
				    </div>
				    
				    <!-- Password -->
				    <div class="form-row align-items-center col-12">
				    	<div class="form-group mt-3 col">
					    	<label for="Password" class="sr-only">Password</label>
					    	<input type="password" id="Password" class="form-control" placeholder="비밀번호를 입력하세요.">
					    </div>
				    </div>
				    <!-- Password re-->
				    <div class="form-row align-items-center col-12">
				    	<div class="form-group mt-3 col">
					    	<label for="Password-re" class="sr-only">Password-re</label>
					    	<input type="password" id="Password-re" class="form-control" placeholder="비밀번호를 다시 입력하세요.">
				    	</div>
				    </div>
				    <!-- 이메일 -->
				    <div class="form-row align-items-center col-12">
				    	<div class="form-group mt-3 col">
				    		<label for="email" class="sr-only">email</label>
							<input type="email" id="email" class="form-control mb-4" placeholder="이메일을 입력하세요.">
						</div>
					</div>
					<!-- 이메일 수신여부 -->
					<div class="form-group mt-0 mb-0">
						<div class="row">
							<label class="col-3 text-left">이메일 수신 여부</label>
							<div class="custom-control custom-radio">
							  <input type="radio" class="custom-control-input" id="emailreceive" name="emailradios">
							  <label class="custom-control-label" for="emailreceive">받음</label>
							</div>
							<div class="custom-control custom-radio">
							  <input type="radio" class="custom-control-input" id="emailnoreceive" name="emailradios">
							  <label class="custom-control-label" for="emailnoreceive">받지 않음</label>
							</div>
						</div>
					</div>
					<!-- 사업자 등록번호 -->
					<div class="form-inline" id="enidnum">
						<label class="col-3 text-left">사업자등록번호</label>
						<input type="tel" class="col-2"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="col-2"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="col-2"/>
						<button type="button" class="btn btn-primary mb-2" id="enidcheck">중복확인</button>
					</div>
					<!-- 상호(법인명) -->
					<div class="form-inline" id="enname">
						<label class="col-3 text-left">상호(법인명)</label>
						<input class="col-4 form-control" type="text"/>
					</div>
					<!-- 대표자 성명 -->
					<div class="form-inline" id="ownername">
						<label class="col-3 text-left">대표자 성명</label>
						<input class="col-2 form-control" type="text"/>
					</div>
					<!-- 휴대폰 번호 -->
					<div class="form-inline" id="Cel">
						<label class="col-md-3 text-left">휴대폰번호</label>
						<select class="browser-default custom-select col-2">
						  <option selected value="1">010</option>
						  <option value="2">011</option>
						  <option value="3">016</option>
						  <option value="4">017</option>
						  <option value="5">018</option>
						  <option value="6">019</option>
						</select>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="form-control col-2"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="form-control col-2"/>
					</div>
					<!-- SMS 수신여부 -->
					<div class="form-group mt-3 mb-3">
						<div class="row">
							<label class="col-md-3 text-left">SMS 수신 여부</label>
							<div class="custom-control custom-radio">
							  <input type="radio" class="custom-control-input" id="smsreceive" name="smsradios">
							  <label class="custom-control-label" for="smsreceive">받음</label>
							</div>
							<div class="custom-control custom-radio">
							  <input type="radio" class="custom-control-input" id="smsnoreceive" name="smsradios">
							  <label class="custom-control-label" for="smsnoreceive">받지 않음</label>
							</div>
						</div>
					</div>
					<!-- 전화번호 -->
					<div class="form-inline" id="Tel">
						<label class="col-md-3 text-left">전화번호</label>
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
						<input type="tel" class="form-control col-2"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="form-control col-2"/>
					</div>
					<!-- 팩스번호 -->
					<div class="form-inline" id="fax">
						<label class="col-3 text-left">팩스번호</label>
						<input type="tel" class="form-control col-2"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="form-control col-2"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="form-control col-2"/>
					</div>
					<!-- 사업장 소재지 -->
					<div class="form-inline mt-10" id="address">
						<label class="col-3 text-left">사업장 소재지</label><br/>
						<div class="col-12">
							<div class="row justify-content-start">
								<input type="text" class="form-control col-2 mt-2" id="Daum_postcode" placeholder="우편번호" disabled="disabled">
								<button type="button" class="btn btn-primary mb-2 col-4" onclick="DaumPostcode()" value="우편번호 찾기">우편번호</button>
							</div>
						</div>
						<div class="col-12">
							<div class="row">
								<input type="text" class="form-control col-11 mt-2" id="Daum_address" placeholder="주소" disabled="disabled"><br>
								<input type="text" class="form-control col-6 mt-2" id="Daum_detailAddress" placeholder="상세주소">
								<input type="text" class="form-control col-6 mt-2" id="Daum_extraAddress" placeholder="참고항목" disabled="disabled">
							</div>
						</div>
					</div>
				    <!-- Sign in button -->
				    <button class="btn btn-info btn-block my-4" type="submit">가입하기</button>
				</form>
			</div>
		</div>
	</div>