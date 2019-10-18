<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
$(function(){
	$(':checkbox').click(function(){
		if($(this).val() == 'all'){
			if($(this).prop('checked')){
				$(':checkbox:gt(0)').each(function(){
					$(this).prop('checked',true);
				});
			}
			else{
				$(':checkbox:gt(0)').each(function(){
					$(this).prop('checked',false);
				});
			}
		}
		else{
			if($(this).prop('checked')){
				if($(':checkbox:gt(0)').length == $(':checkbox:checked').length){
					$(':checkbox:first').prop('checked',true);
				}
			}
			else{
				$(':checkbox:first').prop('checked',false);
			}
		}
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
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="float-right">
				<button class="btn purple-gradient p-2 px-4">삭제</button>
			</div>
			
			<table class="table table-hover" style="margin-top:50px;">
				<thead>
					<tr>
						<th scope="col" class="text-center">
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
							    <label class="custom-control-label" for="defaultUnchecked"></label>
							</div>
						</th>
						<th scope="col" class="text-center" style="width:10%">글번호</th>
						<th scope="col" class="text-center">#</th>
						<th scope="col" class="text-center" style="width:50%">제목</th>
						<th scope="col" class="text-center">스크랩일자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">
							<div class="custom-control custom-checkbox">
							    <input type="checkbox" class="custom-control-input">
							    <label class="custom-control-label" for="defaultUnchecked"></label>
							</div>						
						</td>
						<td class="text-center">10</td>
						<td class="text-center">자유게시판</td>
						<td>오늘의 일상10</td>
						<td class="text-center">2019-10-05</td>
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
					<li class="page-item"><a class="page-link" href="#">◀</a></li>
					<li class="page-item"><a class="page-link" href="#" tabindex="-1">＜</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">＞</a></li>
					<li class="page-item"><a class="page-link" href="#">▶</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- 페이지네이션 끝 -->
	
</div>		




	
	



