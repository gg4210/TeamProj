<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"--%>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<style>
	.clickable{
		padding:5px;
		background-color:#D3D3D3;
	}
	#questions #nospace{
		padding-top:0px !important;
		padding-bottom:0px !important;
	}
</style>
<script>
$(".clickable").collapse({"toggle": true, 'parent': '#accordion'});
</script>


<div class="container">

	<div class="row pt-2">
		<div class="col">
			<div class="page-header">
				<h3>자주 묻는 질문</h3>
			</div>			
		</div>
	</div>

	<div class="row my-2">
		<div class="clearfix col">
			<div class="float-right">
				<div class="form-inline">
					<select class="browser-default custom-select">
						<option selected>검색조건(전체)</option>
						<hr/>
						<option value="1">계정 관련 질문</option>
						<option value="2">앱 관련 질문</option>
						<option value="3">운동메이트</option>
						<option value="4">기타</option>
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
		<div class="col-md">
			<table class="table table-hover" id="questions">
				<thead>
					<tr style="background-color: #DCDCDC;">
						<th scope="col" class="text-center" style="width: 5%"></th>
						<th scope="col" class="text-center" style="width: 15%">분류</th>
						<th scope="col" class="text-center" style="width: 80%">질문</th>
					</tr>
				</thead>
				<tbody id="contentGroup">
					<tr class="clickable" data-toggle="collapse" role="button"
						data-target="#content1" aria-expanded="false"
						aria-controls="content1">
						<td class="text-center">1</td>
						<td class="text-center">계정 관련 질문</td>
						<td>자주 묻는 질문 1</td>
					</tr>
					<tr>
						<td id="nospace" colspan="2"></td>
						<td id="nospace">
							<div id="content1" class="collapse" data-parent="#contentGroup"
								style="align-content: center;">
								<p>자주묻는 질문 1 답변입니다<br/>
									자주묻는 질문 1 답변입니다<br/>
									자주묻는 질문 1 답변입니다<br/>
								</p>
								<ul>
									<li>List item one</li>
									<li>List item two</li>
									<li>List item three</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr class="clickable collapsed" data-toggle="collapse"
						role="button" data-target="#content2" aria-expanded="false"
						aria-controls="content2">
						<td class="text-center">2</td>
						<td class="text-center">앱 관련 질문</td>
						<td>자주 묻는 질문 2</td>
					</tr>
					<tr>
						<td id="nospace" colspan="2"></td>
						<td id="nospace">
							<div id="content2" class="collapse" data-parent="#contentGroup">
								<p>자주묻는 질문 2 답변입니다<br/>
									자주묻는 질문 2 답변입니다<br/>
									자주묻는 질문 2 답변입니다<br/>
									자주묻는 질문 2 답변입니다<br/>
									자주묻는 질문 2 답변입니다<br/>
									자주묻는 질문 2 답변입니다<br/>
									자주묻는 질문 2 답변입니다<br/>
									자주묻는 질문 2 답변입니다<br/>
								</p>
							</div>
						</td>
					</tr>
					<tr class="clickable collapsed" data-toggle="collapse"
						role="button" data-target="#content3" aria-expanded="false"
						aria-controls="content3">
						<td class="text-center">3</td>
						<td class="text-center">운동메이트</td>
						<td>자주 묻는 질문3</td>
					</tr>
					<tr>
						<td id="nospace" colspan="2"></td>
						<td id="nospace">
							<div id="content3" class="collapse" data-parent="#contentGroup">
								<p>자주묻는 질문 3 답변입니다<br/>
									자주묻는 질문 3 답변입니다<br/>
									자주묻는 질문 3 답변입니다<br/>
									자주묻는 질문 3 답변입니다<br/>
									자주묻는 질문 3 답변입니다<br/>
								</p>
								<ul>
									<li>List item one</li>
									<li>List item two</li>
									<li>List item three</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr class="clickable collapsed" data-toggle="collapse"
						role="button" data-target="#content4" aria-expanded="false"
						aria-controls="content4">
						<td class="text-center">4</td>
						<td class="text-center">운동메이트</td>
						<td>자주 묻는 질문 4</td>
					</tr>
					<tr>
						<td id="nospace" colspan="2"></td>
						<td id="nospace">
							<div id="content4" class="collapse" data-parent="#contentGroup">
								<p>자주묻는 질문 4 답변입니다<br/>
									자주묻는 질문 4 답변입니다<br/>
									자주묻는 질문 4 답변입니다<br/>
									자주묻는 질문 4 답변입니다<br/>
								</p>
							</div>
						</td>
					</tr>
					<tr class="clickable collapsed" data-toggle="collapse"
						role="button" data-target="#content5" aria-expanded="false"
						aria-controls="content5">
						<td class="text-center">5</td>
						<td class="text-center">기타</td>
						<td>자주 묻는 질문3</td>
					</tr>
					<tr>
						<td id="nospace" colspan="2"></td>
						<td id="nospace">
							<div id="content5" class="collapse" data-parent="#contentGroup">
								<p>자주묻는 질문 5 답변입니다<br/>
									자주묻는 질문 5 답변입니다<br/>
									자주묻는 질문 5 답변입니다<br/>
									자주묻는 질문 5 답변입니다<br/>
									자주묻는 질문 5 답변입니다<br/>
								</p>
								<ul>
									<li>List item one</li>
									<li>List item two</li>
									<li>List item three</li>
								</ul>
							</div>
						</td>
					</tr>					
				</tbody>
			</table>
		</div>
	</div>
	<!-- 아코디언 완료 -->
	
	<div class="row">
		<div class="clearfix col">
			<div class="float-right">
				<div class="form-inline">
					<button type="button" class="btn btn-info p-2 px-4" id="faq_write">FAQ 작성</button>
				</div>
			</div>
		</div>
	</div>	
	
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
	</div>
