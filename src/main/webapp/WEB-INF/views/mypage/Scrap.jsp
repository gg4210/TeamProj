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

td:nth-child(4) {
	text-align:left;
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
				<button class="btn purple-gradient btn-sm">삭제</button>
			</div>
			
			<table class="table" style="margin-top:50px;">
				<thead>
					<tr>
						<th scope="col" class="text-center"><span style="border: 1px solid #cbcbcb; width:25px; height:25px; display:inline-block;"><input type="checkbox" value="all"></span></td>
						<th scope="col" class="text-center">글번호</th>
						<th scope="col" class="text-center">게시판 구분</th>
						<th scope="col" style="width:60%">제목</th>
						<th scope="col" class="text-center">스크랩일자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center"><input type="checkbox"></td>
						<td class="text-center">10</td>
						<td class="text-center">자유게시판</td>
						<td>오늘의 일상10</td>
						<td class="text-center">2019-10-05</td>
					</tr>				
				</tbody>			
			</table>			
		</div><!-- col-md-12 -->
	</div><!-- row 끝 -->
	
	<div class="row" style="z-index:2">
	<div class="col">
		<div class="input-group">
			<div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="title">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
			</div>
			<div>
				<input type="text" class="form" placeholder="Search" style="height:38px">
				<button class="btn blue-gradient btn-sm">검색</button>
			</div>
		</div>		
	</div>

	<div class="row">
		<div class="col">
			<nav>
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
		
</div>




	
	



