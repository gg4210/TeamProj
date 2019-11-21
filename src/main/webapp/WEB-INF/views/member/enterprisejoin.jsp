<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	if(document.getElementById('my_comment').value =="undefined"){
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
    <div class="container" id="enjoin">
    	<div class="row align-items-center" id="enrow">
		   	<div class="col-md-8 align-items-center">
			    <form class="text-center border border-light p-5" action="#!" id="joinform">
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