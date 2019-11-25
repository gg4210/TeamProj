<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>HealthMate Main</title>



<script>

$(function(){
	
	var showMateView=function(data){
		//console.log("show는 들어오시나요")
		//console.log("data",data,",타입: ",typeof data);//type object
		var mateTitle='<p class="heading">'+'<span id="mateNumber">'+data.NO+'</span>'+data.TITLE+'</p><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="white-text">&times;</span></button>';
		var mateViewContent='<div class="col-5"><img src="http://placehold.it/500x325" class="img-fluid" alt=""></div>';
			mateViewContent+='<div class="col-7">';
			mateViewContent+='<p><strong>[지역]</strong>'+data.LOCATION+'</p>';
			mateViewContent+='<p><strong>[관심종목]</strong>'+data.INTERSPORT+'</p>';
			mateViewContent+='<p><strong>[운동시간]</strong>'+data.TIME+'</p>';
			mateViewContent+='<p><strong>[대표 태그]</strong>'+data.TAG+'</p>';
			mateViewContent+='<p><strong>[운동시간]</strong>'+data.TIME+'</p>';
			mateViewContent+='<p><strong>[글 내용]</strong></p>';
			mateViewContent+='<p>'+data.CONTENT+'</p>';
			mateViewContent+="</div>";
			
		$("#modal_header").html(mateTitle);
		$("#modal_content").html(mateViewContent);
	}////////////////////////
	
	//메이트 상세보기]
	$('.detail').click(function(){
		var mateNo=$(this).attr("id");
		//var mateNo=$("#number").text();
		//var mateNo=$('#detailButton').val();
		console.log(mateNo);
		console.log('view 클릭!')
		$.ajax({
			url:"<c:url value='/member/mateView.do'/>",
			data:{'no':mateNo},
			dataType: "json",
			success:function(data){
				showMateView(data);
				$('#detail-modal').modal('show');		
			},
			error:function(){
				console.log("실패입니다");
			}
		});
	});/////////////////////////상세보기
	
	//메이트 삭제]
	$('#mateDelete').click(function(){
		var num=$('#mateNumber').text();
		$.ajax({
			url:"<c:url value='/member/mateDelete.do'/>",
			data:{'no':num},
			success: function(data){
				console.log("성공");
				$('#detail-modal').modal('hide');
				//$('#mateDeleteCheck').modal('show');
				location.href="healthMateMain.do";
			},
			error: function(data){console.log("실패")}
		})
	});/////////////////////////삭제

		//메이트 추가하기]
		$('.plus_mate').click(function(){
			console.log("눌려졌니??");
			var mateNo=$(this).attr("id");
			console.log(mateNo);
			$.ajax({
				url:"<c:url value='/member/mateView.do'/>",
				data:{'no':mateNo},
				dataType: "json",
				success:function(data){
					$('#plusMateId').html(data.ID)
					$('#plus-modal').modal('show');
					$("#plusOK").click(function(){
						console.log("추가하기에 추가하기 클릭");
						$.ajax({
							url:"<c:url value='/member/plusMate.do'/>",
							data:{"fno":data.NO,"FRIEND_ID":data.ID},
							success:function(data){
								console.log("성공하였습니다!!!");
								var obj = JSON.parse(data);
								console.log();
								
								$('#plus-modal').modal('hide');
								console.log(data);
								if(obj["PLUSCHECK"]=="0"){
									$("#plusCancel").modal('show');
								}
								else{
									$('#plusCheck').modal('show');
									$("#plusCancel").modal('hide');
								}
							},
							error:function(data){console.log("실패하였지요ㅠ")}
						})

					})
				},
				error:function(data){console.log("추가하기 실패")}
			})
			
		})/////////////////////////
		
		/*
		$.ajax({
				url:"<c:url value='/member/mateView.do'/>",
				data:{'no':mateNo},
				dataType: "json",
				success:function(data){
					plusMateModal(data);	
					$('#plus-modal').modal('show');
				},
				error:function(){
					console.log("실패입니다");
				}
			})
		*/

	
});

