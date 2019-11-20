<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" --%>

<!-- 실제 내용 시작 -->
<div class="container" id="herejqueryajax">
	<div class="row pt-2">
		<h3>이벤트</h3>
	</div>	

	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<div class="form-inline">
					<select class="browser-default custom-select">
						<option selected>검색조건</option>
						<option value="1">전체</option>
						<option value="2">전체 이벤트</option>
						<option value="3">센터별 이벤트</option>
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
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th scope="col" class="text-center" style="width: 10%">글번호</th>
						<th scope="col" class="text-center" style="width: 15%">카테고리</th>
						<th scope="col" class="text-center" style="width: 65%">★제목★</th>
						<th scope="col" class="text-center" style="width: 10%">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty eventList}" var="isEmpty">
						<tr>
							<td colspan="4" class="text-center">등록된 게시물이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not isEmpty}">
						<c:forEach var="item" items="${eventList}" varStatus="loop">
							<tr>
								<td>${item.rownum}</td>
								<td>${item.category}</td>
								<td class="text-left"><a href="<c:url value='/customerService/event/eventView.do?no=${item.no}'/>">${item.title}</a></td>
								<td>${item.postDate}</td>
							</tr>
						</c:forEach>
						</c:if>
				</tbody>
			</table>
		</div>  <!-- col-md-12 -->
	</div>
	
	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<div class="form-inline">
					<button type="button" class="btn btn-info p-2 px-4" id="event_write">이벤트 작성</button>
					<button type="button" class="btn btn-info p-2 px-4" id="test_load">.load()</button>
				</div>
			</div>
		</div>
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
	
	
	<div id="test_ing">
	
	</div>
	
	
</div>

<script>
	$(function(){
		
		$('#event_write').click(function(){
			location.href="customerService/event/eventWrite.do";
		});
		
		$("#test_load").on("click", function() {
			//$(".row").hide();
			// URL 주소에 존재하는 HTML 코드에서 <li>요소를 읽은 후에 id가 "test_ing"인 요소에 배치함.
			//$("#test_ing").load("noticeList.jsp #container");//태그만 읽어오네... 아이디는 못읽고...
			//$("#test_ing").load("consultList.jsp .container");//통과!
			//$(".row").load("noticeList.jsp .container");//row가 너무 많아서 여러개 들어와서 패스-
			//document.write("되는 중인가?");
			//$("#test_ing").load("test.txt .container");
			
			//$("#test_ing").load("noticeList.jsp .ganadara");
			
			//$("#herejqueryajax").load("http://localhost:8080/workout/customerService/notice/noticeList.do");
			$("#herejqueryajax").load("/workout/customerService/notice/noticeList.do");//이거 된다!
			
			
			//위치 경로설정 어떻게 하는지만 되면, #pills-consultlist-tab 이용도 해보고 싶어!
		});
		
	});
</script>
