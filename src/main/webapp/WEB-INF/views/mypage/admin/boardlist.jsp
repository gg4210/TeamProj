<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="container">
    	<!-- customer-service.jsp로 옮겨갑니다.
    	<div class="row">
    		<div class="col clearfix">
	    		<div class="float-right">
	    			<button type="button" class="btn btn-primary p-2 px-3"><i class="fas fa-pencil-alt"></i> 공지작성</button>
	    		</div>
    		</div>
    	</div>
    	 -->
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
		
			</div><!-- form-row -->
			
		</form>
		<!-- row 1 끝 -->
    
    	<!-- row 2 시작 -->
    	<div class="row">
    		<div class="col">
    			<table class="table table-hover">
    				<thead class="text-center">
    					<tr>
	    					<th width="6%">
								<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="boardCheckAll">
								  <label class="custom-control-label" for="boardCheckAll"></label>
								</div>
							</th>
							<th width="9%">no</th>
    						<th width="15%">태그</th>
    						<th width="20%">닉네임</th>
    						<th>제목</th>
    						<th width="20%">작성일</th>
    					</tr>
    				</thead>
    				<tbody class="text-center">
    					<tr>
    						<td>
    							<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="boardCheck1">
								  <label class="custom-control-label" for="boardCheck1"></label>
								</div>  						
    						</td>
    						<td>2</td>
    						<td class="h5"><span class="badge badge-primary">헬스</span></td>
    						<td>kimbop</td>
    						<td class="text-left">타이틀 1</td>
    						<td>2019-10-18</td>
    					</tr>
    					<tr>
    						<td>
    							<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" id="boardCheck2">
								  <label class="custom-control-label" for="boardCheck2"></label>
								</div>  						
    						</td>
    						<td>1</td>						
    						<td class="h5"><span class="badge badge-primary">수영</span></td>
    						<td>lian</td>
    						<td class="text-left">타이틀 2</td>
    						<td>2019-10-21</td>
    					</tr>
    				</tbody>
    			</table>	
    		</div>
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
    </div><!-- container -->
    
    
    <!-- 게시글 등록을 위한 modal div -->

    