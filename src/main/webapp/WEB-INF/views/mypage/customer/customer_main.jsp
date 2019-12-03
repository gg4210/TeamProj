<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(function(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	var checkcenterlists=function(){
		$.ajax({
			url:"<c:url value='/ajax/UserCenterListmypage?_csrf="+token+"'/>",
			type:"post",
			success:showcenterlists,
		    error:function(request,status,error){
		    	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
		    }
		});
	}
	var showcenterlists=function(data){
		var comment='';
		console.log(data.length);
		if(data.length==0){
			comment+='<tr><td colspan="3">현재 등록한 센터가 없습니다.</td></tr>';
		}
		else{
			$.each(data,function(index, element){
				if(element.centerisallowed==undefined){
					console.log("element확인:",element);
					console.log("isallowed 확인",element['isallowed']);
					comment+='<tr>';
					comment+='<td scope="row" class="align-middle"><div class="custom-control custom-checkbox"><input type="checkbox" class="custom-control-input" id="'+element['index']+'"><label class="custom-control-label" for="'+element['index']+'"></label></div></td>';
					comment+='<td>'+element['center_name']+'</td>';
					comment+='<td>'+element['STARTDATE']+'~'+element['ENDDATE']+'</td>';
					comment+='</tr>';
				}
			});//$.each
		}
		$('#centerlist').html(comment);
	}
	checkcenterlists();
	var checkbookmarklists=function(){
		$.ajax({
			url:"<c:url value='/ajax/getBookmarkList?_csrf="+token+"'/>",
			type:"post",
			success:showbookmarklists,
		    error:function(request,status,error){
		    	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
		    }
		});
	}
	var showbookmarklists=function(data){
		var comment='';
		if(data.length==0){
			comment+='<tr><td colspan="3">현재 찜한 센터가 없습니다.</td></tr>';
		}
		else{
			$.each(data,function(index, element){
				if(element.centerisallowed==undefined){
					console.log("element확인:",element);
					console.log("isallowed 확인",element['isallowed']);
					comment+='<tr>';
					comment+='<td scope="row" class="align-middle"><div class="custom-control custom-checkbox"><input type="checkbox" class="custom-control-input" id="'+element['index']+'"><label class="custom-control-label" for="'+element['index']+'"></label></div></td>'
					comment+='<td>'+element['center_name']+'</td>';
					comment+='<td>'+element['addr']+'</td>';
					comment+='</tr>';
				}
			});//$.each
		}
		$('#bookmarklist').html(comment);
	}
	checkbookmarklists();
});
</script>
<div class="container">
   <!-- row1 시작 -->
   <div class="row">
      <!-- col1 등록한 센터 시작 -->
      <div class="accordion col" id="accordion1">
         <div class="card">
            <div class="card-header mdb-color darken-3 pb-0" id="heading1">
               <button class="btn btn-link" type="button" data-toggle="collapse"
                     data-target="#center" aria-expanded="true"
                     aria-controls="collapseOne">
                     
                     <div class="row">
                        <div class="col-3 mr-3">
                           <h4>
                           	  <span class="fa-stack">
                              <i class="far fa-circle fa-stack-2x text-white"></i>
                              <i class="fas fa-heart fa-stack-1x text-white"></i>
                           	  </span>
                           </h4>               
                        </div>
                        <div class="col">
                           <div class="row">
                              <h5 class="text-left font-weight-bold text-white">
                                	내가 등록한 센터
                              </h5>
                           </div>
                           <div class="row">
                              <p class="text-left text-white">
                                 <span class="badge badge-pill badge-danger"><i class="far fa-heart" aria-hidden="true"></i></span>
                                 	자신이 등록한 센터를 확인하세요!
                              </p>
                           </div>
                        </div>
                     </div>
               </button>
            </div>

            <div id="center" class="collapse" aria-labelledby="heading1"
               data-parent="#accordion1">
               <!-- 카드 바디 시작 -->
               <div class="card-body pt-1">
               <!-- 삭제 버튼 시작 -->
               <div class="row float-right pr-2">
               		<button type="submit" class="btn btn-danger p-1 px-2" id="center_delete">삭제하기</button>
               	</div>
               	<!-- 삭제 버튼 끝 -->
               	  <!-- 등록한 센터 테이블 시작 -->
                  <table class="table" style="text-align: center;" >
                     <thead class="bg-primary white-text">
                        <tr class="align-middle">
                           <th scope="col" style="width: 5%">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="center_allCheck">
                              <label class="custom-control-label" for="center_allCheck"></label>
                           </div>
                           </th>
                           <th scope="col" style="width: 35%">센터명</th>
                           <th scope="col" style="width: 45%">일자</th>
                        </tr>
                     </thead>
                     <tbody id="centerlist">
                        <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="center_check3">
                              <label class="custom-control-label" for="center_check3"></label>
                           </div>
                           </td>
                           <td><a href="#">도레미</br>스포츠센터</a></td>
                           <td class="align-middle">2019.10.28 ~ 2019.11.27</td>
                        </tr>
                        <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="center_check2">
                              <label class="custom-control-label" for="center_check2"></label>
                           </div>
                           </td>
                           <td><a href="#">파솔라</br>스포츠센터</a></td>
                           <td class="align-middle">2019.10.28 ~ 2019.11.27</td>
                        </tr>
                        <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="center_check1">
                              <label class="custom-control-label" for="center_check1"></label>
                           </div>
                           </td>
                           <td><a href="#">시도</br>스포츠센터</a></td>
                           <td class="align-middle">2019.10.28 ~ 2019.11.27</td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 등록한 센터 테이블 끝 -->  
                  <div class="row float-right pr-2 pb-3">
                  	<span style="color: red; font-weight: bold;">※센터 등록은 최대 3개까지 가능합니다.</span>
                  </div>
               </div>
               <!-- 카드 바디 끝 -->
            </div>
         </div>
      </div>
      <!-- col1 끝 -->

      <!-- col 2 찜한 센터 시작 -->
      <div class="accordion col" id="accordion2">
         <div class="card">
            <div class="card-header mdb-color darken-3 pb-0" id="heading2">
               <button class="btn btn-link" type="button" data-toggle="collapse"
                     data-target="#like_center" aria-expanded="true"
                     aria-controls="collapseThree">

                     <div class="row">
                     <div class="col-3 mr-2">
      
                        <h4 class="text-left font-weight-bold">
                           <span class="fa-stack"> <i
                              class="far fa-circle fa-stack-2x text-white"></i>
                              <i class="fas fa-star fa-stack-1x text-white"></i>
                           </span>
                        </h4>
                     
                     </div>
                     <div class="col">
                        <div class="row">
                           <h5 class="text-left font-weight-bold text-white">
                                	내가 찜한 센터
                           </h5>
                        </div>
                        <div class="row">
                           <p class="text-left text-white">
                              <span class="badge badge-pill badge-danger"><i class="far fa-star"></i></span>
                              	자신이 찜한 센터를 확인하세요!
                           </p>
                        </div>
                     </div>
                     </div>   
                     
               </button>
            </div>

            <div id="like_center" class="collapse" aria-labelledby="connect"
               data-parent="#accordion2">
               <!-- 카드 바디 시작 -->
               <div class="card-body pt-1">
               <!-- 삭제 버튼 시작 -->
               <div class="row float-right pr-2">
               		<button type="submit" class="btn btn-danger p-1 px-2" id="like_delete">삭제하기</button>
               	</div>
               	<!-- 삭제 버튼 끝 -->
               	  <!-- 등록한 센터 테이블 시작 -->
                  <table class="table" style="text-align: center;" >
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col" style="width: 5%">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="like_allCheck">
                              <label class="custom-control-label" for="like_allCheck"></label>
                           </div>
                           </th>
                           <th scope="col" style="width: 35%">센터명</th>
                           <th scope="col" style="width: 45%">위치</th>
                        </tr>
                     </thead>
                     <tbody id="bookmarklist">
                        <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="like_check5">
                              <label class="custom-control-label" for="like_check5"></label>
                           </div>
                           </td>
                           <td><a href="#">오늘은</br>스포츠센터</a></td>
                           <td class="align-middle">서울시 금천구</td>
                        </tr>
                        <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="like_check4">
                              <label class="custom-control-label" for="like_check4"></label>
                           </div>
                           </td>
                           <td><a href="#">월요일</br>스포츠센터</a></td>
                           <td class="align-middle">서울시 금천구</td>
                        </tr>
                        <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="like_check3">
                              <label class="custom-control-label" for="like_check3"></label>
                           </div>
                           </td>
                           <td><a href="#">빠른</br>스포츠센터</a></td>
                           <td class="align-middle">서울시 금천구</td>
                        </tr>
                         <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="like_check2">
                              <label class="custom-control-label" for="like_check2"></label>
                           </div>
                           </td>
                           <td><a href="#">귀가</br>스포츠센터</a></td>
                           <td class="align-middle">서울시 금천구</td>
                        </tr>
                         <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="like_check1">
                              <label class="custom-control-label" for="like_check1"></label>
                           </div>
                           </td>
                           <td><a href="#">부탁</br>스포츠센터</a></td>
                           <td class="align-middle">서울시 강남구</td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 등록한 센터 테이블 끝 -->  
                  <div class="row float-right pr-2 pb-3">
                  	<span style="color: red; font-weight: bold;">※센터 찜하기는 최대 3개까지 가능합니다.</span>
                  </div>
               </div>
               <!-- 카드 바디 끝 -->
            </div>
         </div>
      </div>
      <!-- col 2 끝 -->
   </div>
   <!-- row1 끝 -->
   
   
   
   <!-- row2 시작 -->
   <div class="row mt-3">
      <!-- col 1 나의 운동메이트 시작 -->
      <div class="accordion col" id="accordion3">
         <div class="card">
            <div class="card-header mdb-color darken-3 pb-0" id="heading3">
               <button class="btn btn-link" type="button" data-toggle="collapse"
                  data-target="#like_mate" aria-expanded="true"
                  aria-controls="collapseTwo">

                  <div class="row">
                     <div class="col-3 mr-3">

                        <h4 class="text-left font-weight-bold">
                           <span class="fa-stack"> <i
                              class="far fa-circle fa-stack-2x text-white"></i> <i
                              class="fas fa-user-friends fa-stack-1x text-white"></i>
                           </span>
                        </h4>

                     </div>
                     <div class="col">
                        <div class="row">
                           <h5 class="text-left font-weight-bold text-white">나의 운동 메이트
                           </h5>
                        </div>
                        <div class="row">
                           <p class="text-left text-white">
                              <span class="badge badge-pill badge-primary">with</span>
                              	나의 운동메이트들을 확인하세요!
                           </p>
                        </div>
                     </div>
                  </div>
               </button>
            </div>

            <div id="like_mate" class="collapse" aria-labelledby="heading3"
               data-parent="#accordion3">
               <div class="card-body pt-1">
               	  <!-- 더보기  시작 -->
               	  	<div class="row float-right pr-2">
               		<button type="button" class="btn btn-info p-1 px-2" id="mate_select"><i class="fas fa-plus"></i> 더보기</button>
               	</div>               	  
               	<!-- 더보기 끝 -->
                  <!-- 테이블 시작 -->
                  <table class="table" style="text-align: center;">
                     <thead class="bg-primary white-text">
                        <tr>
                          <th scope="col">이미지</th>
                           <th scope="col">메이트 아이디</th>
                           <th scope="col">메이트 등록일</th>
                        </tr>
                     </thead>
                     <tbody>
                        
					<tbody>
					<c:if test='${empty ToMateList}' var="isEmpty">
						<tr>
							<td colspan="4" class="text-center">등록한 메이트가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="toMate" items="${ToMateList}" varStatus="loop">
					    <tr>
						   <td scope="row" style="size:0.5em;" class="align-middle">
                           <img src="http://mblogthumb4.phinf.naver.net/20150427_171/ninevincent_1430122791934m8cxB_JPEG/kakao_4.jpg?type=w2" class="rounded-circle img-fluid">
                           </td>
							<td class="align-middle text-center">${toMate.FRIEND_ID }</td>
							<td class="align-middle text-center">${toMate.MATEDATE }</td>
					    </tr>
					 </c:forEach>
					 <!--
                        <tr>
                           <td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="mate_check2">
                              <label class="custom-control-label" for="mate_check2"></label>
                           </div>
                           </td>
                           <td scope="row">
                           	<img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                           </td>
                           <td class="align-middle">LEE**</td>
                           <td class="align-middle">2019.10.20</td>
                       	   <td class="align-middle"><button type="button" class="btn btn-default btn-rounded p-1 px-3">Click!</button></td>
                        </tr>
                        <tr>
                        	<td scope="row" class="align-middle">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="mate_check3">
                              <label class="custom-control-label" for="mate_check3"></label>
                           </div>
                           </td>
                           <td scope="row">
                           	<img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(27).jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                           </td>
                           <td class="align-middle">PAR**</td>
                           <td class="align-middle">2019.10.01</td>
                           <td class="align-middle"><button type="button" class="btn btn-default btn-rounded p-1 px-3">Click!</button></td>
                        </tr>
                        -->
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
                     data-target="#message" aria-expanded="true"
                     aria-controls="collapseFour">
                     
                     <div class="row">
                     <div class="col-3">
      
                        <h4 class="text-left font-weight-bold">
                           <span class="fa-stack"> 
                              <i class="far fa-circle fa-stack-2x text-white"></i> 
                              <i class="fa fa-envelope fa-stack-1x text-white"></i>
                           </span>
                        </h4>
                     
                     </div>
                     <div class="col">
                        <div class="row">
                           <h5 class="text-left font-weight-bold text-white">받은 쪽지함
                           </h5>
                        </div>
                        <div class="row">
                           <p class="text-left text-white">
                              <span class="badge badge-pill badge-primary">new</span> 메이트들의 쪽지를 확인하세요!
                           </p>
                        </div>
                     </div>
                     </div>
                     
                     
                  </button>
            </div>
            <div id="message" class="collapse" aria-labelledby="board" data-parent="#accordion4">
            <div class="card-body pt-1">
            	<!-- 더보기  시작 -->
               	  	<div class="row float-right pr-2">
               	  	<button type="submit" class="btn btn-danger p-1 px-2" id="msg_delete">삭제하기</button>
               		<button type="button" class="btn btn-info p-1 px-2" id="msg_plus"><i class="fas fa-plus"></i>더보기</button>
               	</div>               	  
               	<!-- 더보기 끝 -->
               <!-- 쪽지함 테이블 시작 -->
                  <table class="table" style="text-align: center;" >
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col" style="width: 5%">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="msg_allCheck">
                              <label class="custom-control-label" for="msg_allCheck"></label>
                           </div>
                           </th>
                           <th scope="col" style="width: 25%">보낸사람</th>
                           <th scope="col" style="width: 40%">발신일</th>
                           <th scope="col" style="width: 20%">읽음 여부</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="msg_check3">
                              <label class="custom-control-label" for="msg_check3"></label>
                           </div>
                           </td>
                           <td><a href="#">KIM**</a></td>
                           <td>2019.10.28</td>
                           <td><span style="color: red;">읽지않음</span></td>
                        </tr>
                        <tr>
                           <td scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="msg_check2">
                              <label class="custom-control-label" for="msg_check2"></label>
                           </div>
                           </td>
                           <td><a href="#">KIM**</a></td>
                           <td>2019.10.25</td>
                           <td><span style="color: red;">읽지않음</span></td>
                        </tr>
                        <tr>
                           <td scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="msg_check1">
                              <label class="custom-control-label" for="msg_check1"></label>
                           </div>
                           </td>
                           <td><a href="#">LEE**</a></td>
                           <td>2019.10.15</td>
                           <td><span style="color: blue;">읽음</span></td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 쪽지함 테이블 끝 -->        
              </div>
         </div>
      </div>
   </div>
   <!-- col 2 끝 -->
   </div>
   <!-- row2 끝 -->
   
