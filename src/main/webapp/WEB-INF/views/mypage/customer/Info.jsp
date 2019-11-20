<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="<c:url value='/resources/validation/jquery.validate.js'/>"></script>

<style>
#inter_sports_list .custom-control-input{disabled;}
#infoc_file {
  position: relative;
  display: inline-block;
  width: 200px;
  height: 250px;
  margin: 0 0.5rem 1rem;
  text-align: center;
}

#infoc_file input[type="file"] {
  position: absolute;
  top: 0;
  left: 0;
  width: 2px;
  height: 2px;
  overflow: hidden;
  opacity: 0;
}

#infoc_file label {
  border:1px solid #c7c7c7;
  z-index: 1;
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  width: 100%;
  overflow: hidden;
  padding: 0 0.5rem;
  cursor: pointer;
  background-color: #ffffff;
  border-radius: 4px;
  -webkit-transition: -webkit-transform 0.4s;
  transition: -webkit-transform 0.4s;
  transition: transform 0.4s;
  transition: transform 0.4s, -webkit-transform 0.4s;
}

#infoc_file label span {
  display: block;
  margin-top: 5rem;
  font-size: 1.4rem;
  color: #a8a8a8;
  -webkit-transition: color 0.4s;
  transition: color 0.4s;
}

#infoc_file label:hover {

}

#infoc_file label:hover span { color: #ff0000; }

#infoc_file label.file-ok {
  background-size: cover;
  background-position: center;
  border: none;
}

