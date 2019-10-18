<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
		<h2>쪽지함</h2>
	</div>
	<table class="table">
	  <thead class="black white-text">
	    <tr>
	    	<th style="width:5%" scope="col">
	    		<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
					<label class="custom-control-label" for="defaultUnchecked"></label>
				</div>
	    	</th>
	    	<th style="width:10%" scope="col"></th>
			<th style="width:70%" scope="col"></th>
			<th scope="col"></th>
	    </tr>
	  </thead>
	  <tbody>
	  	<tr>
	    	<th scope="row">
	    		<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
					<label class="custom-control-label" for="defaultUnchecked"></label>
				</div>
	    	</th>
	    	<td><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/22.jpg" alt="Card image cap"></td>
			<td>
				<p><a href="<c:url value='#'/>">김길동</a></p>
				<p><a href="<c:url value='#'/>">저도 잘 부탁드려요</a></p>
			</td>
			<td>2019-10-15</td>
	    </tr>
	    <tr>
	    	<th scope="row">
	    		<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
					<label class="custom-control-label" for="defaultUnchecked"></label>
				</div>
	    	</th>
	    	<td><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/20.jpg" alt="Card image cap"></td>
			<td>
				<p><a href="<c:url value='#'/>">system</a></p>
				<p><a href="<c:url value='#'/>">가입을 환영합니다!</a></p>
			</td>
			<td scope="col">2019-10-13</td>
	    </tr>
	  </tbody>
	</table>
</div>
<!-- 검색창 -->
			<div class="form-inline d-flex justify-content-center mt-3">
				<select name="searchColumn" class="form-control custom-select mr-2">
					<option value="title">제목</option>
					<option value="name">대화 상대</option>
					<option value="content">내용</option>
				</select>
				<input type="text" class="form-control" placeholder="Search">
				<button class="btn blue-gradient p-2 px-4">검색</button>
			</div>
		<!-- 검색창 끝 -->		

	<!-- 페이지네이션 시작 -->
	<div class="row">
		<div class="col">
			<nav class="d-flex justify-content-center mt-3">
				<ul class="pagination pagination-circle pg-blue">
					<li class="page-item"><a class="page-link" href="#">◀</a></li>
					<li class="page-item"><a class="page-link" href="#" tabindex="-1">＜</a></li>
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
	</div>
	<!-- 페이지네이션 끝 -->

<!--  
<div>
	<div class="col-12">
		<div style="border-bottom:1px solid gray;">쪽지함</div>
	</div>
</div>
<div>
	<div class="row">
		<div class="col-2"><i class="fas fa-tty"></i></div>
		<div class="col-2">send</div>
		<div class="col-4">content</div>
		<div class="col-2">date</div>
		<div class="col-2"></div>
	</div>
	<div class="row">
		<div class="col-2"><a href="<c:url value='#'/>"><i class="fas fa-tty"></i></a></div>
		<div class="col-2"><a href="<c:url value='#'/>">system</a></div>
		<div class="col-4"><a href="<c:url value='#'/>">가입을 축하드립니다.</a></div>
		<div class="col-2">2019-10-14</div>
		<div class="col-2"></div>
	</div>
	<div class="row">
		<div class="col-2"><a href="<c:url value='#'/>"><i class="fas fa-tty"></i></a></div>
		<div class="col-2"><a href="<c:url value='#'/>">김길동</a></div>
		<div class="col-4"><a href="<c:url value='#'/>">잘 부탁드립니다.</a></div>
		<div class="col-2">2019-10-15</div>
		<div class="col-2"><input type="button" value="정보"></div>
	</div>
</div>
-->