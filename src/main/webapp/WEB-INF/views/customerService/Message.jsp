<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 어느 컨트롤러에서 왔는지에 따라 분기 -->
<c:choose>	
	<c:when test="${WHERE=='EDT'}">
		<c:set var="successMsg" value="수정 성공했어요"/>
		<c:set var="failMsg" value="수정 실패했어요"/>
		<c:set var="successUrl" value="/member/noticeView.do?no=${param.no}&nowPage=${nowPage}"/>
	</c:when>
	<c:when test="${WHERE=='EEDT'}">
		<c:set var="successMsg" value="수정 성공했어요"/>
		<c:set var="failMsg" value="수정 실패했어요"/>
		<c:set var="successUrl" value="/member/eventView.do?no=${param.no}&nowPage=${param.nowPage}"/>
	</c:when>
	<c:when test="${WHERE=='CEDT'}">
		<c:set var="successMsg" value="수정 성공했어요"/>
		<c:set var="failMsg" value="수정 실패했어요"/>
		<c:set var="successUrl" value="/member/consultView.do?no=${param.no}&nowPage=${nowPage}"/>
	</c:when>
	<c:when test="${WHERE=='REPLY'}">
		<c:set var="successMsg" value="입력/수정 성공했어요"/>
		<c:set var="failMsg" value="입력/수정 실패했어요"/>
		<c:set var="successUrl" value="/admin/consultView.do?no=${param.no}&nowPage=${nowPage}"/>
	</c:when>
	<c:when test="${WHERE=='DEL'}">
		<c:set var="successMsg" value="삭제 성공했어요"/>
		<c:set var="failMsg" value="삭제 실패했어요"/>
		<c:set var="successUrl" value="/member/noticeList.do?nowPage=${param.nowPage}"/>
		<%-- <c:set var="successUrl" value="/member/customerServiceMain.do#pills-noticeNevent-tab"/>		--%>
	</c:when>
	<c:when test="${WHERE=='EDEL'}">
		<c:set var="successMsg" value="삭제 성공했어요"/>
		<c:set var="failMsg" value="삭제 실패했어요"/>
		<c:set var="successUrl" value="/member/eventList.do?nowPage=${param.nowPage}"/>
		<%-- <c:set var="successUrl" value="/member/customerServiceMain.do#pills-noticeNevent-tab"/>		--%>
	</c:when>
	<c:otherwise>
		<c:set var="successMsg" value="삭제 성공했어요"/>
		<c:set var="failMsg" value="삭제 실패했어요"/>
		<c:set var="successUrl" value="/member/consultList.do?nowPage=${param.nowPage}"/>
		<%-- <c:set var="successUrl" value="/member/customerServiceMain.do#pills-consultlist-tab"/>		--%>
	</c:otherwise>
</c:choose>
<script>
	<c:choose>
		<c:when test="${SUCFAIL == 1 }">
			alert('${successMsg}');
			location.replace('<c:url value="${successUrl}"/>');
		</c:when>
		<c:when test="${SUCFAIL == 0 }">
			alert('${failMsg}');
			history.back();
		</c:when>
		
	</c:choose>
</script>

