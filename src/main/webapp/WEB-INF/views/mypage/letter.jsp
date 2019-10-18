<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 
<table class="table">
  <thead class="black white-text">
    <tr>
    	<th style="width:5%" scope="col"><input type="checkbox" value="all"></th>
		<th style="width:15%" scope="col">#</th>
		<th style="width:40%" scope="col">First</th>
		<th style="width:30%" scope="col">Last</th>
		<th style="width:10%" scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    	<th scope="row"><input type="checkbox"></th>
		<td>1</td>
		<td>Mark</td>
		<td>Otto</td>
		<td>@mdo</td>
    </tr>
    <tr>
    	<th scope="row"><input type="checkbox"></th>
      <td>1</td>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
    	<th scope="row"><input type="checkbox"></th>
      <td>1</td>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
-->
<style>
.row div{
	border-bottom:1px solid gray;
}
</style>

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