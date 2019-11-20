<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>


<script type="text/javascript" src="jquery.qrcode.js"></script>
<script type="text/javascript" src="qrcode.js"></script>

<p> 우리 센터의 QR코드는...</p>
<div id="qrcode"></div>
>
<script>
	var mapkey = '12345678';//sql로 mapkey 가져와서 넣기
	var obj = new Object();
		obj.mapkey = mapkey;
	var jsonData = JSON.stringify(obj);
	//console.log(obj);//mapkey: "12345678"
	//console.log(jsonData);//{"mapkey":"12345678"}
	
	
	
	//jQuery('#qrcode').qrcode("this plugin is great");
	/* 
	jQuery('#qrcodeTable').qrcode({
		render	: "table",
		text	: "http://jetienne.com"
	});	
	jQuery('#qrcodeCanvas').qrcode({
		text	: "http://jetienne.com"
	});	
	 */
	/* 단, Render in canvas 는 canvas 기능을 지원하는 브라우져에서만 사용가능 합니다. 
		( IE 사용불가 , Chrome 사용가능 )
 	이라고 적혀있는데, IE 상위 버전에서는 뜨는 것 같음.*/
	jQuery('#qrcode').qrcode(jsonData);	
	
</script>