</div>
<!-- container -->
		
		
		<!-- 등록한 센터 삭제하기 모달 시작 -->
		<div class="modal fade" id="centerDeleteCheck" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-sm modal-danger modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center">
						<p class="heading font-weight-bold">등록한 센터 삭제</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row justify-content-center">
								<p>
									<strong>선택한 센터를 삭제하시겠습니까?</strong>
								</p>				
						</div>
						<div class="row justify-content-center">
							<button type="button" class="btn btn-danger btn-md">삭제하기</button>
							<button type="button" class="btn btn-info btn-md" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 등록한 센터 삭제하기 모달 끝 -->
		
		
		<!-- 찜한 센터 삭제하기 모달 시작 -->
		<div class="modal fade" id="likeCenterDeleteCheck" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-sm modal-danger modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center">
						<p class="heading font-weight-bold">찜한 센터 삭제</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row justify-content-center">
								<p>
									<strong>선택한 센터를 삭제하시겠습니까?</strong>
								</p>				
						</div>
						<div class="row justify-content-center">
							<button type="button" class="btn btn-danger btn-md">삭제하기</button>
							<button type="button" class="btn btn-info btn-md" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 등록한 센터 삭제하기 모달 끝 -->







		<!-- 메이트 삭제하기 모달 시작 -->
		<div class="modal fade" id="mateDeleteCheck" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-sm modal-danger modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center">
						<p class="heading font-weight-bold">나의 메이트 삭제하기</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row justify-content-center">
								<p>
									<strong>선택한 메이트를 삭제하시겠습니까?</strong>
								</p>				
						</div>
						<div class="row justify-content-center">
							<button type="button" class="btn btn-danger btn-md">삭제하기</button>
							<button type="button" class="btn btn-info btn-md" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 메이트 삭제하기 모달 끝 -->
		
		
		
		<!-- 쪽지 삭제하기 모달 시작 -->
		<div class="modal fade" id="msgDeleteCheck" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-sm modal-danger modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center">
						<p class="heading font-weight-bold">쪽지 삭제</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row justify-content-center">
								<p>
									<strong>선택한 쪽지를 삭제하시겠습니까?</strong>
								</p>				
						</div>
						<div class="row justify-content-center">
							<button type="button" class="btn btn-danger btn-md">삭제하기</button>
							<button type="button" class="btn btn-info btn-md" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 쪽지 삭제하기 모달 끝 -->
		
	


