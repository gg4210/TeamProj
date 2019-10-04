<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>






<!-- Main Container -->
<div class="container-fluid">
	<div class="jumbotron">
		<h2 class="display-4">검색결과${searchWord }</h2>
		<hr class="my-4">
	</div>
	
	<div class="card">
		<div id="map" style="width:100%; height:400px">
		</div>
	</div>
	
	<div>결과 내 재검색하기</div>
	
	<!-- List 페이지  -->
	<div class="card-deck">

		<!-- Card -->
		<div class="card mb-4">

			<!--Card image-->
			<div class="view overlay">
				<img class="card-img-top"
					src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg"
					alt="Card image cap"> <a href="#!">
					<div class="mask rgba-white-slight"></div>
				</a>
			</div>

			<!--Card content-->
			<div class="card-body">

				<!--Title-->
				<h4 class="card-title">Card title</h4>
				<!--Text-->
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<button type="button" class="btn btn-light-blue btn-md">Read
					more</button>

			</div>

		</div>
		<!-- Card -->

		<!-- Card -->
		<div class="card mb-4">

			<!--Card image-->
			<div class="view overlay">
				<img class="card-img-top"
					src="https://mdbootstrap.com/img/Photos/Others/images/14.jpg"
					alt="Card image cap"> <a href="#!">
					<div class="mask rgba-white-slight"></div>
				</a>
			</div>

			<!--Card content-->
			<div class="card-body">

				<!--Title-->
				<h4 class="card-title">Card title</h4>
				<!--Text-->
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<button type="button" class="btn btn-light-blue btn-md">Read
					more</button>

			</div>

		</div>
		<!-- Card -->

		<!-- Card -->
		<div class="card mb-4">

			<!--Card image-->
			<div class="view overlay">
				<img class="card-img-top"
					src="https://mdbootstrap.com/img/Photos/Others/images/15.jpg"
					alt="Card image cap"> <a href="#!">
					<div class="mask rgba-white-slight"></div>
				</a>
			</div>

			<!--Card content-->
			<div class="card-body">

				<!--Title-->
				<h4 class="card-title">Card title</h4>
				<!--Text-->
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<button type="button" class="btn btn-light-blue btn-md">Read
					more</button>

			</div>

		</div>
		<!-- Card -->

		</div>
	<!-- List 페이지 끝 -->
	
	
</div>

<!-- main 끝-->

<script>

	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

</script>

