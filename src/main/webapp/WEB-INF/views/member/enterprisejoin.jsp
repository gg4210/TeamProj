<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function emailtypech(){
	emailtypebase=document.getElementById('emailtype');
	var j=emailtypebase.options.selectedIndex;
	
	switch(j){
		case 1:
			$('#emailhost').attr("disabled",true);
			$('#emailhost').prop("value","naver.com");
			break;
		case 2:
			$('#emailhost').attr("disabled",true);
			$('#emailhost').prop("value","daum.net");
			break;
		case 3:
			$('#emailhost').attr("disabled",true);
			$('#emailhost').prop("value","gmail.com");
			break;
		case 4:
			$('#emailhost').prop("value","");
			$('#emailhost').removeAttr("disabled");
			break;
		default:
			$('#emailhost').attr("disabled",true);
			$('#emailhost').prop("value","");
	}
}
function submit_join(){
	cellphone1base=document.getElementById('cellphone1');
	var cellphone1=cellphone1base.value;
	
	cellphone2base=document.getElementById('cellphone2');
	var cellphone2=cellphone2base.value;
	
	cellphone3base=document.getElementById('cellphone3');
	var cellphone3=cellphone3base.value;
	
	cellphone_totalbase=document.getElementById('cellphone_total');
	//var cellphone_total=cellphone1+'-'+cellphone2+'-'+cellphone3;
	cellphone_totalbase.value=cellphone1+'-'+cellphone2+'-'+cellphone3;
	
	enidnum1base=document.getElementById('enidnum1');
	var enidnum1=enidnum1base.value;
	
	enidnum2base=document.getElementById('enidnum2');
	var enidnum2=enidnum2base.value;
	
	enidnum3base=document.getElementById('enidnum3');
	var enidnum3=enidnum3base.value;
	
	enidnum_totalbase=document.getElementById('enidnum_total');
	//var enidnum_total=enidnum'-'+enidnum2+'-'+enidnum3;
	enidnum_totalbase.value=enidnum1+'-'+enidnum2+'-'+enidnum3;
	console.log(enidnum_totalbase.value);
	email1base=document.getElementById('email1');
	email2base=document.getElementById('emailhost');
	var email1=email1base.value;
	var email2=email2base.value;
	email_totalbase=document.getElementById('email_total');
	email_totalbase.value=email1+'@'+email2;
	console.log(email_totalbase.value);
	
	mainaddrbase=document.getElementById('Daum_address');
	var mainaddr=mainaddrbase.value;
	address_totalbase=document.getElementById('address_total');
	address_totalbase.value=mainaddr;
	
	addrdetail=document.getElementById('Daum_detailAddress');
	addrex=document.getElementById('Daum_extraAddress');
	zip=document.getElementById('Daum_postcode');
	document.getElementById('addressdetail').value=addrdetail.value+addrex.value;
	document.getElementById('zipcode').value=zip.value;
	console.log(address_totalbase.value);
	console.log(document.getElementById('addressdetail').value);
	console.log(document.getElementById('Daum_extraAddress').value);
	console.log(document.getElementById('Daum_detailAddress').value);
	console.log(document.getElementById('Daum_postcode').value);
	
	
	var formbase=document.getElementById('joinform');
	
	var namevalue=document.getElementById('name').value;
	var idvalue=document.getElementById('idcomp').value;
	var passwordvalue=document.getElementById('password1').value;
	var password_revalue=document.getElementById('password_re').value;
	var nickvalue=document.getElementById('nick_name').value;
	
	if( namevalue != "" && idvalue != "" && passwordvalue != "" && nickvalue != "" && passwordvalue ===password_revalue){
		console.log("넘어갔네요");
		return true;
	}
	else{
		console.log("필수 입력사항을 입력하세요.");
		event.preventDefault();
		event.stopPropagation();
		return false;
	}
}
</script>
<!-- 새로운 폼 -->
<div class="container pt-20 align-self-center" id="cejoin">
   	<div class="row align-self-center col-12 col-md-9" id="curow">
   		<form class="needs-validation text-center border border-light pt-5 pl-5 pr-5 pb-4" id="joinform" onsubmit="submit_join()" action="<c:url value='/Centerjoincomplete.do'/>" method="post" novalidate>
   			<p class="h4 mb-4">사업자 회원가입</p>
    			<div class="row">
			   	<div class="col-12">
			   		<div class="form-inline text-left">
			   			<label for="name" class="col-md-3 mb-2">상호(법인명):</label>
					    <!-- 이름 -->
					    <input type="text" id="name" name="name" class="form-control mb-2 col-10 col-md-3" placeholder="상호를 입력하세요.">
					    <span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
					</div>
					<div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="name-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="name" style="display:none;color:red;"></em>
						</div>
					</div>
						<!-- 사업자 등록번호 -->
					<div class="form-inline">
						<label class="col-md-3 mb-1 text-left">사업자등록번호</label>
						<input type="tel" class="form-control mb-1 col-md-2" maxlength="3" id="enidnum1"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="form-control mb-1 col-md-2" maxlength="2" id="enidnum2"/>
						<span>&nbsp;&nbsp;-&nbsp;&nbsp;</span>
						<input type="tel" class="form-control mb-1 col-md-2" maxlength="5" id="enidnum3"/>
						<input type="hidden" name="creginum" id="enidnum_total" value="">
					</div>
					
					<!-- 아이디 -->
					<div class="form-inline text-left">
						<label for="Id" class="col-md-3 mb-1">아이디:</label>
						<input maxlength="14" type="text" id="idcomp" name="id" class="form-control mb-1 col-10 col-md-4" placeholder="아이디">
						<span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
				    </div>
				    <div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="idcomp-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="idcomp" style="display:none;color:red;"></em>
						</div>
					</div>
				    <!-- 닉네임 -->
				    <div class="form-inline text-left">
						<label for="nick_name" class="col-md-3 mb-1">닉네임:</label>
						<input maxlength="14" type="text" id="nick_name" name="nick_name" class="form-control mb-1 col-10 col-md-4" placeholder="닉네임">
						<span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
				    </div>
				    <div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="nick-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="nick_name" style="display:none;color:red;"></em>
						</div>
					</div>
				    <input type="hidden" id="authority" name="authority" value="ROLE_CENTER">
				    
				    <!-- Password -->
				    <div class="form-inline text-left">
						<label for="password" class="col-md-3 mb-2">비밀번호:</label>
					    <input type="password" maxlength="16" id="password1" name="password" class="form-control col-10 col-md-5 mb-3" placeholder="비밀번호를 입력하세요.">
					    <span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
				    </div>
				    <div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="password1-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="password1" style="display:none;color:red;"></em>
						</div>
					</div>
				    
				    <!-- Password re-->
				    <div class="form-inline text-left">
						<label class="col-md-3 mb-2" for="password_re">비밀번호 재입력:</label>
				    	<input type="password" maxlength="16" id="password_re" name="password_re" class="form-control col-10 col-md-5 mb-3" placeholder="비밀번호를 다시 입력하세요.">
				    	<span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
				    </div>
				    <div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="password_re-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="password_re" style="display:none;color:red;"></em>
						</div>
					</div>
				    
				    <!-- 이메일 -->
				    <div class="form-inline mb-2">
				    	<label class="col-md-3 mb-2 text-left">이메일 주소:</label>
				    	<input type="text" maxlength="16" id="email1" class="form-control col-12 col-md-6 mb-2" placeholder="이메일주소를 입력하세요.">
				    	<div class="input-group mb-2 offset-md-3 col-md-5 pl-0">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
					        </div>
							<input type="text" disabled class="form-control col-md-12" id="emailhost" value="">
						</div>
						<select class="browser-default custom-select mb-2 col-md-3" onchange="emailtypech()" id="emailtype">
							<option selected>-이메일 유형- </option>
							<option value="1">네이버</option>
							<option value="2">다음</option>
							<option value="3">구글</option>
							<option value="4">기타</option>
						</select>
						<input type="hidden" name="email" id="email_total" value="">
					</div>
					
					<!-- 휴대폰 번호 -->
					<div class="form-inline mb-3" id="cellphone">
						<label class="col-12 col-md-3 pl-0 pl-md-3 text-left">전화번호:</label>
						<input id="cellphone1" type="tel" maxlength="3" class="form-control col-md-2 text-center"/>
						<p>&nbsp;&nbsp;-&nbsp;&nbsp;</p>
						<input id="cellphone2" type="tel" maxlength="4" class="form-control col-md-2 text-center"/>
						<p>&nbsp;&nbsp;-&nbsp;&nbsp;</p>
						<input id="cellphone3" type="tel" maxlength="4" class="form-control col-md-2 text-center"/>
						<input type="hidden" name="cellphone" id="cellphone_total" value="">
					</div>
					<div class="form-inline mb-3" id="address">
						<label class="col-12 col-md-3 pl-md-3 pl-0 text-left">사업장 소재지:</label>
						<div class="row justify-content-start pl-3 pl-md-3 pr-0 col-md-9 col-12">
							<input type="text" class="form-control col-md-3 mt-2" id="Daum_postcode" placeholder="우편번호" disabled="disabled">
							<button type="button" class="btn btn-primary mb-2 mr-0 col-md-3" onclick="DaumPostcode()" value="우편번호 찾기">우편번호</button>
						</div>
						<div class="row offset-md-3 pl-3 pl-md-0 col-md-9 col-12">
							<input type="text" class="form-control col-12 col-md-9 mt-2 md-2" id="Daum_address" placeholder="주소" disabled="disabled"><br>
							<input type="text" class="form-control col-md-4 mt-2 md-2 pr-3" id="Daum_detailAddress" placeholder="상세주소">
							<input type="text" class="form-control offset-1 col-md-4 mt-2 md-2" id="Daum_extraAddress" placeholder="참고항목" disabled="disabled">
						</div>
						<input type="hidden" name="address" id="address_total" value="">
						<input type="hidden" name="detail_address" id="addressdetail" value="">
						<input type="hidden" name="zipcode" id="zipcode" value="">
					</div>
				</div>
			</div>
			<input type="hidden" id="enabled" name="enabled" value="1">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button class="btn btn-info align-self-center col-md-3" id="startchange" type="submit">가입 완료</button>
		</form>
	</div>
</div>