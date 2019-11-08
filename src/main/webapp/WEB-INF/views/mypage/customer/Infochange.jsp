<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
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
$(function() {
	
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
</script>
<div class="container" id="info_change">
   	<div class="row align-items-center" id="curow">
   		<form class="text-center border border-light pt-5 pl-5 pr-5 pb-4" action="#!">
   			<p class="h4 mb-4">내 정보 수정</p>
    			<div class="row">
			   	<!-- 사진 -->
				<div class="col-3" style="margin-top:5%;">
					<div class="wrap-custom-file" id="infoc_file">
						<input type="file" name="image1" id="image1" accept=".gif, .jpg, .png"/>
						<label for="image1" style="background-image:url('<c:url value="/resources/images/girl.png"/>');background-size: cover;background-position: center;">
							<span></span>
						</label>
					</div>
			  	</div>
			   	<div class="col-9">
			   		<div class="form-inline text-left">
			   			<label for="" class="col-md-3 mb-2">이름:</label>
					    <!-- 이름 -->
					    <input maxlength="5" type="text" id="Name" class="form-control mb-2 col-3" placeholder="이름을 입력하세요.">
					</div>
					<!-- 아이디 -->
					<div class="form-inline text-left">
						<label for="Id" class="col-md-3 mb-2">아이디:</label>
						<input maxlength="14" type="text" id="Id" class="form-control mb-2 col-md-4" placeholder="아이디">
				    </div>
				    
				    <!-- Password -->
				    <div class="form-inline text-left">
						<label for="Password" class="col-md-3 mb-2">비밀번호:</label>
					    <input type="password" maxlength="16" id="Password" class="form-control col-md-5 mb-2" placeholder="비밀번호를 입력하세요.">
				    </div>
				    
				    <!-- Password re-->
				    <div class="form-inline text-left">
						<label class="col-md-3 mb-2">비밀번호 재입력:</label>
				    	<input type="password" maxlength="16" id="Password_re" class="form-control col-md-5 mb-2" placeholder="비밀번호를 다시 입력하세요.">
				    </div>
				    
				    <!-- 이메일 -->
				    <div class="form-inline mb-2">
				    	<label class="col-md-3">이메일 주소:</label>
				    	<input type="email" maxlength="16" id="email" class="form-control col-md-6 mb-2" placeholder="이메일주소를 입력하세요.">
				    	<div class="input-group mb-2 offset-md-3 col-md-4 pl-0">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
					        </div>
							<input type="text" disabled class="form-control col-md-12" id="emailhost" value="naver.com">
						</div>
						<select class="browser-default custom-select mb-2">
							<option selected>-이메일 유형-</option>
							<option value="1">네이버</option>
							<option value="2">다음</option>
							<option value="3">구글</option>
							<option value="4">기타</option>
						</select>
					</div>
					
					<!-- 휴대폰 번호 -->
					<div class="form-inline mb-3" id="Cel">
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
					<div class="form-inline mb-3" id="region">
						<label class="col-md-3 text-left">관심 지역:</label>
						<div class="row justify-content-start col-md-9">
							<input type="text" class="form-control col-md-3 mt-2" id="Daum_postcode" placeholder="우편번호" disabled="disabled">
							<button type="button" class="btn btn-primary mb-2 col-md-3" onclick="DaumPostcode()" value="우편번호 찾기">우편번호</button>
						</div>
						<div class="row offset-md-3 pl-0 col">
							<input type="text" class="form-control col-10 mt-2 md-2" id="Daum_address" placeholder="주소" disabled="disabled"><br>
							<input type="text" class="form-control col-4 mt-2 md-2" id="Daum_detailAddress" placeholder="상세주소">
							<input type="text" class="form-control col-4 mt-2 md-2" id="Daum_extraAddress" placeholder="참고항목" disabled="disabled">
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
			</div>
			<button class="btn btn-info offset-md-5 col-md-2" id="startchange" type="button">수정 완료</button>
		</form>
	</div>
</div>