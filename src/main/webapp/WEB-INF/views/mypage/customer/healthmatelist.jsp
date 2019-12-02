<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script>
<!-- 전체선택 -->
$(function(){

   $('#matelist-checkbox-all input:checkbox').click(function(){
      if($(this).val() == 'message-check-all'){
         if($(this).prop('checked')){
            $('#matelist-checkbox tr th input:checkbox').each(function(){
               $(this).prop('checked',true);
            });
         }
         else{
            $('#matelist-checkbox tr th input:checkbox').each(function(){
               $(this).prop('checked',false);
            });
         }
      }
   });
   $('#matelist-checkbox input:checkbox').click(function(){
      if($(this).prop('checked')){
         if($('#matelist-checkbox tr th input:checkbox').length == $('#matelist-checkbox tr th input:checkbox:checked').length){
            $('#matelist-checkbox-all input:checkbox').prop('checked',true);
         }
      }
      else{
         $('#matelist-checkbox-all input:checkbox').prop('checked',false);
      }
   });   
   
   //메세지함 띄우기
   var showMessage=function(data,fromid){
      //console.log("메세지함에 들어오니?");
      //console.log("데이타: ",data, "데이타 타입: ",typeof data);
      //var obj=JSON.parse(data);
      //console.log("obj는 말이죠",obj," 타입은",typeof obj)
      console.log("메시지함 띄울 때 fromid:"+fromid);
      //console.log("fromid: ",fromid);
      $('#messageModalScrollableTitle').html(fromid);
      if(data["RECEIVE"]=="N"){
         var message='<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">';
             message+="쪽지가 없습니다.";
               message+='</p>';
               $('#messageBox').html(message);
            }
      else{
         var message="";
         console.log("fromid: ",fromid);
         $.each(data,function(index,element){
            console.log("좀들어가라");
            //var id=element["FROMID"];
            message+='<p class="badge '+element["BADGE"]+' text-wrap" style="font-size:medium; text-align:'+element["ALIGN"]+';">';
            if(element["ALIGN"]=="left"){
               if(element["PICTURE"]!=null){
                  message+='<img class="img-woman" id="you" src="'+element["PICTURE"]+'" />';
               }
               else{
                  message+='<img class="img-woman" id="you" src="http://mblogthumb4.phinf.naver.net/20150427_171/ninevincent_1430122791934m8cxB_JPEG/kakao_4.jpg?type=w2" />';
               }
               message+=element["CONTENT"];
               message+="<br/><span id='to_id' style='text-align'>"+element["ID"]+"</span>";
               message+="</p>";
            }
            else if(element["ALIGN"]=="right"){
               message+=element["CONTENT"];
               if(element["PICTURE"]!=null){
                  message+='<img class="img-woman" id="you" src="'+element["PICTURE"]+'" />';
               }
               else{
                  message+='<img class="img-woman" id="you" src="http://mblogthumb4.phinf.naver.net/20150427_171/ninevincent_1430122791934m8cxB_JPEG/kakao_4.jpg?type=w2" />';
               }
               message+="<br/><span id='to_id' style='text-align'>"+element["ID"]+"</span>";
               message+="</p>";   
            }
         });
         $('#messageModalScrollableTitle').html(fromid);
         $('#messageBox').html(message);
      }////////////else
   }///////////////////
   
   //메세지 보내기]
       $('#send').click(function(){
         console.log("send 클릭");
         var from_ID=$('#messageModalScrollableTitle').text();
         console.log("send 클릭 시 fromid:"+from_ID);
         var content = $('input[name=content]').val();
         //console.log("sendObj[ID]: ",sendObj["ID"])
         //console.log("sendObj: ",sendObj,"sendObj 타입: ",typeof sendObj);
         
         if(content.length!=0){
            $.ajax({
               url:"<c:url value='/messageSend.do'/>",
               data:{"fromid":from_ID,"content":content},
               success:function(data){
                  console.log("성공");
                  $('input[name=content]').val(""); 
                  setInterval(request, 300);
               },
               error:function(data){
                  console.log("실패",data);
               }
            })
         }//////////
         else{
            alert("메세지를 입력하세요");
         }////////////
         

       
       
         //var sendObj=JSON.parse(data);
         //console.log("sendObj[ID]: ",sendObj["ID"])
         //console.log("sendObj: ",sendObj,"sendObj 타입: ",typeof sendObj);
         
         /*
         if(content.length!=0){
            $.ajax({
               url:"<c:url value='/messageSend.do'/>",
               data:{"fromid":fromid,"content":content},
               success:function(data){
                  console.log("성공");
                  $('input[name=content]').val("");                             
               },
               error:function(data){
                  console.log("실패",data);
               }
            })
         }//////////
         else{
            alert("메세지를 입력하세요");
         }////////////
         */
      });

   //메이트 클릭시 뜨는 쪽지함 모달
   $('#healthMate tr').click(function(){
		// 현재 클릭된 Row(<tr>)
		var tr = $(this);
		var td = tr.children();
		var fromid = td.eq(1).text();
		console.log('fromid:'+fromid);
		var request;
		
	   $('#messageModalScrollable').modal('show');
		   request=$.ajax({
		               url:"<c:url value='/message.do'/>",
		               data:{"fromid":fromid,"id":'${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}'},
		               dataType:"json",
		               success:function(data){
		                  showMessage(data,fromid);
		               },
		               error:function(data){
		                  console.log(data);
		                  console.log("메세지 띄우기 실패")
		               }
		   });
	   
	   $('.close').click(function(){
    	   $('#messageModalScrollable').modal('hide');
 		  console.log('클로즈 클릭!')
 		  //clearTimeout(timeout);
 		  //request.abort();
 		});
	   
   })////////////$('#healthMate tr').click

});

