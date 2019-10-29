<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="card card-body">
	
		<!-- 수정하기 title 들어갈 공간-->
				
		<form>
			<div class="form-group">
				<!-- 종목 선택 들어갈 공간 -->
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
					</div>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<p>태그</p>
					<!-- 태그 입력란이 들어갈 공간 -->
			</div>
			
			<div class="row">
				<div class="col d-flex justify-content-center">
					<button class="btn btn-primary">확인</button>
				</div>
			</div>
		</form>
	</div>
</div>