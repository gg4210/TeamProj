<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<div class="container">
	<div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
		<h2>홍보</h2>
	</div>
	<div class="row">
		<div class="col-lg-6" style="display:inline;">
			<div class="card">
				<div class="card-body">
					<h3>홍보문구 작성</h3>
					
					<div class="form-group row">
						<label class="control-label pr-2 col-offset-1 col-2" for="title">제목</label>
						<div class="col-12">
							<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-2 col-offset-1 col-2" for="content">내용</label>
						<div class="col-12">
							<textarea rows="10" name="content" id="content" class="form-control" placeholder="내용을 입력하세요"></textarea>
						</div>
					</div>
					
				</div>
				<div class="d-flex justify-content-center">
					<button style="width:20%;" class="btn purple-gradient" id="event-send">전송</button>
				</div>	
			</div>
		</div>
		<div class="col-lg-6" style="display:inline;">
			<div>
				<div class="card">
					<div class="card-body">
					<h3>홍보문구 전송내역</h3>
				
					<div class="row">
						<div class="col">
							<table class="table">
								<thead>
									<tr>
										<th style="text-align:left; width:80%">내용</th>
										<th style="width:20%;text-align:center;">작성일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>스타벅스 아메리카노adslknsadnklsad nklsadnklnklsadknlsadnklsdanklsadnklsadnlksadnlkk lsadnklnsad klnsadknlsdankl</td>
										<td class="align-middle" style="text-align:center;">2019-10-01</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>		
						<!-- 페이지네이션 시작 -->
						<div class="row">
							<div class="col">
								<nav class="d-flex justify-content-center mt-3">
									<ul class="pagination pagination-circle pg-blue">
										<li class="page-item"><a class="page-link" title="처음페이지로 이동" href="#">◀</a></li>
										<li class="page-item"><a class="page-link" title="이전페이지" href="#" tabindex="-1">＜</a></li>
										<li class="page-item active"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item"><a class="page-link" title="다음페이지" href="#">＞</a></li>
										<li class="page-item"><a class="page-link" title="마지막페이지로 이동" href="#">▶</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<!-- 페이지네이션 끝 -->
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 홍보전송 모달 -->
	<div class="modal fade" id="event-modal" tabindex="-1"
		role="dialog" aria-labelledby="eventModalCenterTitle"
		aria-hidden="true">

		<!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
		<div class="modal-dialog modal-dialog-centered" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="eventModalLongTitle">홍보문구 전송</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">홍보문구를 전송하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn blue-gradient">전송</button>
					<button type="button" class="btn peach-gradient" data-dismiss="modal">전송안함</button>
					
				</div>
			</div>
		</div>
	</div>

</div>

<script>
<!-- 홍보전송 모달 -->
$(function(){
	$('#event-send').click(function(){
		$('#event-modal').modal('show');
	});
});
</script>


