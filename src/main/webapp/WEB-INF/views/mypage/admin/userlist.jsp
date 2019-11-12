<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<script src='<c:url value="/resources/utils/table_edit/jquery.tabledit.js"/>'></script>
    
<div class="container">

		<!-- row 1 시작 -->
		<form class="mb-3">
			<div class="form-row">				
				<select class="custom-select col-2 mr-1">
					<option selected>컬럼 수</option>
					<option value="1">10</option>
					<option value="2">25</option>
					<option value="3">50</option>
					<option value="4">100</option>
				</select>
			
				<!-- 오른쪽 -->
				<div class="clearfix col">
					<div class="float-right">
						<input type="text" class="form-control" placeholder="검색어 입력">
					</div>
				</div>
		
			</div><!-- row -->
			
		</form>
		<!-- row 1 끝 -->
		
		<!-- row 2 시작 : 테이블(기능:sort, editable// Ajax 사용)-->
		<div class="row">
			<table class="col table table-hover text-center" id="user-datatable">
				<thead>
					<tr>
						<th>no</th>
						<th width="6%">구분</th>
						<th width="10%">ID</th>
						<th width="8%">이름</th>
						<th width="20%">이메일</th>
						<th>휴대폰 번호</th>
						<th>가입일</th>
						<th width="10%">권한</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>4</td>
						<td>일반</td>
						<td>kim</td>
						<td>김길동</td>
						<td>kim@kim.com</td>
						<td>000-0000-0001</td>
						<td>2019-10-21</td>
						<td>-</td>
					</tr>
					<tr>
						<td>3</td>						
						<td>기업</td>
						<td>lee</td>
						<td>이길동</td>
						<td>lee@lee.com</td>
						<td>111-1111-1111</td>
						<td>2019-10-21</td>
						<td>mapkey1</td>
					</tr>
					<tr>
						<td>2</td>
						<td>기업</td>
						<td>park</td>
						<td>박길동</td>
						<td>park@pakr.com</td>
						<td>222-2222-2222</td>
						<td>2019-10-25</td>						
						<td><button class="btn btn-warning p-2 px-4">승인처리</button></td>
					</tr>
					<tr>
						<td>1</td>
						<td>일반</td>
						<td>woo</td>
						<td>우길동</td>
						<td>woo@woo.com</td>
						<td>333-3333-3333</td>
						<td>2019-10-21</td>
						<td>-</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- row 2 끝 -->
		
		<!-- row 3 시작 -->
		<div class="row d-flex justify-content-center mt-3">
		
			<nav aria-label="Page navigation example">
			  <ul class="pagination pagination-circle pg-blue">
			    <li class="page-item disabled"><a class="page-link">First</a></li>
			    <li class="page-item disabled">
			      <a class="page-link" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">Previous</span>
			      </a>
			    </li>
			    <li class="page-item active"><a class="page-link">1</a></li>
			    <li class="page-item"><a class="page-link">2</a></li>
			    <li class="page-item"><a class="page-link">3</a></li>
			    <li class="page-item"><a class="page-link">4</a></li>
			    <li class="page-item"><a class="page-link">5</a></li>
			    <li class="page-item">
			      <a class="page-link" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			        <span class="sr-only">Next</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link">Last</a></li>
			  </ul>
			</nav>
		
		</div>
		<!--  row 3 끝 -->
</div>


<script type="text/javascript">

$('#user-datatable').Tabledit({
    url: 'example.php',
    columns: {
        identifier: [0, 'id'],
        editable: [[1, '구분'], [2, '아이디'], [3, '이름'], [4, '이메일'], [5, '휴대폰번호'], [6, '가입일'], [7, '권한']]
    }
});

</script>




