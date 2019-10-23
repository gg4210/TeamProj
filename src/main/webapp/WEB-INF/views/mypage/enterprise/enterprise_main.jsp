<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/resources/MDB-Free_4.8.10/js/addons/rating.js"/>"></script>
	
	
<div class="container">

	<!-- row1 시작 -->
	<div class="row">
	
		<!-- col1 시작 -->
		<div class="accordion col" id="accordion1">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading1">
					<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#user" aria-expanded="true"
							aria-controls="collapseOne">
							
							<div class="row">
								<div class="col-3 mr-3">
									<h4><span class="fa-stack">
										<i class="far fa-circle fa-stack-2x text-white"></i>
										<i class="fas fa-user-clock fa-stack-1x text-white"></i>
									</span></h4>					
								</div>
								<div class="col">
									<div class="row">
										<h5 class="text-left font-weight-bold text-white">
											회원수: 145명
										</h5>
									</div>
									<div class="row">
										<p class="text-left text-white">
											<span class="badge badge-pill badge-default"><i class="fas fa-arrow-up" aria-hidden="true"></i></span>
											지난달 대비 회원수는 증가 추세입니다.
										</p>
									</div>
								</div>
							</div>
					</button>
				</div>

				<div id="user" class="collapse" aria-labelledby="heading1"
					data-parent="#accordion1">
					<div class="card-body">
						<p class="py-1">
							<i class="fas fa-angle-right indigo-text"></i>&nbsp&nbsp
							<i class="fas fa-user-plus"></i>&nbsp&nbsp이번달 신규회원 : 25명
						</p>
						<p class="py-1">
							<i class="fas fa-angle-right indigo-text"></i>&nbsp&nbsp
							<i class="fas fa-user-minus"></i>&nbsp&nbsp이번달 만료회원 : 17명
						</p>
						<canvas id="lineChart"></canvas>
						
					</div>
				</div>
			</div>
		</div>
		<!-- col1 끝 -->

		<!-- col 2 시작 -->
		<div class="accordion col" id="accordion2">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading2">
					<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#connect" aria-expanded="true"
							aria-controls="collapseThree">

							<div class="row">
							<div class="col-3 mr-2">
		
								<h4 class="text-left font-weight-bold">
									<span class="fa-stack"> <i
										class="far fa-circle fa-stack-2x text-white"></i>
										<i class="fas fa-user-plus fa-stack-1x text-white"></i>
									</span>
								</h4>
							
							</div>
							<div class="col">
								<div class="row">
									<h5 class="text-left font-weight-bold text-white">
											이번달 신규회원
									</h5>
								</div>
								<div class="row">
									<p class="text-left text-white">
										<span class="badge badge-pill badge-info"><i class="fas fa-plus"></i></span> 금일 신규 회원등록이 있습니다!
									</p>
								</div>
							</div>
							</div>	
							
					</button>
				</div>

				<div id="connect" class="collapse" aria-labelledby="connect"
					data-parent="#accordion2">
					<div class="card-body">
						<p class="py-1">
							<i class="fas fa-angle-right indigo-text"></i>&nbsp&nbsp
							<i class="fas fa-user-friends"></i>&nbsp&nbsp이번달 신규회원: 7명
						</p>
						<!-- 테이블 시작 -->
						<table class="table">
							<thead class="bg-primary white-text">
								<tr>
									<th scope="col">NO</th>
									<th scope="col">이름</th>
									<th scope="col">성별</th>
									<th scope="col">일자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">7</th>
									<td>김민지</td>
									<td>여</td>
									<td>2019.10.20 ~ 2019.12.19</td>
								</tr>
								<tr>
									<th scope="row">6</th>
									<td>김철수</td>
									<td>남</td>
									<td>2019.10.20 ~ 2019.01.19</td>
								</tr>
								<tr>
									<th scope="row">5</th>
									<td>최철수</td>
									<td>남</td>
									<td>2019.10.20 ~ 2019.11.19</td>
								</tr>
							</tbody>
						</table>
						<!-- 테이블 끝 -->
						<nav aria-label="Page navigation example">
							<ul class="pagination pg-blue justify-content-center">
								<li class="page-item"><a class="page-link">Previous</a></li>
								<li class="page-item"><a class="page-link">1</a></li>
								<li class="page-item"><a class="page-link">2</a></li>
								<li class="page-item"><a class="page-link">3</a></li>
								<li class="page-item"><a class="page-link">Next</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- col 2 끝 -->
	</div>
	<!-- row1 끝 -->
	
	
	
	<!-- row2 시작 -->
	<div class="row mt-3">
		<!-- col 1 시작 -->
		<div class="accordion col" id="accordion3">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading3">
					<button class="btn btn-link" type="button" data-toggle="collapse"
						data-target="#event" aria-expanded="true"
						aria-controls="collapseTwo">

						<div class="row">
							<div class="col-3 mr-3">

								<h4 class="text-left font-weight-bold">
									<span class="fa-stack"> <i
										class="far fa-circle fa-stack-2x text-white"></i> <i
										class="fas fa-bullhorn fa-stack-1x text-white"></i>
									</span>
								</h4>

							</div>
							<div class="col">
								<div class="row">
									<h5 class="text-left font-weight-bold text-white">홍보글 등록여부
									</h5>
								</div>
								<div class="row">
									<p class="text-left text-white">
										<span class="badge badge-pill badge-primary">new</span> 홍보글이
										등록되었어요!
									</p>
								</div>
							</div>
						</div>
					</button>
				</div>

				<div id="event" class="collapse" aria-labelledby="heading3"
					data-parent="#accordion3">
					<div class="card-body">
						<!-- 테이블 시작 -->
						<table class="table">
							<thead class="bg-primary white-text">
								<tr>
									<th scope="col">NO</th>
									<th scope="col">작성일</th>
									<th scope="col">제목</th>
									<th scope="col">처리상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">3</th>
									<td>10/20</td>
									<td>10% 할인 이벤트</td>
									<td class="font-weight-bold"><span style="color: red">검토 중</span></td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>09/05</td>
									<td>'함께하자' 이벤트</td>
									<td class="font-weight-bold"><span style="color: blue">등록 완료</span></td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>07/01</td>
									<td>필라테스 과정 신설</td>
									<td class="font-weight-bold"><span style="color: green">기한 만료</span></td>
								</tr>
							</tbody>
						</table>
						<!-- 테이블 끝 -->
					</div>
				</div>
			</div>
		</div>
		<!-- col 1 끝 -->






		<!-- col 2 시작 -->
		<div class="accordion col" id="accordion4">
			<div class="card">
				<div class="card-header mdb-color darken-3 pb-0" id="heading4">
						<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#info" aria-expanded="true"
							aria-controls="collapseFour">
							
							<div class="row">
							<div class="col-3">
		
								<h4 class="text-left font-weight-bold">
									<span class="fa-stack"> 
										<i class="far fa-circle fa-stack-2x text-white"></i> 
										<i class="fas fa-star fa-stack-1x text-white"></i>
									</span>
								</h4>
							
							</div>
							<div class="col">
								<div class="row">
									<h5 class="text-left font-weight-bold text-white">
											리뷰관리
									</h5>
								</div>
								<div class="row">
									<p class="text-left text-white">
										<span class="badge badge-pill badge-warning"><i class="fas fa-check"></i></span> 우리 센터의 리뷰를 확인하세요!
									</p>
								</div>
							</div>
							</div>
							
							
						</button>
				</div>
				<div id="info" class="collapse" aria-labelledby="board" data-parent="#accordion4">
				<div class="card-body">
					<table class="table table-hover">
						<thead class="bg-primary text-white">
						    <tr>
						      <th scope="col">아이디</th>
						      <th scope="col">평점</th>
						      <th scope="col"></th>
						    </tr>
					  	</thead>
				       	<tbody>
						    <tr>
						      <th scope="row">KIM*</th>
						       <th scope="row">
						       		<span id="rateMe">
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
									<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
									<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
									</span>
								</th>
						      <td class="text-right"><i class="fas fa-chevron-circle-right"></i></td>
						    </tr>
						    <tr>
						      <th scope="row">LEE*</th>
						      <th scope="row">
						       		<span id="rateMe">
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
									</span>
								</th>
						      <td class="text-right"><i class="fas fa-chevron-circle-right"></i></td>
						    </tr>
						    <tr>
						      <th scope="row">CHO*</th>
						     <th scope="row">
						       		<span id="rateMe">
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>
									<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>
									<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>
									</span>
								</th>
						      <td class="text-right"><i class="fas fa-chevron-circle-right"></i></td>
						    </tr>
						</tbody>
				    </table>				
        		</div>
			</div>
		</div>
	</div>
	<!-- col 2 끝 -->
	</div>
	<!-- row2 끝 -->
	
