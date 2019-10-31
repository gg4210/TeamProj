<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
html, body {
    height: 100%;
}
.content{
	height:100%;
}
#cujoin{
	height:100%;
}
#cujoin #curow{
	height:100%;
}
.card-image-container {
  position: relative;
  width: 100%;
}
.card-img-top {
  opacity: 1;
  display: block table;
  width: 50%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
  margin-bottom:5px;
}

.card-img-middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}
.card-image-container:hover .card-img-top {
  opacity: 0.3;
}

.card-image-container:hover .card-img-middle {
  opacity: 1;
}
.wrap-custom-file {
  position: relative;
  display: inline-block;
  width: 200px;
  height: 250px;
  margin: 0 0.5rem 1rem;
  text-align: center;
}

.wrap-custom-file input[type="file"] {
  position: absolute;
  top: 0;
  left: 0;
  width: 2px;
  height: 2px;
  overflow: hidden;
  opacity: 0;
}

.wrap-custom-file label {
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

.wrap-custom-file label span {
  display: block;
  margin-top: 5rem;
  font-size: 1.4rem;
  color: #a8a8a8;
  -webkit-transition: color 0.4s;
  transition: color 0.4s;
}

.wrap-custom-file label:hover {

}

.wrap-custom-file label:hover span { color: #ff0000; }

.wrap-custom-file label.file-ok {
  background-size: cover;
  background-position: center;
  border: none;
}

.wrap-custom-file label.file-ok span {
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
$(function(){
	
	$('#uploadproimg').click(function(){
		$('#profile-image').modal('show');
	});
	
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
		    }else{
		      $label.removeClass('file-ok');
		      $labelText.text(labelDefault);
		    }
		  });
		  
		});
});
</script>
    <div class="container" id="cujoin">
    	<div class="row align-items-center" id="curow">
		   	<div class="offset-md-2 col-md-8">
			    <form class="text-center border border-light p-5" action="#!">
				
			    <p class="h4 mb-4">개인 회원가입</p>
				<!-- 사진 -->
				<div class="col">
					<div class="wrap-custom-file">
						<input type="file" name="image1" id="image1" accept=".gif, .jpg, .png"/>
						<label for="image1"> 
							<span>사진 등록하기<br/>Click</span>
						</label>
					</div>
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
	</div>
	
	<!-- PLUS MATE 모달 시작 -->
		<div class="modal fade" id="profile-image" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-info modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="col">
						<div class="wrap-custom-file">
							<input type="file" name="image1" id="image1" accept=".gif, .jpg, .png"/>
							<label for="image1"> 
								<span>사진 등록하기<br/>Click</span>
							</label>
						</div>
				  	</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row">
							<div class="col-5">
								<img src="http://placehold.it/500x325" class="img-fluid" alt="">
							</div>
							<div class="col-7">
								<p>
									<strong>프로필 사진 추가하기</strong>
								</p>
								<p>선택하신 프로필 사진을<br/>추가하시겠습니까?</p>
								<button type="button" class="btn btn-info btn-md">확인</button>
								<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
							</div>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- PLUS MATE 모달 끝 -->