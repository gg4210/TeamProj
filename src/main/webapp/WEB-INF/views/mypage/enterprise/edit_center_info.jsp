<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<div class="container">
	<div class="card card-body">
		<div>
		
			<h2>수정하기</h2>
			
			<div class="form-group">
				운영시간
				<div class="c-datepicker-date-editor c-datepicker-single-editor J-datepicker-time-range mt10">
		          <i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
		          <input placeholder="Start" name="" class="c-datepicker-data-input only-time" value="">
		          <span class="c-datepicker-range-separator">-</span>
		          <input placeholder="End" name="" class="c-datepicker-data-input only-time" value="">
		        </div>
		        
			</div>
			<div class="form-group">
				<label for="kinds_of_sport">운동종목</label>
				<select name="work-condition" id="kinds_of_sport" class="form-control">
					<option value="1" icon="iw-way">헬스</option>
					<option value="2" icon="iw-crane">필라테스</option>
					<option value="3" icon="iw-scope">수영</option>
					<option value="4" icon="iw-excavator">크로스핏</option>
					<option value="5" icon="iw-key">복싱</option>
					<option value="6" icon="iw-warning">클라이밍</option>
					<option value="7" icon="iw-bag">요가</option>
					<option value="8" icon="iw-dozer">에어로빅</option>
					<option value="9" icon="iw-pickup">GX</option>
					<option value="10" icon="iw-hammer">골프</option>
					<option value="11" icon="iw-drill">스피닝</option>
					<option value="12" icon="iw-note">기타</option>
				</select>
			</div>
			
			<div class="form-group">
				 <label for="center-info-textarea">센터소개</label>
				 <textarea class="form-control" id="center-info-textarea" rows="7"></textarea>
			</div>
			
			<div class="form-group">
				<div class="row">
					<div class="col">
						<label for="form-check">제공 서비스</label>
					</div>			
				</div>
				<div class="row">
					<div class="col">
					<div class="form-check form-check-inline">
						<div class="custom-control custom-checkbox">
						    <input type="checkbox" class="custom-control-input form-check-input" id="clothes">
						    <label class="custom-control-label" for="clothes">운동복</label>
						</div>
						<div class="custom-control custom-checkbox">
						    <input type="checkbox" class="custom-control-input form-check-input" id="parking_lot">
						    <label class="custom-control-label" for="parking_lot">주차</label>
						</div>
						<div class="custom-control custom-checkbox">
						    <input type="checkbox" class="custom-control-input form-check-input" id="locker">
						    <label class="custom-control-label" for="locker">라커</label>
						</div>
						<div class="custom-control custom-checkbox">
						    <input type="checkbox" class="custom-control-input form-check-input" id="wifi">
						    <label class="custom-control-label" for="wifi">와이파이</label>
						</div>
						<div class="custom-control custom-checkbox">
						    <input type="checkbox" class="custom-control-input form-check-input" id="shower">
						    <label class="custom-control-label" for="shower">샤워실</label>
						</div>
						<div class="custom-control custom-checkbox">
						    <input type="checkbox" class="custom-control-input form-check-input" id="sauna">
						    <label class="custom-control-label" for="sauna">찜질방</label>
						</div>
					</div>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				 <label for="tag-input">태그</label>
				 <input type="text" class="form-control" name="work-tag" id="work-tag">
			</div>
			
			<div class="row">
				<div class="col d-flex justify-content-center">
					<button class="btn btn-primary">확인</button>
				</div>
			</div>
			
		</div>
	</div>
</div>


<script>

$(function(){
	 $('.J-datepicker-time-range').datePicker({
         format: 'HH:mm:ss',
         isRange: true,
         min: '04:23:11',
         max: '20:59:59'
       });
	 
	$('input[name="work-tag"]').amsifySuggestags({
		  type :'bootstrap',tagLimit: 5
	});
	
	var beauty = new SelectBeauty({
		el: '#kinds_of_sport',
		length: 5,
		max: 10
	});
});

</script>