</div>
<!-- container -->


<script>

//line
var ctxL = document.getElementById("lineChart").getContext('2d');
var myLineChart = new Chart(ctxL, {
type: 'line',
data: {
labels: ["October","November","December"],
datasets: [{
label: "회원 증감 추이",
data: [185, 178, 200],
backgroundColor: [
'rgba(134, 178, 249, 1)',
],
borderColor: [
'rgba(22, 107, 243, 1)',
],
borderWidth: 1
}]
},
options: {
responsive: true
}
});

//평점
var $stars;

jQuery(document).ready(function ($) {

  // Custom whitelist to allow for using HTML tags in popover content
  var myDefaultWhiteList = $.fn.tooltip.Constructor.Default.whiteList
  myDefaultWhiteList.textarea = [];
  myDefaultWhiteList.button = [];

  $stars = $('.rate-popover');
  
  function markStarsAsActive(index) {
    unmarkActive();
    for (var i = 0; i <= index; i++) {
      $($stars.get(i)).addClass('amber-text');
    }
  }

  function unmarkActive() {
    $stars.removeClass('amber-text');
  }
  
  /*
  
  $stars.on('click', function () {
    $stars.popover('hide');
  });
  // Submit, you can add some extra custom code here
  // ex. to send the information to the server
  $('#rateMe').on('click', '#voteSubmitButton',  function() {
    $stars.popover('hide');
  });

  // Cancel, just close the popover
  $('#rateMe').on('click', '#closePopoverButton', function() {
    $stars.popover('hide');
  });


});

$(function () {
  $('.rate-popover').popover({
    // Append popover to #rateMe to allow handling form inside the popover
    container: '#rateMe',
    // Custom content for popover
    content: `<div class="my-0 py-0"> <textarea type="text" style="font-size: 0.78rem" class="md-textarea form-control py-0" placeholder="Write us what can we improve" rows="3"></textarea> <button id="voteSubmitButton" type="submit" class="btn btn-sm btn-primary">Submit!</button> <button id="closePopoverButton" class="btn btn-flat btn-sm">Close</button>  </div>`
  });
  $('.rate-popover').tooltip();
  */
  
});



</script>