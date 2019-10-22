<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
th {
	width:90px;
}

button {
	margin-right:5px;
}
</style>

<div>
	<div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
		<h2>쿠폰함</h2>
	</div>
	<div class="row">
		<div class="col-md-6" style="display:inline;">
			<div class="page-header">
				<h3>운동시설 쿠폰</h3>
			</div>
			<div>
				<table class="table">
					<thead>
						<tr>
							<th>시설명</th>
							<th style="text-align:left">이벤트 내역</th>
							<th>유효기간</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>OO수영장</td>
							<td>10월 이벤트 5% 할인쿠폰</td>
							<td>2019-10-01~<br />2019-10-31
							</td>
							<td><button class="btn purple-gradient">사용</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-6" style="display:inline;">
			<div >
				<div class="page-header">
					<h3>운동메이트 쿠폰</h3>
				</div>
				
				<table class="table">
					<thead>
						<tr>
							<th>쿠폰이름</th>
							<th style="text-align:left">적용상품</th>
							<th>유효기간</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>8월 출석체크 개근상</td>
							<td>스타벅스 아메리카노</td>
							<td>2019-10-01~<br/>2019-10-31
							</td>
							<td><button class="btn purple-gradient">사용</button></td>
						</tr>
					</tbody>
				</table>
				
			</div>
		</div>
	</div>

	<!-- 쿠폰사용 모달 -->
	<div class="modal fade" id="coupon-modal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">

		<!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
		<div class="modal-dialog modal-dialog-centered" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">쿠폰 사용</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">쿠폰을 사용하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn blue-gradient">바코드로 받기</button>
					<button type="button" class="btn blue-gradient">QR코드로 받기</button>
					<button type="button" class="btn peach-gradient" data-dismiss="modal">사용안함</button>
					
				</div>
			</div>
		</div>
	</div>

</div>

<script>
<!-- 쿠폰사용 모달 -->
$(function(){
	$('button').click(function(){
		$('#coupon-modal').modal('show');
	});
});
</script>