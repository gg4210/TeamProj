<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="<c:url value='/resources/validation/jquery.validate.js'/>"></script>
<script>
$( document ).ready( function () {
	$( "#joinform" ).validate( {
		rules: {
			name: {
				required: true,
				minlength: 2
			},
			password: {
				required: true,
				rangelength: [4,16]
			},
			password_re: {
				required: true,
				rangelength: [4,16],
				equalTo: "#password1"
			},
			id: {
				required: true,
				minlength: 3
			},
			nick_name: {
				required: true
			}
		},
		messages: {
			name: {
				required: "이름을 입력해주세요.",
				minlength: "이름은 최소 2자 이상 입력해야합니다."
			},
			password: {
				required: "비밀번호를 입력해주세요.",
				rangelength: "비밀번호는 최소 4자에서 최대 16자로 입력하셔야합니다."
			},
			password_re: {
				required: "비밀번호를 다시 입력해주세요.",
				rangelength: "비밀번호는 최소 4자에서 최대 16자로 입력하셔야합니다.",
				equalTo: "위에서 입력하셨던 비밀번호와 일치하지 않습니다."
			},
			id: {
				required: "아이디를 입력해주세요.",
				minlength: "아이디는 최소 3자 이상으로 입력하셔야합니다."
			},
			nick_name: {
				required:"닉네임을 입력해주세요."
			}
		},
		errorElement: "em",
		errorPlacement: function ( error, element ) {
			// Add the `help-block` class to the error element
			error.addClass( "help-block" );
			console.log(error);
			console.log(element);

			// Add `has-feedback` class to the parent div.form-group
			// in order to add icons to inputs
			element.parents( ".col-sm-5" ).addClass( "has-feedback" );
			// Add the span element, if doesn't exists, and apply the icon classes to it.
		},
		success: function ( label, element ) {
			// Add the span element, if doesn't exists, and apply the icon classes to it.
		},
		highlight: function ( element, errorClass, validClass ) {
			$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
			$( element ).next( "span" ).addClass( "fa-times" ).removeClass( "fa-check" );
			if ( $( element ).next( "span" )[ 0 ] ) {
				$( element ).next( "span" ).css("color","red").css("display","block");
				$(element).css("border","2px solid red");
			}
		},
		unhighlight: function ( element, errorClass, validClass ) {
			$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
			$( element ).next( "span" ).addClass( "fa-check" ).removeClass( "fa-times" );
			if ( $( element ).next( "span" )[ 0 ] ) {
				$( element ).next( "span" ).css("color","green").css("display","block");
				$(element).css("border","2px solid green");
			}
		}
	} );
} );
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
	var i=cellphone1base.options.selectedIndex;
	var cellphone1=cellphone1base.options[i].text;
	
	cellphone2base=document.getElementById('cellphone2');
	var cellphone2=cellphone2base.value;
	
	cellphone3base=document.getElementById('cellphone3');
	var cellphone3=cellphone3base.value;
	
	cellphone_totalbase=document.getElementById('cellphone_total');
	//var cellphone_total=cellphone1+'-'+cellphone2+'-'+cellphone3;
	cellphone_totalbase.value=cellphone1+'-'+cellphone2+'-'+cellphone3;
	
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
	
	
	var formbase=document.getElementById('joinform');
	
	var namevalue=document.getElementById('name').value;
	var idvalue=document.getElementById('idcomp').value;
	var passwordvalue=document.getElementById('password1').value;
	var password_revalue=document.getElementById('password_re').value;
	var nickvalue=document.getElementById('nick_name').value;
	console.log($('.valid'));
	var inter = document.getElementById('inter_sports_total').value;
	inter=$("input:checkbox:checked").eq(0).val();
	for(var i=1;i<$("input:checkbox:checked").length;i++){
		inter+=','+$("input:checkbox:checked").eq(i).val();
	}
	console.log(inter);
	$('#inter_sports_total').val(inter);
	if(document.getElementById('my_comment').value =="undefinded"){
		document.getElementById('my_comment').value=$('#my_comment').attr("placeholder");
		console.log(document.getElementById('my_comment').value);
	}
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
<div class="container pt-20" id="cujoin">
   	<div class="row align-self-center" id="curow">
   		<form class="needs-validation text-center border border-light pt-5 pl-5 pr-5 pb-4" id="joinform" onsubmit="submit_join()" action="<c:url value='/joincomplete.do?${_csrf.parameterName}=${_csrf.token}'/>" method="post" novalidate>
   			<p class="h4 mb-4">개인 회원가입</p>
    			<div class="row">
			   	<!-- 사진 -->
				<div class="col-md-3" style="margin-top:5%;">
					<div class="wrap-custom-file">
						<input type="file" name="picture" id="image1" accept=".gif, .jpg, .png"/>
						<label for="image1">
							<span>사진 등록하기<br/>Click</span>
						</label>
					</div>
			  	</div>
			   	<div class="col-md-9">
			   		<div class="form-inline text-left">
			   			<label for="name" class="col-md-3 mb-2">이름:</label>
					    <!-- 이름 -->
					    <input type="text" id="name" name="name" class="form-control mb-2 col-10 col-md-3" placeholder="이름을 입력하세요.">
					    <span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
					</div>
					<div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="name-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="name" style="display:none;color:red;"></em>
						</div>
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
				    <input type="hidden" id="authority" name="authority" value="ROLE_USER">
				    
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
				    	<div class="input-group mb-2 offset-md-3 col-6 col-md-4 pl-0">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
					        </div>
							<input type="text" disabled class="form-control col-md-12" id="emailhost" value="">
						</div>
						<select class="browser-default custom-select mb-2 col-6 col-md-2" onchange="emailtypech()" id="emailtype">
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
						<label class="col-12 col-md-3 pl-0 pl-md-3 text-left">휴대폰 번호:</label>
						<select id="cellphone1" class="browser-default custom-select col-4 col-md-2 text-center">
						  <option selected value="1">010</option>
						  <option value="2">011</option>
						  <option value="3">016</option>
						  <option value="4">017</option>
						  <option value="5">018</option>
						  <option value="6">019</option>
						</select>
						<p>&nbsp;&nbsp;-&nbsp;&nbsp;</p>
						<input id="cellphone2" type="tel" maxlength="4" class="col-3 col-md-2 text-center"/>
						<p>&nbsp;&nbsp;-&nbsp;&nbsp;</p>
						<input id="cellphone3" type="tel" maxlength="4" class="col-3 col-md-2 text-center"/>
						<input type="hidden" name="cellphone" id="cellphone_total" value="">
					</div>
					<div class="form-inline mb-3" id="address">
						<label class="col-12 col-md-3 pl-md-3 pl-0 text-left">관심 지역:</label>
						<div class="row justify-content-start pl-3 pl-md-3 pr-0 col-md-9 col-12">
							<input type="text" class="form-control col-6 col-md-3 mt-2" id="Daum_postcode" placeholder="우편번호" disabled="disabled">
							<button type="button" class="btn btn-primary mb-2 mr-0 col-5 col-md-3" onclick="DaumPostcode()" value="우편번호 찾기">우편번호</button>
						</div>
						<div class="row offset-md-3 pl-3 pl-md-0 col-md-9 col-12">
							<input type="text" class="form-control col-12 col-md-9 mt-2 md-2" id="Daum_address" placeholder="주소" disabled="disabled"><br>
							<input type="text" class="form-control col-4 col-md-4 mt-2 md-2 pr-3" id="Daum_detailAddress" placeholder="상세주소">
							<input type="text" class="form-control offset-1 col-7 col-md-4 mt-2 md-2" id="Daum_extraAddress" placeholder="참고항목" disabled="disabled">
						</div>
						<input type="hidden" name="address" id="address_total" value="">
						<input type="hidden" name="detail_address" id="addressdetail" value="">
						<input type="hidden" name="zipcode" id="zipcode" value="">
					</div>
				</div>  
					
				<div class="form-inline mb-3" >
					<label class="col-md-3 text-left">관심 운동:</label>
					<div class="col-md-9 text-left" id="inter_sports_list">
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline1" value="헬스">
						  <label class="custom-control-label" for="defaultInline1">헬스</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline2" value="GX">
						  <label class="custom-control-label" for="defaultInline2">GX</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline3" value="요가">
						  <label class="custom-control-label" for="defaultInline3">요가</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline4" value="필라테스">
						  <label class="custom-control-label" for="defaultInline4">필라테스</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline5" value="에어로빅">
						  <label class="custom-control-label" for="defaultInline5">에어로빅</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline6" value="스피닝">
						  <label class="custom-control-label" for="defaultInline6">스피닝</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline7" value="클라이밍">
						  <label class="custom-control-label" for="defaultInline7">클라이밍</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline8" value="수영">
						  <label class="custom-control-label" for="defaultInline8">수영</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline9" value="골프">
						  <label class="custom-control-label" for="defaultInline9">골프</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline10" value="복싱">
						  <label class="custom-control-label" for="defaultInline10">복싱</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline11" value="크로스핏">
						  <label class="custom-control-label" for="defaultInline11">크로스핏</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline12" value="기타">
						  <label class="custom-control-label" for="defaultInline12">기타</label>
						</div>
						<input type="hidden" name="inter_sports" id="inter_sports_total" value="">
					</div>
				</div>
				<div class="form-inline mb-3 col-12" >
					<label class="col-md-3 text-left">나의 코멘트:</label>
					<textarea class="col-md-9 text-left" id="my_comment" name="my_comment" rows="10" placeholder="잘 부탁드립니다."></textarea>
				</div>
			</div>
			<input type="hidden" id="enabled" name="enabled" value="1">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button class="btn btn-info offset-md-10 col-md-2" id="startchange" type="submit">가입 완료</button>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</form>
	</div>
</div>