</script>

<style>
#you {
	width: 100px;
	height: 100px;
	border-radius: 50px;

}

#me {
	width: 100px;
	height: 100px;
	border-radius: 50px;

}

#messageBox>p {

   display: block;
}
</style>

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="page-header"
				style="margin-bottom: 25px; border-bottom: 1px solid #D8D8D8;">
				<h2>친구목록</h2>
			</div>


			<div>
				<table class="table table-hover" id="healthMate">
					<thead class="black white-text">
						<tr>
							<th scope="col" class="align-middle text-center">이미지</th>
							<th scope="col" class="align-middle text-center">메이트 아이디</th>
							<th scope="col" class="align-middle text-center">메이트 등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:if test='${empty ToMateList}' var="isEmpty">
							<tr>
								<td colspan="4" class="align-middle text-center">등록한 메이트가
									없습니다.</td>
							</tr>
						</c:if>

						<c:forEach var="toMate" items="${ToMateList}" varStatus="loop">
							<tr>
								<td scope="row" class="align-middle text-center"><img
									style="width: 80px; height: 80px;"
									src="http://mblogthumb4.phinf.naver.net/20150427_171/ninevincent_1430122791934m8cxB_JPEG/kakao_4.jpg?type=w2"
									alt="avatar mx-auto white" class="rounded-circle img-fluid">
								</td>
								<td class="align-middle text-center">${toMate.FRIEND_ID }</td>
								<td class="align-middle text-center">${toMate.MATEDATE }</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>

			

         <!-- 나를 추가한 메이트 목록
         <div>
         <span class="badge badge-primary mb-2" style="font-size: medium;">나를 추가한 메이트</span>
            <table class="table table-hover">
               <thead class="black white-text">
                  <tr>
                     <th scope="col">이미지</th>
                           <th scope="col">메이트 아이디</th>
                           <th scope="col">메이트 등록일</th>
                  </tr>
               </thead>
               <tbody>
               <c:if test='${empty FromMateList}' var="isEmpty">
                  <tr>
                     <td colspan="4" class="text-center">등록한 메이트가 없습니다.</td>
                  </tr>
               </c:if>
               <c:forEach var="fromMate" items="${FromMateList}" varStatus="loop">
                   <tr class="healthMate" id="${fromMate.FRIEND_ID}" >
                     <td scope="row" style="size:0.5em;" class="align-middle">
                           <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                           </td>
                     <td class="align-middle text-center" id="fromID">${fromMate.id }</td>
                     <td class="align-middle text-center">${fromMate.MATEDATE }</td>
                   </tr>
                </c:forEach>
                   <!--
                   <tr>
                     <th scope="row"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/42.jpg" alt="Card image cap"></th>
                     <td>Jacob</td>
                     <td>달리기가 너무 힘드네요. 같이 뛸 사람 구해봐요</td>
                   </tr>
                   <tr>
                     <th scope="row"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/43.jpg" alt="Card image cap"></th>
                     <td>Larry</td>
                     <td>죽겄다</td>
                   </tr>
                  
                 </tbody>
            </table>
         </div>