#infoc_file label.file-ok span {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  padding: 0.3rem;
  font-size: 1.1rem;
  color: #000;
  background-color: rgba(255, 255, 255, 0.7);
}
</style>
<script>
$( document ).ready( function () {
	$( "#chform" ).validate( {
		rules: {
			name: {
				required: true,
				minlength: 2
			},
			password: {
				required: true,
				rangelength: [5,16]
			},
			password_re: {
				required: true,
				rangelength: [5,16],
				equalTo: "#password1"
			},
			id: {
				required: true,
				minlength: 4
			},
			nick: {
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
				rangelength: "비밀번호는 최소 5자에서 최대 16자로 입력하셔야합니다."
			},
			password_re: {
				required: "비밀번호를 다시 입력해주세요.",
				rangelength: "비밀번호는 최소 5자에서 최대 16자로 입력하셔야합니다.",
				equalTo: "위에서 입력하셨던 비밀번호와 일치하지 않습니다."
			},
			id: {
				required: "아이디를 입력해주세요.",
				minlength: "아이디는 최소 4자 이상으로 입력하셔야합니다."
			},
			nick: {
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

function submit_change(){
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
	document.getElementById('addressdetail').value=addrdetail.value+addrex.value;
	console.log(address_totalbase.value);
	console.log(document.getElementById('addressdetail').value);
	
	
	var formbase=document.getElementById('joinform');
	
	var namevalue=document.getElementById('name').value;
	var idvalue=document.getElementById('idcomp').value;
	var passwordvalue=document.getElementById('password1').value;
	var password_revalue=document.getElementById('password_re').value;
	var nickvalue=document.getElementById('nick').value;
	console.log($('.valid'));
	var inter = document.getElementById('inter_sports_total').value;
	inter=$("input:checkbox:checked").eq(0).val();
	for(var i=1;i<$("input:checkbox:checked").length;i++){
		inter+=','+$("input:checkbox:checked").eq(i).val();
	}
	console.log(inter);
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

$(function() {
	console.log("확인")
	console.log("${record}");
	console.log("${record.id}");
	console.log("${record.address}");
	console.log("${record.detail_address}");
	console.log("${record.zipcode}");
	console.log("${record.cellphone}");
	console.log("${record.cellphone}");
	var cell="${record.cellphone}";
	var cellphone=cell.split("-");
	$('#cellphone1 option').each(function(){
		var i=$(this).text;
		console.log($(this).text==cellphone[0]);
		if($(this).text==cellphone[0]){
			$(this).prop("selected",true);
		}
		else{
			$(this).prop("selected",false);
		}
	});
	$('#cellphone2').val(cellphone[1]);
	$('#cellphone3').val(cellphone[2]);
	console.log("${record.email}");
	var ema="${record.email}";
	var email=ema.split("@");
	$('#email').val(email[0]);
	$('#emailhost').val(email[0]);
	//photoUpload
	$('input[type="file"]').each(function(){
		  var $file = $(this),
		      $label = $file.next('label'),
		      $labelText = $label.find('span'),
		      labelDefault = $labelText.text();
	
		  $file.on('change', function(event){
		    var fileName = $file.val().split( '\\' ).pop(),
		        tmppath = URL.createObjectURL(event.target.files[0]);
		    if( fileName ){
		      $label
		        .addClass('file-ok')
		        .css('background-image', 'url(' + tmppath + ')');
		      $labelText.text(fileName);
		      console.log(fileName);
		    }else{
		      $label.removeClass('file-ok');
		      $labelText.text(labelDefault);
		    }
		  });
		  
		});////////////
		
});

function DaumPostcode(){
	 new daum.Postcode({
	        oncomplete: function(data) {
	        	var addr = ''; // 주소 변수
             var extraAddr = ''; // 참고항목 변수
             
             if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                 addr = data.roadAddress;
             } else { // 사용자가 지번 주소를 선택했을 경우(J)
                 addr = data.jibunAddress;
             }
             
             if(data.userSelectedType === 'R'){
                 // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                     extraAddr += data.bname;
                 }
                 // 건물명이 있고, 공동주택일 경우 추가한다.
                 if(data.buildingName !== '' && data.apartment === 'Y'){
                     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                 }
                 // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                 if(extraAddr !== ''){
                     extraAddr = ' (' + extraAddr + ')';
                 }
                 // 조합된 참고항목을 해당 필드에 넣는다.
                 document.getElementById("Daum_extraAddress").value = extraAddr;
             
             } else {
                 document.getElementById("Daum_extraAddress").value = '';
             }
             document.getElementById('Daum_postcode').value = data.zonecode;
             document.getElementById("Daum_address").value = addr;
             // 커서를 상세주소 필드로 이동한다.
             document.getElementById("Daum_detailAddress").focus();
	        }
	    }).open();
}

function changestart(){
	$('#chform input').each(function(){
		if($(this).prop("disabled")==true){
			if($(this).prop("id")==$("#emailhost").prop("id")
					|| $(this).prop("id")==$("#Daum_postcode").prop("id")
					|| $(this).prop("id")==$("#Daum_address").prop("id")
					|| $(this).prop("id")==$("#Daum_extraAddress").prop("id")){
				$(this).prop("disabled",true);
			}
			else{
				$(this).prop("disabled",false);
			}
		}
	});
	$('#chform select').each(function(){
		if($(this).prop("disabled")==true){
			$(this).prop("disabled",false);
		}
	});
	$('#chform textarea').prop("disabled",false);
	$('#chform button').prop("hidden",false);
	$('#start').prop("hidden",true);
	$('#endchange').prop("hidden",false);
}
</script>
<div class="container" id="info">
   	<div class="row align-items-center" id="curow">
   		<form class="text-center border border-light pt-5 pl-5 pr-5 pb-4" onsubmit="submit_change()" action="<c:url value='/user/changecomplete.do'/>" id="chform">
   			<p class="h4 mb-4">내 정보</p>
    			<div class="row">
			   	<!-- 사진 -->
				<div class="col-3" style="margin-top:5%;">
					<div class="wrap-custom-file" id="infoc_file">
						<input type="file" name="image1" id="image1" accept=".gif, .jpg, .png" disabled/>
						<label for="image1" style="background-image:url('<c:url value="/resources/images/girl.png"/>');background-size: cover;background-position: center;">
							<span></span>
						</label>
					</div>
			  	</div>
			   	<div class="col-9">
			   		<div class="form-inline text-left">
			   			<label for="Name" class="col-md-3 mb-2">이름:</label>
					    <!-- 이름 -->
					    <input maxlength="5" type="text" id="name" name="name" class="form-control mb-2 col-3" value="${record.name }"  placeholder="이름을 입력하세요." disabled>
					    <span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
					</div>
					<!-- 아이디 -->
					<div class="form-inline text-left">
						<label for="Id" class="col-md-3 mb-1">아이디:</label>
						<input maxlength="14" type="text" id="idcomp" name="id" class="form-control mb-1 col-md-4" value="${record.id}"  placeholder="아이디" disabled>
				    </div>
				    <div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="idcomp-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="idcomp" style="display:none;color:red;"></em>
						</div>
					</div>
				    <!-- 닉네임 -->
				    <div class="form-inline text-left">
						<label for="Nick" class="col-md-3 mb-1">닉네임:</label>
						<input maxlength="14" type="text" id="nick" name="nick" class="form-control mb-1 col-10 col-md-4" value="${record.nick_name}" placeholder="닉네임" disabled>
						<span class="fa form-control-feedback col-1 fa-check" style="color:green;display:none;"></span>
				    </div>
				    <div class="col-12 p-0 m-0">
						<div class="row p-0 m-0">
							<em id="nick-error" class="error help-block offset-md-3 col-10 col-md-9 text-left pt-0 pb-0 mt-0 mb-0" for="nick" style="display:none;color:red;"></em>
						</div>
					</div>
				    <input type="hidden" id="authority" name="authority" value="ROLE_USER">
				    
				    <!-- Password -->
				    <div class="form-inline text-left">
						<label for="password" class="col-md-3 mb-2">비밀번호:</label>
					    <input type="password" maxlength="16" id="password1" name="password" class="form-control col-10 col-md-5 mb-3" value="${record.password}" placeholder="비밀번호를 입력하세요." disabled>
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
				    	<input type="password" maxlength="16" id="password_re" name="password_re" class="form-control col-10 col-md-5 mb-3" value="${record.password}" placeholder="비밀번호를 다시 입력하세요." disabled>
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
				    	<input type="email" maxlength="16" id="email" class="form-control col-md-6 mb-2" placeholder="이메일주소를 입력하세요." value="" disabled>
				    	<div class="input-group mb-2 offset-md-3 col-md-4 pl-0">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
					        </div>
							<input type="text" disabled class="form-control col-md-12" id="emailhost" value="">
						</div>
						<select class="browser-default custom-select mb-2 col-6 col-md-2" onchange="emailtypech()" id="emailtype" disabled>
							<option selected>-이메일 유형- </option>
							<option value="1">네이버</option>
							<option value="2">다음</option>
							<option value="3">구글</option>
							<option value="4">기타</option>
						</select>
						<input type="hidden" name="email" id="email_total" value="">
					</div>
					
					<!-- 휴대폰 번호 -->
					<div class="form-inline mb-3" id="Cel">
						<label class="col-12 col-md-3 pl-0 pl-md-3 text-left">휴대폰 번호:</label>
						<select id="cellphone1" class="browser-default custom-select col-4 col-md-2 text-center" disabled>
						  <option value="1">010</option>
						  <option value="2">011</option>
						  <option value="3">016</option>
						  <option value="4">017</option>
						  <option selected value="5">018</option>
						  <option value="6">019</option>
						</select>
						<p>&nbsp;&nbsp;-&nbsp;&nbsp;</p>
						<input type="tel" maxlength="4" class="col-md-2 text-center" id="cellphone2" value="" disabled/>
						<p>&nbsp;&nbsp;-&nbsp;&nbsp;</p>
						<input type="tel" maxlength="4" class="col-md-2 text-center" id="cellphone3" value="" disabled/>
						<input type="hidden" name="cellphone" id="cellphone_total" value="">
					</div>
					<div class="form-inline mb-3" id="region">
						<label class="col-md-3 text-left">관심 지역:</label>
						<div class="row justify-content-start col-md-9">
							<input type="text" class="form-control col-md-3 mt-2" id="Daum_postcode" placeholder="우편번호" disabled>
							<button type="button" class="btn btn-primary mb-2 mr-0 col-5 col-md-3" onclick="DaumPostcode()" value="우편번호 찾기" hidden="true">우편번호</button>
						</div>
						<div class="row offset-md-3 pl-3 pl-md-0 col-md-9 col-12">
							<input type="text" class="form-control col-12 col-md-9 mt-2 md-2" id="Daum_address" placeholder="주소" disabled><br>
							<input type="text" class="form-control col-4 col-md-4 mt-2 md-2 pr-3" id="Daum_detailAddress" placeholder="상세주소" disabled>
							<input type="text" class="form-control offset-1 col-7 col-md-4 mt-2 md-2" id="Daum_extraAddress" placeholder="참고항목" disabled>
						</div>
						<input type="hidden" name="address" id="address_total" value="">
						<input type="hidden" name="addressdetail" id="addressdetail" value="">
					</div>
				</div>
				<div class="form-inline mb-3">
					<label class="col-md-3 text-left">관심 운동:</label>
					<div class="col-md-9 text-left" id="inter_sports_list">
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline1" value="헬스" disabled>
						  <label class="custom-control-label" for="defaultInline1">헬스</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline2" value="GX" disabled>
						  <label class="custom-control-label" for="defaultInline2">GX</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline3" value="요가" disabled>
						  <label class="custom-control-label" for="defaultInline3">요가</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline4" value="필라테스" disabled>
						  <label class="custom-control-label" for="defaultInline4">필라테스</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline5" value="에어로빅" disabled>
						  <label class="custom-control-label" for="defaultInline5">에어로빅</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline6" value="스피닝" disabled>
						  <label class="custom-control-label" for="defaultInline6">스피닝</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline7" value="클라이밍" disabled>
						  <label class="custom-control-label" for="defaultInline7">클라이밍</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline8" value="수영" disabled>
						  <label class="custom-control-label" for="defaultInline8">수영</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline9" value="골프" disabled>
						  <label class="custom-control-label" for="defaultInline9">골프</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline10" value="복싱" disabled>
						  <label class="custom-control-label" for="defaultInline10">복싱</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline11" value="크로스핏" disabled>
						  <label class="custom-control-label" for="defaultInline11">크로스핏</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
						  <input type="checkbox" class="custom-control-input" id="defaultInline12" value="기타" disabled>
						  <label class="custom-control-label" for="defaultInline12">기타</label>
						</div>
					</div>
				</div>
				<div class="form-inline mb-3 col-12" >
					<label class="col-md-3 text-left">나의 코멘트:</label>
					<textarea class="col-md-9 text-left" id="my_comment" name="my_comment" rows="10" placeholder="잘 부탁드립니다." disabled>${record.my_comment}</textarea>
				</div>
			</div>
			<input type="hidden" id="enabled" name="enabled" value="1">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button class="btn btn-info offset-md-10 col-md-2" id="start" type="button" onclick="changestart()">수정</button>
			<button class="btn btn-info offset-md-10 col-md-2" id="endchange" type="submit" hidden="true">수정완료</button>
		</form>
	</div>
</div>