</script>





  <!-- Page Content -->
  <div class="container-fluid">
  
    <!-- Jumbotron Header -->
    <header class="jumbotron">
      <h1 class="display-3">Come with Me</h1>
      <p class="lead">We'll do it together!</p>
    </header>
	
	<div class="text-right mb-2">
	<button type="button" class="btn btn-primary" id="write">글쓰기</button>
	</div>

	<!-- Page Features -->
	<div class="row text-center">
	<c:forEach var="mate" items="${mateList}" varStatus="loop">
	<!-- card 시작 -->
	<div class="col-lg-3 col-md-6">
			<div class="card h-100">
				<h2 class="card-title m-0 p-2 mdb-color darken-3" style="color: white">${mate.title }</h2>
				<div class="card-image-container p-3">
					<img class="card-img-top" src="https://i.pinimg.com/originals/05/23/7d/05237daed52cbcc8a09cc659fefd055a.jpg" alt="이미지" style="width: 100%">
						<div class="card-img-middle">
							<div class="plus_mate text px-3" id="${mate.no }">추가하기</div>
						</div>
				</div>
				<div class="card-body p-0">
				<div class="row justify-content-center">
					<div class="row tag pb-3">
							<div class="mr-3">
							<h5><span class="badge badge-pill badge-default">${mate.first_tag }</span></h5>
							</div>
							<div class="mr-3">
								<h5><span class="badge badge-pill badge-default">${mate.second_tag }</span></h5>
							</div>
							<div>
								<h5><span class="badge badge-pill badge-default">${mate.third_tag }</span></h5>
							</div>
					</div>
				</div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-pencil-alt"></i>등록일: ${mate.postDate }/${mate.no }</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-search-location"></i>지역: ${mate.location }</strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="fas fa-heart"></i>관심 종목: ${mate.interSport } </strong></div>
					<div class="row justify-content-center pb-1"><strong><i class="far fa-clock"></i>운동 시간: ${mate.healthTime }</strong></div>
					<div class="row justify-content-center pb-3"><strong><i class="far fa-calendar-plus"></i>일자: ${mate.startDate } ~ ${mate.endDate }</strong></div>
				</div>
					
				<div class="card-footer">
					<button type="submit" class="detail btn btn-info px-3" id="${mate.no }">상세보기</button>
				</div>
			</div>
		</div>
		</c:forEach>
		</div>
		<!-- card 끝 -->
		
		
		
		<!-- 페이징, 검색창 시작 -->
		<div class="row justify-content-center pt-4">
			<div class="text-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination pg-blue justify-content-center">
						<li class="page-item "><a class="page-link" tabindex="-1">Previous</a>
						</li>
						<li class="page-item"><a class="page-link">1</a></li>
						<li class="page-item"><a class="page-link">2</a></li>
						<li class="page-item"><a class="page-link">3</a></li>
						<li class="page-item "><a class="page-link">Next</a></li>
					</ul>
				</nav>
				<form class="form-inline" method="#" action="#">
					<div class="p-1 px-3form-group">
						<select name="searchColumn" class="form-control">
							<option value="title">제목</option>
							<option value="name">작성자</option>
							<option value="content">내용</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="searchWord" class="form-control" placeholder="Search" />
					</div>
					<button type="submit" class="p-2 px-3 btn btn-primary">검색</button>
				</form>
			</div>
		</div>
		<!-- 페이징, 검색창 끝 -->

		</div>
		<!-- /.row -->


		<!-- PLUS MATE 모달 시작 -->
		<div class="modal fade" id="plus-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-info modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading">PLUS MATE</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row">
							<div class="col-5">
								<img src="http://placehold.it/500x325" class="img-fluid" alt="">
							</div>
							<div class="col-7">
								<p><span id="plusMateId"> </span>님을<br/>추가하시겠습니까?</p>
								<button type="button" class="plusOK btn btn-info btn-md" id="plusOK">추가하기</button>
								<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
							</div>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- PLUS MATE 모달 끝 -->
		
		
		<!-- 상세보기 모달 시작 -->
		<div class="modal fade" id="detail-modal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-lg modal-notify modal-primary modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header" id="modal_header">
						<!-- ajax로 추가 -->
					</div>
					<!--Body-->
					<div class="modal-body" id="modal_body">
						<div class="row" id="modal_content">
						<!-- ajax로 추가 -->
						</div>
				<div class="row justify-content-center">';
					<button type="submit" class="btn btn-warning btn-md" id="mateUpdate">수정하기</button>
				    <button type="button" class="btn btn-danger btn-md" id="mateDelete">삭제하기</button>
					<button type="button" class="btn btn-info btn-md">추가하기</button>
				<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
				</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 상세보기 모달 끝 -->
		
		
		<!-- 삭제 성공 확인 모달 시작
		<div class="modal fade" id="mateDeleteCheck" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-sm modal-danger modal-dialog-centered" role="document">
				<!--Content
				<div class="modal-content">
					<!--Header
					<div class="modal-header text-center">
						<p class="heading font-weight-bold">삭제 확인</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body
					<div class="modal-body">
						<div class="row justify-content-center">
								<p>
									<strong>삭제 완료되었습니다.</strong>
								</p>				
						</div>
						<div class="row justify-content-center">
							<button type="button" class="btn btn-info btn-md" data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
				<!--/.Content
			</div>
		</div>
		<!-- 삭제 성공 확인 모달 끝
		-->
		
		
		<!-- 메이트 추가 확인 창 시작 -->
		<div class="modal fade" id="plusCheck" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-sm modal-notify modal-info modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header">
						<p class="heading text-center "><strong>PLUS MATE</strong></p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body text-center">
						<div class="row text-center">
							<p><span style="font-weight: bold;">추가 완료!</span></p>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 메이트 추가 확인 창 끝 -->
		
		<!-- 메이트 추가 취소 확인 창 시작 -->
		<div class="modal fade" id="plusCancel" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-sm modal-notify modal-danger modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center">
						<p class="heading"><strong>PLUS MATE CANCEL</strong></p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body text-center">
						<div class="row">
							<p><span style="font-weight: bold;">이미 등록된 메이트입니다:)</span></p>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 메이트 추가 취소 확인 창 끝 -->
		

</div>
<!-- /.container -->
