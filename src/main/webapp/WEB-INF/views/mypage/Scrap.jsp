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
	text-align: center;
}

td:nth-child(4) {
	text-align: left;
}

td:nth-child(1) {
	width:30px;
}

td:nth-child(2) {
	width:100px;
}

ul {
	align-content: center;
}
</style>
<div class="container">
	<div class="page-header">
		<h2>스크랩</h2>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div style="float:right;">
				<button type="button" class="btn btn-success" style="height:38px;">삭제</button>
			</div>
			<table class="table" style="margin-top:50px;">
				<thead>
					<tr>
						<td><span style="border: 1px solid #cbcbcb; width:25px; height:25px; display:inline-block;"><input type="checkbox" value="all"></span></td>
						<th>글번호</th>
						<th>게시판 구분</th>
						<th style="text-align: left">제목</th>
						<th>작성일자</th>
						<th>스크랩일자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>10</td>
						<td>자유게시판</td>
						<td>오늘의 일상10</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>9</td>
						<td>자유게시판</td>
						<td>오늘의 일상9</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>8</td>
						<td>자유게시판</td>
						<td>오늘의 일상8</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>7</td>
						<td>자유게시판</td>
						<td>오늘의 일상7</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>6</td>
						<td>자유게시판</td>
						<td>오늘의 일상6</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>5</td>
						<td>자유게시판</td>
						<td>오늘의 일상5</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>4</td>
						<td>자유게시판</td>
						<td>오늘의 일상4</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>3</td>
						<td>자유게시판</td>
						<td>오늘의 일상3</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>2</td>
						<td>자유게시판</td>
						<td>오늘의 일상2</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>1</td>
						<td>자유게시판</td>
						<td>오늘의 일상1</td>
						<td>2019-10-03</td>
						<td>2019-10-05</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row" style="float:right; z-index:2">
		<div class="input-group col-md-12 col-xs-12">
			<div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="title">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
			</div>
			<div>
				<input type="text" class="form" placeholder="Search" style="height:38px">
			</div>
			<div class="input-group-append">
				<button class="btn btn-success" type="submit" style="height:38px">검색</button>
			</div>
		</div>
	</div>
	<div>
		<br/>
	</div>
	<div class="col-xs-12 col-sm-12" style="z-index: 1">
		<div class="form-group">
			<ul class="pagination justify-content-center" style="padding-left:40%;padding-top:3%">
				<li class="page-item"><a class="page-link" href="#">◀</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">▶</a></li>
			</ul>
		</div>
	</div>
</div>