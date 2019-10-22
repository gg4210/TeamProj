<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div class="row">
		<div class="col">
			<div class="page-header">
				<h3>공지/이벤트</h3>
			</div>
			<hr />
		</div>
	</div>
	<div class="row">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="pills-notice-tab" data-toggle="pill" href="#pills-notice" role="tab"
				aria-controls="pills-notice" aria-selected="true">공지사항</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="pills-event-tab" data-toggle="pill" href="#pills-event" role="tab"
				aria-controls="pills-event" aria-selected="false">이벤트</a>
			</li>
		</ul>
	</div>
	<div class="tab-content pt-2 pl-1" id="pills-tabContent">
		<div class="tab-pane fade show active" id="pills-notice"
			role="tabpanel" aria-labelledby="pills-notice-tab">
			<jsp:include page="/WEB-INF/views/customerService/notice.jsp" />
		</div>

		<div class="tab-pane fade" id="pills-event" 
			role="tabpanel" aria-labelledby="pills-event-tab">
			<jsp:include page="/WEB-INF/views/customerService/event.jsp" />
		</div>
	</div>
</div>