-->

			<!-- 페이지네이션 시작
         <div class="row">
            <div class="col">
               <nav class="d-flex justify-content-center mt-3">
                  <ul class="pagination pagination-circle pg-blue">
                     <li class="page-item"><a class="page-link" href="#">◀</a></li>
                     <li class="page-item"><a class="page-link" href="#" tabindex="-1">＜</a></li>
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
         -->
			<!-- 페이지네이션 끝 -->
		</div>

		<!-- 쪽지함 시작 -->
		<div class="col-md-6">
			<div class="page-header"
				style="margin-bottom: 25px; border-bottom: 1px solid #D8D8D8;">
				<h2>쪽지함</h2>
			</div>
			<div>
				<!--
            <div class="float-right">
               <button class="btn purple-gradient p-2 px-4" data-toggle="modal" data-target="#message-delete-modal">쪽지삭제</button>
            </div>
         -->
				<table class="table table-hover">
					<thead class="black white-text">
						<tr>
							<th style="width: 20%" scope="col">메이트 아이디</th>
							<th style="width: 60%; text-align: center" scope="col">내용</th>
						</tr>
					</thead>
					<tbody id="matelist-checkbox">
						<tr>

							<td id="fromid" class="align-middle text-center">Larry</td>
							<td class="align-middle text-center"><a href="#"
								data-toggle="modal" data-target="#messageModalScrollable"
								id="messagelist">응 ㄲㅈ</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 쪽지함 끝 -->


			<!-- 페이지네이션 시작 
         <div class="row">
            <div class="col">
               <nav class="d-flex justify-content-center mt-3">
                  <ul class="pagination pagination-circle pg-blue">
                     <li class="page-item"><a class="page-link" href="#">◀</a></li>
                     <li class="page-item"><a class="page-link" href="#" tabindex="-1">＜</a></li>
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
         -->
			<!-- 페이지네이션 끝 -->
		</div>
	</div>

	<!-- 쪽지함 모달 -->
	<div class="modal fade" id="messageModalScrollable" tabindex="-1"
		role="dialog" aria-labelledby="messageModalScrollableTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="messageModalScrollableTitle">Larry</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="messageBox"
					style="background-color: black;">
					<span id="message_line"></span>

					<p class="badge badge-light text-wrap"
						style="text-align: left; font-size: medium;">
						<img class="img-woman" id="you"
							src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						응 ㄲㅈ
					</p>


				</div>
				<div class="modal-footer">
					<input type="text" class="form-control" name="content"
						placeholder="내용을 입력하세요">
					<button class="btn blue-gradient p-2 px-4" id="send">→</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 쪽지 삭제 모달 -->
	<div class="modal fade" id="message-delete-modal" tabindex="-1"
		role="dialog" aria-labelledby="message-delete-ModalCenterTitle"
		aria-hidden="true">


      <!-- 쪽지함 시작 -->
      <div class="col-md-6">
         <div class="page-header"
            style="margin-bottom: 25px; border-bottom: 1px solid #D8D8D8;">
            <h2>쪽지함</h2>
         </div>
         <div>
            <!--
            <div class="float-right">
               <button class="btn purple-gradient p-2 px-4" data-toggle="modal" data-target="#message-delete-modal">쪽지삭제</button>
            </div>
         -->
            <table class="table table-hover">
               <thead class="black white-text">
                  <tr>
                     <th style="width: 20%" scope="col">메이트 아이디</th>
                     <th style="width: 60%; text-align: center" scope="col">내용</th>
                  </tr>
               </thead>
               <tbody id="matelist-checkbox">
                  <tr>

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="message-delete-ModalLongTitle">삭제</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">정말로 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn blue-gradient">삭제</button>
					<button type="button" class="btn peach-gradient"
						data-dismiss="modal">취소</button>

				</div>
			</div>
		</div>
	</div>
       <td id="fromid" class="align-middle text-center">Larry</td>
                     <td class="align-middle text-center"><a href="#"
                        data-toggle="modal" data-target="#messageModalScrollable"
                        id="messagelist">응 ㄲㅈ</a></td>
                  </tr>
               </tbody>
            </table>
         </div>
         <!-- 쪽지함 끝 -->


         <!-- 페이지네이션 시작 
         <div class="row">
            <div class="col">
               <nav class="d-flex justify-content-center mt-3">
                  <ul class="pagination pagination-circle pg-blue">
                     <li class="page-item"><a class="page-link" href="#">◀</a></li>
                     <li class="page-item"><a class="page-link" href="#" tabindex="-1">＜</a></li>
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
         -->
         <!-- 페이지네이션 끝 -->
      </div>
   </div>

   <!-- 쪽지함 모달 -->
   <div class="modal fade" id="messageModalScrollable" tabindex="-1"
      role="dialog" aria-labelledby="messageModalScrollableTitle"
      aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="messageModalScrollableTitle">Larry</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body" id="messageBox"
               style="background-color: black;">
               <span id="message_line"></span>

               <p class="badge badge-light text-wrap"
                  style="text-align: left; font-size: medium;">
                  <img class="img-woman" id="you"
                     src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
                  응 ㄲㅈ
               </p>


            </div>
            <div class="modal-footer">
               <input type="text" class="form-control" name="content"
                  placeholder="내용을 입력하세요">
               <button class="btn blue-gradient p-2 px-4" id="send">→</button>
            </div>
         </div>
      </div>
   </div>


   <!-- 쪽지 삭제 모달 -->
   <div class="modal fade" id="message-delete-modal" tabindex="-1"
      role="dialog" aria-labelledby="message-delete-ModalCenterTitle"
      aria-hidden="true">

      <!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
      <div class="modal-dialog modal-dialog-centered" role="document">

         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="message-delete-ModalLongTitle">삭제</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">정말로 삭제하시겠습니까?</div>
            <div class="modal-footer">
               <button type="button" class="btn blue-gradient">삭제</button>
               <button type="button" class="btn peach-gradient"
                  data-dismiss="modal">취소</button>

            </div>
         </div>
      </div>
   </div>

</div>