</div>

<script>
$(function(){
	
	$('#faq_write').click(function(){
		location.href="customerService/FAQWrite.do";
	});
});
</script>


<!-- 
<div class="container">
	<div id="accordion">
		<h3>자주 묻는 질문 1</h3>
		<div>
			<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget,
				quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida
				in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam
				mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a
				velit eu ante scelerisque vulputate.</p>
		</div>
		<h3>자주 묻는 질문 2</h3>
		<div>
			<p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum
				sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris
				turpis porttitor velit, faucibus interdum tellus libero ac justo.
				Vivamus non quam. In suscipit faucibus urna.</p>
		</div>
		<h3>자주 묻는 질문 3</h3>
		<div>
			<p>Nam enim risus, molestie et, porta ac, aliquam ac, risus.
				Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in
				pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac
				felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam
				nisi, eu iaculis leo purus venenatis dui.</p>
			<ul>
				<li>List item one</li>
				<li>List item two</li>
				<li>List item three</li>
			</ul>
		</div>
		<h3>자주 묻는 질문 4</h3>
		<div>
			<p>Cras dictum. Pellentesque habitant morbi tristique senectus et
				netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum
				primis in faucibus orci luctus et ultrices posuere cubilia Curae;
				Aenean lacinia mauris vel est.</p>
			<p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim
				consequat lectus. Class aptent taciti sociosqu ad litora torquent
				per conubia nostra, per inceptos himenaeos.</p>
		</div>
		<h3>자주 묻는 질문 5</h3>
		<div>
			<p>길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게
				길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게 길게</p>
			<p>나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는
				영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라.
				나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈
				몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는
				영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라.
				나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈
				몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는
				영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라. 나는 영어따윈 몰라.
			</p>
		</div>
	</div>
	-->
	<!-- 아코디언  -->
	<!-- 페이지네이션 시작 -->
	<!--  
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
	</div>
	
	
</div>
-->
<!-- 페이지네이션 끝 -->
