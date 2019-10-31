<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var checkedobj=document.getElementsByClassName("custom-control-input");
	var checked=0;
	var length=checkedobj.length;
	$(".custom-control-input").change(function(){
		if((".custom-control-input").is(":checked")){
			alert("체크체크!!!!!");
		}
		console.log(1);
		for(var i=0;i<length;i++){
			if(checkedobj[i].checked==true){
				checked++;
			}
		}
		console.log(checked);
	});
</script>
<div class="container">
	<div class="row">
		<div class="col-6">
			<div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
				<h2>운동메이트</h2>
			</div>
			<div>
				<div class="float-right">
					<button class="btn purple-gradient p-2 px-4">메이트관리</button>
					<button class="btn purple-gradient p-2 px-4">대화방 만들기</button>
				</div>
				<table class="table">
					<thead class="black white-text">
						<tr>
							<th style="width:5%" scope="col">
								<div class="custom-control custom-checkbox">
								    <input type="checkbox" class="custom-control-input" id="checkall">
								    <label class="custom-control-label" for="checkall"></label>
								</div>
							</th>
							<th style="width:10%;text-align:center" scope="col">사진</th>
							<th style="width:15%" scope="col">닉네임</th>	
							<th style="width:50%;text-align:center" scope="col">코멘트</th>
						</tr>
					</thead>
					<tbody>
					    <tr>
					    	<th>
								<div class="custom-control custom-checkbox">
								    <input type="checkbox" class="custom-control-input" id="health1">
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
								    <input type="checkbox" class="custom-control-input" id="health2">
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
								    <input type="checkbox" class="custom-control-input" id="health3">
								    <label class="custom-control-label" for="health3"></label>
								</div>
							</th>
							<th scope="row"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/43.jpg" alt="Card image cap"></th>
							<td>Larry</td>
							<td>운동 너무 힘들다....</td>
					    </tr>
					  </tbody>
				</table>
			</div>
			<!-- 검색창 -->
			<div class="form-inline d-flex justify-content-center mt-3">
				<select name="searchColumn" class="form-control custom-select mr-2">
					<option value="matetitle">제목</option>
					<option value="matenickname">닉네임</option>
					<option value="matecomment">코멘트</option>
				</select>
				<input type="text" class="form-control" placeholder="Search">
				<button class="btn blue-gradient p-2 px-4">검색</button>
			</div>
				<!-- 검색창 끝 -->		
			
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
		<div class="col-6">
			<div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
				<h2>쪽지함</h2>
			</div>
			<div class="float-right">
				<button class="btn purple-gradient p-2 px-4">쪽지 보내기</button>
				<button class="btn purple-gradient p-2 px-4">쪽지 삭제</button>
			</div>
			<table class="table">
			  <thead class="black white-text">
			    <tr>
			    	<th style="width:5%" scope="col">
			    		<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
							<label class="custom-control-label" for="defaultUnchecked"></label>
						</div>
			    	</th>
			    	<th style="width:10%" scope="col"></th>
					<th style="width:30%;color:white;" scope="col">보낸 사람</th>
					<th style="width:30%;color:white;text-align:center;" scope="col"><span>날짜</span></th>
					<th scope="col" style="color:white;text-align:center;">읽음 여부</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<tr>
			    	<th scope="row">
			    		<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
							<label class="custom-control-label" for="defaultUnchecked"></label>
						</div>
			    	</th>
			    	<td><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/22.jpg" alt="Card image cap"></td>
					<td>
						<p><a href="<c:url value='#'/>">KIM**</a></p>
					</td>
					<td style="text-align:center;">2019-10-28</td>
					<td style="text-align:center;"><span style="color: red;">읽지않음</span></td>
			    </tr>
			    <tr>
			    	<th scope="row">
			    		<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
							<label class="custom-control-label" for="defaultUnchecked"></label>
						</div>
			    	</th>
			    	<td><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/20.jpg" alt="Card image cap"></td>
					<td>
						<p><a href="<c:url value='#'/>">KIM**</a></p>
					</td>
					<td scope="col" style="text-align:center;">2019-10-25</td>
					<td style="text-align:center;"><span style="color: red;">읽지않음</span></td>
			    </tr>
			    <tr>
			    	<th scope="row">
			    		<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="defaultUnchecked" value="all">
							<label class="custom-control-label" for="defaultUnchecked"></label>
						</div>
			    	</th>
			    	<td><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/20.jpg" alt="Card image cap"></td>
					<td>
						<p><a href="<c:url value='#'/>">LEE**</a></p>
					</td>
					<td scope="col" style="text-align:center;">2019-10-15</td>
					<td style="text-align:center;"><span style="color: blue;">읽음</span></td>
			    </tr>
			  </tbody>
			</table>
			<!-- 검색창 -->
			<div class="form-inline d-flex justify-content-center mt-3">
				<select name="searchColumn" class="form-control custom-select mr-2">
					<option value="title">제목</option>
					<option value="name">대화 상대</option>
					<option value="content">내용</option>
				</select>
				<input type="text" class="form-control" placeholder="Search">
				<button class="btn blue-gradient p-2 px-4">검색</button>
			</div>
				<!-- 검색창 끝 -->		
			
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
</div>