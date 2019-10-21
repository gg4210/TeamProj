<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">
	
	<div class="row">
		<div class="col">
		
			<div class="card">
				<div class="card-body">
					<div class="row">
						<select class="custom-select col-2 my-4 ml-3">
							<option value="0" selected>전체보기</option>
							<option value="1">미답변</option>
							<option value="2">답변완료</option>
						</select>	
					</div>
					<table class="table table-hover">
						<thead class="text-center">
							<tr>
								<th>no</th>
								<th>회원구분</th>
								<th>분류</th>
								<th width="40%">제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>답변여부</th>
							</tr>
						</thead>
						<tbody class="text-center">
							<tr>
								<td>4</td>
								<td>일반회원</td>
								<td>회원가입 관련</td>
								<td class="text-left"><a>문의합니다</a></td>
								<td>김고객</td>
								<td>2019-10-21</td>
								<td class="text-danger font-weight-bold">미답변</td>
							</tr>
							<tr>
								<td>3</td>
								<td>일반회원</td>
								<td>센터등록 관련</td>								
								<td class="text-left"><a>문의내역입니다.</a></td>
								<td>이고객</td>
								<td>2019-10-21</td>
								<td class="text-danger font-weight-bold">미답변</td>
							</tr>
							<tr>
								<td>2</td>
								<td>기업회원</td>	
								<td>건의사항</td>							
								<td class="text-left"><a>물어볼게 있어요</a></td>
								<td>박고객</td>
								<td>2019-10-21</td>
								<td class="text-danger font-weight-bold">미답변</td>
							</tr>
							<tr>

								<td>2</td>
								<td>기업회원</td>
								<td>센터등록</td>							
								<td class="text-left"><a>빨리 좀 승인해주세요</a></td>
								<td>조길동</td>
								<td>2019-10-21</td>
								<td class="text-primary font-weight-bold">답변완료</td>
							</tr>
						</tbody>
					</table>
					
					<!-- pagenation-->
					<div class="row d-flex justify-content-center mt-4">
					
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
					<!-- pagenation 끝-->				
					
				</div><!-- card-body -->
			</div><!-- card -->
			
		</div><!-- col -->		
		
	</div><!-- row -->
</div><!-- container -->

	

