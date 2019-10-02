<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>HOME</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="<c:url value='/resources/MDB-Free_4.8.10/css/bootstrap.min.css'/>" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="<c:url value='/resources/MDB-Free_4.8.10/css/mdb.min.css'/>" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="<c:url value='/resources/MDB-Free_4.8.10/css/style.css'/>" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <link href="<c:url value='/resources/css/intro.css?ver=1.0'/>" rel="stylesheet"/>
  
  
</head>

<body>




  <!-- Start your project here-->
   <div class="overlay"></div>
   <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
    <source src="<c:url value='/resources/videos/intro.mp4'/>" type="video/mp4">
   </video>
  
  <div class="masthead">
    <div class="masthead-bg"></div>
    <div class="container h-100">
      <div class="row h-100">
        <div class="col-12 my-auto">
          <div class="masthead-content text-white py-5 py-md-0">
            <h1 class="mb-3">운동해!偕</h1>
            <hr style="border:solid 2px white;"/>
            <p class="mb-5">We're working hard to finish the development of this site. <br/>Our target launch date is
              <strong>December 2019</strong>!</br> Come on and have a look!</p>
			<input type="button" value="SKIP" class="button skip"></button>
          </div>
        </div>
      </div>
    </div>
  </div>

    <!-- Start your project here-->

  
  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="<c:url value='/resources/MDB-Free_4.8.10/js/jquery-3.4.1.min.js'/>"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="<c:url value='/resources/MDB-Free_4.8.10/js/popper.min.js'/>"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="<c:url value='/resources/MDB-Free_4.8.10/js/bootstrap.min.js'/>"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="<c:url value='/resources/MDB-Free_4.8.10/js/mdb.min.js'/>"></script>
  
  <script>
  $(function(){
	  $(".button").click(function() {
		  location.href='<c:url value="/main.do"/>'
	  	});
	});
  
  </script>
  
</body>

</html>
