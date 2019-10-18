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
<div class="row">
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
						    <input type="checkbox" class="custom-control-input" id="checkall" value="all">
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
</div>