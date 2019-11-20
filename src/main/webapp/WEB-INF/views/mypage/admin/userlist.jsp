<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<script src='<c:url value="/resources/utils/table_edit/jquery.tabledit.js"/>'></script>
<script src='<c:url value="/resources/utils/table_edit/jquery.tablesorter.js"/>'></script>
<script src='<c:url value="/resources/utils/table_edit/jquery.tablesorter.widgets.min.js"/>'></script>
<script src='<c:url value="/resources/utils/table_edit/html-table-search.js"/>'></script>
<link href="<c:url value="/resources/utils/table_edit/theme.default.css"/>" rel="stylesheet">

<script type="text/javascript">
$(function(){
	$('#user-datatable').Tabledit({
	    url: 'example.php',
	    columns: {
	        identifier: [0, 'id'],
	        editable: [[1, '구분'], [2, '아이디'], [3, '이름'], [4, '이메일'], [5, '휴대폰번호'], [6, '가입일'], [7, '권한']]
	    }
	});

	$('#user-datatable').tablesorter({
		widgets : [ 'zebra', 'columns' ],
		usNumberFormat : false,
		sortReset : true,
		sortRestart : true
	});
	
	$('#user-datatable').tableSearch({});
});
</script>


<div class="container">
	<!-- row 1 시작 : 테이블(기능:sort, editable// Ajax 사용)-->
	<div class="row">
	
	<form class="mb-3">
		<div class="form-row">				
			<select class="custom-select col mr-1">
				<option selected>전체보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
				<option value="1">10개씩 보기</option>
				<option value="2">25개씩 보기</option>
				<option value="3">50개씩 보기</option>
				<option value="4">100개씩 보기</option>
			</select>
	
		</div><!-- row -->
		
	</form>
	
	<div class="clearfix col">
		<div class="float-right">
			<input type="hidden" class="form-control search" placeholder="검색어 입력">
		</div>
	</div>
	
		<table class="table table-hover text-center tablesorter" id="user-datatable">
			<thead>
				<tr>
					<th>no</th>
					<th width="8%">구분</th>
					<th width="10%">ID</th>
					<th width="8%">이름</th>
					<th width="20%">이메일</th>
					<th>휴대폰 번호</th>
					<th>가입일</th>
					<th width="10%">권한</th>
				</tr>
			</thead>
			<tbody class="pt-3">
				<tr>
					<td>4</td>
					<td>일반</td>
					<td>kim</td>
					<td>김길동</td>
					<td>kim@kim.com</td>
					<td>000-0000-0000</td>
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
					<td>park@park.com</td>
					<td>222-2222-2222</td>
					<td>2019-10-25</td>
					<td><a href="#" data-toggle="modal" data-target="#permit-power-modal" id="permit-power">승인처리</a></td>
					<!-- 
					<td><button class="btn btn-warning p-2 px-4">승인처리</button></td>
					-->
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
	<!-- row 1 끝 -->
	
	<!-- row 2 시작 -->
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
	<!--  row 2 끝 -->
	
	<!-- 센터관리 승인처리 모달 -->
	<div id="permit-power-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalPopoversLabel">센터관리 권한 승인 요청</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">×</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <h5>센터 찾기</h5>
	        <p>이
	          <a role="button" class="btn btn-secondary popover-test" title="" data-content="Popover body content is set in this attribute."
	            data-original-title="Popover title" data-toggle="popover">button</a> 버튼을 눌러 센터를 검색합니다</p>
	        <hr>
	        <h5>센터의 맵키</h5>
	        <p>123456789</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary">확인</button>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	
</div>


<script>
<!-- 센터관리 승인처리 모달 -->
$(function(){
	$('#permit-power').click(function(){
		if($(this).val() === '승인처리'){
			$('#permit-power-modal').modal('show');
		}
		
	});
});
</script>

