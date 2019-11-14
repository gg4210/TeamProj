<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

 <script>   
$(function () {
	////다른페이지에 있다가 눌렀을 때
	var durl = window.location.hash;////console.log(durl); = #id
	//var dactiveTab = durl.substring(durl.indexOf("#") + 1);////id ////의미없는 코드인 듯.
	console.log(durl);
	if (durl !='') {
		/* if(durl.lastIndexOf("#")!=0){//#id#id
			console.log("두 개다!!");
			var idArr = durl.split('#');//////////아래꺼, 스플릿!!
			
			$('#'+idArr[0]).tab('show');
		} 
		else */ $(durl).tab('show');
	}
	////같은 페이지에 있다가 눌렀을 때
	$('#event_confirm').click(function(){
		var link = $(this).attr('onclick');////
		console.log('link:',link);//=>/workout/customer.do#pills-scrap-tab
		var sactiveTab = link.substring(link.indexOf("#"));////내가 +1지움 ////console.log('sactiveTab:',sactiveTab);=>sactiveTab: #pills-scrap-tab	
		$('#customerLinks a').removeClass("active");
		$(this).addClass("active");
		$(sactiveTab).tab('show');
	});
});
</script>

<div class="container">

	<div class="row pt-5">
		<div class="col">
			<h1><strong>이벤트</strong><small><small> 상세보기 페이지</small></small></h1>
		</div>	
	</div>
	<hr />

	<div class="row pt-2">
		<div class="col">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">카테고리</th>
						<td colspan="3">카테고리 선택 내용입니다.</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">제목</th>
						<td style="width:40%">제목입니다.</td>
						<th class="blue-text" style="width:20%;text-align: center;font-weight: bold">작성일</th>
						<td style="width:20%;text-align: center">2019-10-23</td>
					</tr>
					<tr>
						<th class="blue-text" style="text-align: center;font-weight: bold">내용</th>
						<td colspan="3">내용입니다<br/>
										내용의 길이에 따라 영역의 크기가 변합니다.<br/> 
										내용입니다<br/>
										내용입니다<br/>
										내용입니다<br/>
										내용입니다<br/>
										내용입니다<br/>
										내용입니다<br/>
										내용입니다<br/>
										내용입니다<br/>
										내용입니다<br/>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
<!-- 아래 테이블 맘에 안들면 바꿔봅시다.. / 글씨 크기는 작은 거? 큰 거?
	<div class="row">
		<div class="col">
			<span style="text-align: center"><small>▲&nbsp;&nbsp;이전
					글&nbsp;&nbsp;&nbsp;이전 글이 없습니다</small></span>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<p>▼&nbsp;&nbsp;다음 글&nbsp;&nbsp;&nbsp;다음 글의 제목입니다</p>
		</div>
	</div>
 -->
	
	<div class="row">
		<div class="col-md-10 offset-md-1">
			<table class="table table-sm table-borderless">
				<tbody>
					<tr>
						<td style="width:10%">▲</td>
						<td style="width:20%">이전 글</td>
						<td>이전 글이 없습니다.</td>
					</tr>
					<tr>
						<td>▼</td>
						<td>다음 글</td>
						<td>다음 글 제목입니다.</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<div class="row d-flex justify-content-center mt-3 mb-3">		
		<button type="button" class="btn btn-info" id="event_edit">수정</button>
		<button type="button" class="btn btn-primary" id="event_confirm" onclick="<c:url value='/customerService/event/eventView.do'/>">목록</button>
		<button type="button" class="btn btn-info" id="event_delete">삭제</button>
	</div>
	<br/>
	<br/>
	
	<!-- 삭제 모달 시작 -->
	<div class="modal fade" id="delete-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-primary modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading">삭제 확인</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row d-flex justify-content-center my-3">
							<h4>정말로 삭제하시겠습니까?</h4>
						</div>
						<div class="row d-flex justify-content-center">	
							<button type="button" class="btn btn-primary btn-md">삭제</button>
							<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 삭제 모달 끝 -->
	
	
	
</div>

<script>
$(function(){
	$('#event_edit').click(function(){
		location.href="eventEdit.do";
	});
	
	$('#event_confirm').click(function(){
		//location.href="/workout/customerServiceMain.do#pills-notice-tab";
		location.href="/workout/customerService/event/eventView.do#pills-notice-tab#pills-event-tab";
		
		//location.href="/workout/eventList.do#pills-notice-tab";
		
	});
	
	$('#event_delete').click(function(){
		$('#delete-modal').modal('show');
	});
	
});
</script>
