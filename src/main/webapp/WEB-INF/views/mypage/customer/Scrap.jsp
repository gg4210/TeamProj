<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
<!-- 전체선택 -->
$(function(){
	console.log($('#scrap-checkbox-all input:checkbox'));
	console.log($('#scrap-checkbox tr td input:checkbox'));
	$('#scrap-checkbox-all input:checkbox').click(function(){
		if($(this).val() == 'scrap-check-all'){
			if($(this).prop('checked')){
				$('#scrap-checkbox tr td input:checkbox').each(function(){
					$(this).prop('checked',true);
				});
			}
			else{
				$('#scrap-checkbox tr td input:checkbox').each(function(){
					$(this).prop('checked',false);
				});
			}
		}
	});
	$('#scrap-checkbox input:checkbox').click(function(){
		if($(this).prop('checked')){
			if($('#scrap-checkbox tr td input:checkbox').length == $('#scrap-checkbox tr td input:checkbox:checked').length){
				$('#scrap-checkbox-all input:checkbox').prop('checked',true);
			}
		}
		else{
			$('#scrap-checkbox-all input:checkbox').prop('checked',false);
		}
	});
	
	<!-- 스크랩 삭제 모달 -->
	$('#scrap-delete').click(function(){
		$('#scrap-modal').modal('show');
	});
});
</script>
<style>
#page-header {
	font-style: inherit;
}

th, td {
	border-bottom: 1px solid #D8D8D8;
}

td:nth-child(1) {
	width:30px;
}

td:nth-child(2) {
	width:100px;
}


nav > ul a {
	width:35px;
}

</style>


<div class="container">
	<div class="page-header">
		<h2>스크랩</h2>
		<hr/>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="float-right">
				<button id="scrap-delete" class="btn purple-gradient p-2 px-4">삭제</button>
			</div>
			
			<table class="table table-hover" style="margin-top:50px;">
				<thead>
					<tr>
						<th scope="col" class="text-center">
							<div class="custom-control custom-checkbox" id="scrap-checkbox-all">
							    <input type="checkbox" class="custom-control-input" id="scrap-checkall" value="scrap-check-all">
							    <label class="custom-control-label" for="scrap-checkall"></label>
							</div>
						</th>
						<th scope="col" class="text-center" style="width:10%">글번호</th>
						<th scope="col" class="text-center">#</th>
						<th scope="col" class="text-center" style="width:50%">제목</th>
						<th scope="col" class="text-center">작성자</th>
						<th scope="col" class="text-center">스크랩 일자</th>
					</tr>
				</thead>
				<tbody class="text-center" id="scrap-checkbox">
					<tr>
						<td class="text-center">
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id="scrap-check1" value="scrap1">
							    <label class="custom-control-label" for="scrap-check1"></label>
							</div>						
						</td>
						<td class="text-center">10</td>
						<td class="text-center">자유게시판</td>
						<td>오늘의 일상10</td>
						<td class="text-center">길동띠</td>
						<td class="text-center">2019-10-05</td>
					</tr>
					<tr>
						<td class="text-center">
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id="scrap-check2" value="scrap2">
							    <label class="custom-control-label" for="scrap-check2"></label>
							</div>						
						</td>
						<td class="text-center">11</td>
						<td class="text-center">자유게시판</td>
						<td>오늘의 일상11</td>
						<td class="text-center">길동이</td>
						<td class="text-center">2019-11-05</td>
					</tr>
					<tr>
						<td class="text-center">
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id="scrap-check3" value="scrap3">
							    <label class="custom-control-label" for="scrap-check3"></label>
							</div>						
						</td>
						<td class="text-center">12</td>
						<td class="text-center">자유게시판</td>
						<td>오늘의 일상12</td>
						<td class="text-center">길똥</td>
						<td class="text-center">2019-11-15</td>
					</tr>			
				</tbody>			
			</table>			
		</div><!-- col-md-12 -->
	</div><!-- row 끝 -->
	
		<!-- 검색창 -->
			<div class="form-inline d-flex justify-content-center mt-3">
				<select name="searchColumn" class="form-control custom-select mr-2">
					<option value="title">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
				<input type="text" class="form-control" placeholder="Search">
				<button class="btn blue-gradient p-2 px-4">검색</button>
			</div>
		<!-- 검색창 끝 -->		

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
	
	<!-- 스크랩 삭제 모달 -->
	<div class="modal fade" id="scrap-modal" tabindex="-1"
		role="dialog" aria-labelledby="scrapModalCenterTitle"
		aria-hidden="true">

		<!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
		<div class="modal-dialog modal-dialog-centered" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="scrapModalLongTitle">삭제</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">정말로 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn blue-gradient">삭제</button>
					<button type="button" class="btn peach-gradient" data-dismiss="modal">취소</button>
					
				</div>
			</div>
		</div>
	</div>
	
</div>




	
	



