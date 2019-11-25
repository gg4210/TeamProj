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
	
	var token = $("meta[name='_csrf']").attr("content");

	var showUserInfo=function(){
		$.ajax({
			url:"<c:url value='/usertable.do?_csrf="+token+"'/>",
			type:"post",
			success:function(data){
				var tableString='';
				
				var data=JSON.parse(data);
				
				if(data.length==0){
					console.log("회원이 존재하지 않는다");
					tableString='<tr><td scope="row">"회원이 존재하지 않습니다."</td></tr>';
				}
				else{
					console.log("회원이 존재한다.");
					console.log(data);
					$.each(data, function(index, element){
						tableString+='<tr>'+
						'<td>'+element['NO']+'</td>'+
						'<td>'+element['AUTHORITY']+'</td>'+
						'<td>'+element['ID']+'</td>'+
						'<td>'+element['NAME']+'</td>'+
						'<td>'+element['EMAIL']+'</td>'+
						'<td>'+element['TEL']+'</td>'+
						'<td>'+element['JOINDATE']+'</td>';
						if(element['AUTHORITY']=="ROLE_USER"){
							tableString+='<td>-</td>';
							}
						else{
							if(element['ISALLOWED']==1){
								tableString+='<td><a href="'+element['MAPKEY']+'" id="'+element['ID']+'">승인처리</span></td>';
							}
							else{
								tableString+='<td>'+element['MAPKEY']+'</td>';			
							}
						}
						tableString+='</tr>';
					});//each끝
					$('#inner_table').html(tableString);
					
				}//else끝
			},
			error:function(data){
			}
		});
	}

	$('#user-datatable').tablesorter({
		widgets : [ 'zebra', 'columns' ],
		usNumberFormat : false,
		sortReset : true,
		sortRestart : true
	});

	$('#user-datatable').tableSearch({});
	
	showUserInfo();
	
	$(document).on("click","#inner_table > tr > td:nth-child(8) > a", function(event){
		event.preventDefault();
		$('#permit-power-modal').modal();
		$('#permit_mapkey').html($(this).attr("href"));
		var mapkey=$(this).attr("href");
		var id=$(this).attr('id');
		
		$('#confirm_allowed').click(function(){
			$.ajax({
				url:"/workout/updateAllowed0_admin.do?_csrf="+token,
				data:{"mapkey":mapkey,"ID":id},
				type:"post",
				success:function(data){
					var data=JSON.parse(data);
					console.log(data);
					$('#permit-power-modal').modal('hide');
					alert(data.isUpdate);
					showUserInfo();
				},
				error:function(data){					
				}
			});
		});
		
	});
	

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
			<tbody class="pt-3" id="inner_table">
		
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
	        <h5>센터의 맵키</h5>
	        <p id="permit_mapkey"></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-primary" id="confirm_allowed">확인</button>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	
</div>


