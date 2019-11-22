<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

<script type="text/javascript" src="<c:url value='/resources/utils/QRCode/jquery.qrcode.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/utils/QRCode/qrcode.js'/>"></script>

<div id="qrcode"></div>

<script>
	var mapkey = ${mapkey};
	var obj = new Object();
		obj.mapkey = mapkey;
	var jsonData = JSON.stringify(obj);
	jQuery('#qrcode').qrcode(jsonData);	
</script>