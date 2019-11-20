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
});

</script>

<style>
#you {
	width: 100px;
    height:100px;
    border-radius:50px;
}

#me {
	width: 100px;
    height:100px;
    border-radius:50px;
}

#messageBox > p {
	display:block;
}
</style>

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
				<h2>친구목록</h2>
			</div>
			
			<!-- 검색창 -->
			<div class="clearfix">
				<div class="form-inline mb-1 float-right">
					<input type="text" class="form-control" placeholder="Search">
					<button class="btn blue-gradient p-2 px-4">검색</button>
				</div>
			</div>
			<!-- 검색창 끝 -->		
			
			
			
			<div>
				<table class="table table-hover">
					<thead class="black white-text">
						<tr>
							<th style="width:10%;text-align:center" scope="col">사진</th>
							<th style="width:15%" scope="col">닉네임</th>	
							<th style="width:50%;text-align:center" scope="col">코멘트</th>
						</tr>
					</thead>
					<tbody>
					    <tr>
							<th scope="row"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/41.jpg" alt="Card image cap"></th>
							<td>Mark</td>
							<td>요즘 벤치프레스를 파고들고 있네요.</td>
					    </tr>
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

			
			<!-- 페이지네이션 시작 -->
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
			<!-- 페이지네이션 끝 -->
		</div>
	
	<div class="col-md-6">
			<div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
				<h2>쪽지함</h2>
			</div>
			<div>
				<div class="float-right">
					<button class="btn purple-gradient p-2 px-4" data-toggle="modal" data-target="#message-delete-modal">쪽지삭제</button>
				</div>
				<table class="table table-hover">
					<thead class="black white-text">
						<tr>
							<th style="width:5%" scope="col">
								<div class="custom-control custom-checkbox" id="matelist-checkbox-all">
								    <input type="checkbox" class="custom-control-input" id="message-checkall" value="message-check-all">
								    <label class="custom-control-label" for="message-checkall"></label>
								</div>
							</th>
							<th style="width:10%;text-align:center" scope="col">사진</th>
							<th style="width:15%" scope="col">닉네임</th>	
							<th style="width:50%;text-align:center" scope="col">내용</th>
						</tr>
					</thead>
					<tbody id="matelist-checkbox">
					    <tr>
					    	<th>
								<div class="custom-control custom-checkbox">
								    <input type="checkbox" class="custom-control-input" id="health1" value="message1">
								    <label class="custom-control-label" for="health1"></label>
								</div>
							</th>
							<th scope="row"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/41.jpg" alt="Card image cap"></th>
							<td>Mark</td>
							<td>요즘 벤치프레스를 파고들고 있네요.</td>
					    </tr>
					    <tr>
					    	<th>
								<div class="custom-control custom-checkbox">
								    <input type="checkbox" class="custom-control-input" id="health2" value="message2">
								    <label class="custom-control-label" for="health2"></label>
								</div>
							</th>
							<th scope="row"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/42.jpg" alt="Card image cap"></th>
							<td>Jacob</td>
							<td>달리기가 너무 힘드네요. 같이 뛸 사람 구해봐요</td>
					    </tr>
					    <tr>
					    	<th>
								<div class="custom-control custom-checkbox">
								    <input type="checkbox" class="custom-control-input" id="health3" value="message3">
								    <label class="custom-control-label" for="health3"></label>
								</div>
							</th>
							<th scope="row"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/43.jpg" alt="Card image cap"></th>
							<td>Larry</td>
							<td><a href="#" data-toggle="modal" data-target="#messageModalScrollable" id="messagelist">응 ㄲㅈ</a></td>
					    </tr>
					  </tbody>
				</table>
			</div>

			
			<!-- 페이지네이션 시작 -->
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
			<!-- 페이지네이션 끝 -->
		</div>
	</div>
	
	<!-- 쪽지함 모달 -->
	<div class="modal fade" id="messageModalScrollable" tabindex="-1" role="dialog" aria-labelledby="messageModalScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="messageModalScrollableTitle">Larry</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
				<div class="modal-body" id="messageBox" style="background-color:black;">
					
						
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						야
						</p>
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						야
						</p>
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						야
						</p>
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						야
						</p>
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						야
						</p>
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						야
						</p>
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						야 집에 언제가
						</p>
						
						<p class="badge badge-secondary text-wrap" style="text-align:right; font-size:medium;">
						가긴 어딜가
						<img class="img-uncle" id="me" src="http://wiki.hash.kr/images/thumb/0/09/%EA%B0%95%ED%98%95%EC%9A%B1.jpg/100px-%EA%B0%95%ED%98%95%EC%9A%B1.jpg" />
						</p>
						<p class="badge badge-secondary text-wrap" style="text-align:right; font-size:medium;">
						ㅁㅊ
						<img class="img-uncle" id="me" src="http://wiki.hash.kr/images/thumb/0/09/%EA%B0%95%ED%98%95%EC%9A%B1.jpg/100px-%EA%B0%95%ED%98%95%EC%9A%B1.jpg" />
						</p>
						
						<p class="badge badge-light text-wrap" style="text-align:left; font-size:medium;">
						<img class="img-woman" id="you" src="http://wiki.hash.kr/images/thumb/b/b5/%EA%B0%95%EC%B1%84%EC%9B%90.jpg/100px-%EA%B0%95%EC%B1%84%EC%9B%90.jpg" />
						응 ㄲㅈ
						</p>
					
					
				</div>
				<div class="modal-footer">
				<input type="text" class="form-control" placeholder="내용을 입력하세요">
				<button class="btn blue-gradient p-2 px-4">→</button>
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
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">정말로 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn blue-gradient">삭제</button>
					<button type="button" class="btn peach-gradient" data-dismiss="modal">취소</button>
					
				</div>
			</div>
		</div>
	</div>
	
</div>