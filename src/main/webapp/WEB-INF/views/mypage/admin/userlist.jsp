<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<script src="<c:url value="/resources/MDB-Free_4.8.10/js/addons/datatables.min.js"/>"></script>

    
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
						<th>
							<div class="custom-control custom-checkbox">
							  <input type="checkbox" class="custom-control-input" id="userCheckAll">
							  <label class="custom-control-label" for="userCheckAll"></label>
							</div>						
						</th>
						<th>no</th>
						<th width="8%">구분</th>
						<th width="15%">ID</th>
						<th>이름</th>
						<th width="30%">이메일</th>
						<th>휴대폰 번호</th>
						<th width="5%">권한</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div class="custom-control custom-checkbox">
							  <input type="checkbox" class="custom-control-input" id="customCheck1">
							  <label class="custom-control-label" for="customCheck1"></label>
							</div>	
						</td>
						<td>4</td>
						<td>일반회원</td>
						<td>kim</td>
						<td>김길동</td>
						<td>kim@kim.com</td>
						<td>000-0000-0000</td>
						<td>none</td>
					</tr>
					<tr>
						<td>
							<div class="custom-control custom-checkbox">
							  <input type="checkbox" class="custom-control-input" id="customCheck2">
							  <label class="custom-control-label" for="customCheck2"></label>
							</div>	
						</td>
						<td>3</td>						
						<td>기업회원</td>
						<td>lee</td>
						<td>이길동</td>
						<td>lee@lee.com</td>
						<td>111-1111-1111</td>
						<td>mapkey1</td>
					</tr>
					<tr>
						<td>
							<div class="custom-control custom-checkbox">
							  <input type="checkbox" class="custom-control-input" id="customCheck3">
							  <label class="custom-control-label" for="customCheck3"></label>
							</div>	
						</td>
						<td>2</td>
						<td>기업회원</td>
						<td>park</td>
						<td>박길동</td>
						<td>park@pakr.com</td>
						<td>222-2222-2222</td>
						<td>mapkey2</td>
					</tr>
					<tr>
						<td>
							<div class="custom-control custom-checkbox text-center">
							  <input type="checkbox" class="custom-control-input" id="customCheck4">
							  <label class="custom-control-label" for="customCheck4"></label>
							</div>	
						</td>
						<td>1</td>
						<td>일반회원</td>
						<td>woo</td>
						<td>우길동</td>
						<td>woo@woo.com</td>
						<td>333-3333-3333</td>
						<td>none</td>
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


</script>




