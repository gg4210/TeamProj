<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">

	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<div class="form-inline">
					<select class="browser-default custom-select">
						<option selected>검색조건</option>
						<option value="1">전체</option>
						<option value="2">정기이벤트</option>
						<option value="3">특별이벤트</option>
					</select>
					<button type="button" class="btn btn-primary p-2 px-4">
						<i class='fas fa-search'
							style='font-size: 20px; text-align: center'></i>
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col" class="text-center" style="width: 10%">글번호</th>
						<th scope="col" class="text-center" style="width: 15%">카테고리</th>
						<th scope="col" class="text-center" style="width: 65%">제목</th>
						<th scope="col" class="text-center" style="width: 10%">등록일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">2</td>
						<td class="text-center">[이벤트]</td>
						<td>2019-10-26 정기점검 안내</td>
						<td class="text-center">2019-10-21</td>
					</tr>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">[이벤트]</td>
						<td>운동해!偕 서비스가 오픈하였습니다.</td>
						<td class="text-center">2019-10-21</td>
					</tr>
				</tbody>
			</table>
		</div>  <!-- col-md-12 -->
	</div>
	

	<!-- 페이지네이션 시작 -->
	<div class="row">
		<div class="col">
			<nav class="d-flex justify-content-center mt-3">
				<ul class="pagination pagination-circle pg-blue">
					<li class="page-item"><a class="page-link" href="#">◀</a></li>
					<li class="page-item"><a class="page-link" href="#"
						tabindex="-1">＜</a></li>
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
	</div>  <!-- 페이지네이션 끝 -->
</div>

