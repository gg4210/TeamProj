<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>

#weekday_open_text{
	display:inline;
}
#weekday_end_text{
	display:inline;
}
#weekend_open_text{
	display:inline;
}
#weekend_end_text{
	display:inline;
}

</style>

<div class="container">
	<div class="card card-body">
	
		<!-- 운영시간 시작 -->		
		<div class="row">
			<div class="col">
				<p>운영시간</p>
			        <p>주중</p>				        

			        <div class="row form-inline ml-1">
			            <input type="text" class="form-control" id="weekday_open_text">&nbsp&nbsp-&nbsp&nbsp<input type="text" class="form-control" id="weekday_end_text">
			        </div>
			        <div class="row ml-1">
			        	<div id="weekday_open_timePicker"></div><div id="weekday_end_timePicker"></div>
			        </div>
			         
			        <p>주말</p>

			        <div class="row form-inline ml-1">
			            <input type="text" id="weekend_open_text" class="form-control">&nbsp&nbsp-&nbsp&nbsp<input type="text" id="weekend_end_text" class="form-control">
			        </div>
			        <div class="row ml-1">
			        	<div id="weekend_open_timePicker"></div><div id="weekend_end_timePicker"></div>
			        </div>	        
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p>주말</p>
			</div>
		</div>
		<!-- 운영시간 끝-->
		
		<!-- 종목 시작 -->	
		<div class="row">
			<div class="col">
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
		</div>
		<!-- 종목 끝 -->	
		
		<!-- 센터소개 시작 -->			
		<div class="row">
			<div class="col">
				<label for="center-info-textarea">센터소개</label>
				<textarea class="form-control" id="center-info-textarea" rows="7"></textarea>
			</div>
		</div>		
		<!-- 센터소개 끝 -->
		
		<!-- 제공서비스 시작 -->
		<div class="row">
			<div class="col">
				<label for="form-check">제공 서비스</label>
				
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
		<!-- 제공서비스 끝 -->
		
		<!-- 태그 받기 시작 -->
		<div class="row">
			<div class="col">
				<label for="tag-input">태그</label> 
				<input type="text" class="form-control" name="work-tag" id="work-tag">
			</div>
		</div>
		<!-- 태그 받기 끝 -->
		
		<!-- 이미지 첨부 시작 -->
		<div class="row">
			<div class="col">
			</div>
		</div>
		<!-- 이미지 첨부 끝 -->
		
		<div class="row">
			<div class="col d-flex justify-content-center">
				<button class="btn btn-primary">확인</button>
			</div>
		</div>

		
	</div>
</div>

