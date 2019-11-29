<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<style>

.content{
 padding-top:20px;
 padding-left:15px;

}
.shadow-textarea textarea.form-control::placeholder {
    font-weight: 300;
}
.shadow-textarea textarea.form-control {
    padding-left: 0.8rem;
}
.card-image-container {
  position: relative;
}
.card-img-top {
  opacity: 1;
  display: block table;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.card-img-middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}
.scrolling-wrapper {
	align-item:stretch;
	display:flex;
	flex-direction:row;
	flex-wrap:nowrap;
	overflow-x: scroll;
	overflow-y: hidden;
	
	.scrolling-wrapper .card {
		display: inline-block;
		}
	}

.scrolling-wrapper .card-container{
  /*float: left;*/
  max-width: 33.333%;
  padding: .75rem;
  margin:10px;
  margin-bottom: 2rem;
  border: 0;
  flex-basis: 33.333%;
  flex-grow: 0;
  flex-shrink: 0;
}


.scrolling-wrapper.card > img {
  margin-bottom: .75rem;
}


.scrollbar-primary::-webkit-scrollbar {
width: 10px;
background-color: #F5F5F5; 
}

.scrollbar-primary::-webkit-scrollbar-thumb {
border-radius: 10px;
-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
background-color: #4285F4; }
}


</style>

<script src="<c:url value='/resources/MDB-Free_4.8.10/js/addons/rating.js'/>"></script>

<script>

$(function() {
	
	
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	console.log('token:',token)
	console.log('header:',header)
	console.log('header길이:',header.length)

	
	var showComment=function(){///Ajax로 처리
		console.log('showComment Ajax 들어옴');
		$.ajax({
			url:"<c:url value='/commentlist.do?_csrf="+token+"'/>",
			//beforeSend:function(xhr){xhr.setRequestHeader(header, token);},
			data:{'mapkey':'${viewinfo.mapkey}'},
			type:"post",
			success:displayComments,
		    error:function(request,status,error){
		         alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		    },
		});
	};
	
	
	var displayComments=function(data){
		var comment='';
		
		if(data.length==0){
			console.log('데이타 업쇼습니다')
			comment+='<div class="row pb-4"><div class="col text-center">등록된 한줄 댓글이 존재하지 않습니다.</div></div>';
		}
		else{
			$.each(data,function(index, element){
				comment+='<div class="row pb-4"><div class="col-2">';
				comment+='<img src='+element['PICTURE']+' alt="Avatar" class="avatar img-fluid">';
				comment+='</div>'
				comment+='<div class="col">';
				comment+='<span class="mt-0 font-weight-bold blue-text h5">'+element['NICK_NAME']+'</span>';
				comment+='<span id="rateMe">';
				switch(element['RATE']){
					case 1:
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>';
						break;
					case 2:
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>';
						break;
					case 3:
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>';
						break;
					case 4:
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>';
						break;
					case 5:
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover amber-text" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>';
						break;
					default:
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>';
						comment+='<i class="fas fa-star py-2 px-1 rate-popover" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>';
				}//switch
				comment+='</span><p>'+element['RCOMMENT']+'</p><p>'+element['RPOSTDATE']+'</p></div></div>';
			});//$.each
				
		}//else	
		$('#comment_list').html(comment);
	}
	
	$('#rateMe1').mdbRate();

		showComment();
		
		$('#comment_submit').click(function(e){
			var index=parseInt($('#rateMe1').find('i.amber-text').length.toString());
			e.preventDefault();
			$.ajax({
				url:"<c:url value='/commentwrite.do?_csrf="+token+"'/>",
				type:"post",
				data:{'rate':index,'rComment':$('#comment_text').val(), 'mapkey':'${viewinfo.mapkey}'},
				success:function(data){
					showComment();
				},
				error:function(data){
					console.log(data);
				}
			});
		});//클릭이벤트 끝
		
		
		(function poll(){
			
			$.ajax({
				url:"<c:url value='/viewComplexAndStar.do?_csrf="+token+"'/>",
				data:{'mapkey':'${viewinfo.mapkey}'},
				type:"post",
				success:function(data){
			        var status=JSON.parse(data);		
					$('#starString').html(status["avgRate"]);
					$('#complex').html(status["complex"]);
					console.log("status[complex']:",status["complex"]);
				},
				timeout: 3000,
				complete: setTimeout(function() { poll(); },3000)
				})
				
		})();
		
		
});	//function 끝
	
</script>




<div class="container-fluid">
	<div class="row">
		<!-- Grid column 1 -->
		<div class="col-md-6 mb-4">

			<!--Card-->
			<div class="card">
				<!--Card content-->
				<div class="card-body">
				
					<div class="row">
						<div class="col-md-6">
							 <!--Card image-->
						      <div class="view">
						      
						      	<c:if test="${empty viewinfo.img_urls }" var="img_urls">
						      		기업회원이 정보를 제공하지 않았습니다.
								</c:if>
								<c:if test="${not empty img_urls }">												
							      	<c:forEach items="${viewinfo.img_urls }" var="img_url" varStatus="status">
							      		<c:if test="${status.first}">
								        	<img src="${img_url }" alt="photo" class="img-fluid">
									        <a href="#">
									          <div class="mask rgba-white-slight"></div>
									        </a>
								        </c:if>
							        </c:forEach>
						        </c:if>
						        
						      </div>
						</div>
						<div class="col-md-6 pb-3">
							<div class="card">
								<div class="card-header pt-4 font-weight-bold">
									<p class="font-weight-bold h3">${viewinfo.title }</p>
								</div>							
								<div class="card-body">
									<p><span class="badge badge-primary">주소</span> : ${viewinfo.addr }</p>
									<p><span class="badge badge-primary">지번</span> : ${viewinfo.jibunAddr }</p>
									<hr/>
									<p><span class="badge badge-primary">전화번호</span> : ${viewinfo.tel }</p>
									<hr/>
									   <p><span class="badge badge-primary">혼잡도</span></p>
									   <div class="row">
									   		<div class="col">
									   			<span id="complex"></span>
									   		</div>
										</div>
										
									<hr/>									
									<p><span style="font-weight: bold; color:blue;">TODAY</span> : 현재 운영중!</p>
									<hr/>									
									<p><span class="badge badge-primary">종목</span> <i class="fas fa-swimming-pool"></i> 수영 &nbsp&nbsp<i class="fas fa-dumbbell"></i> 헬스</p>
									<hr/>
									<p>평균별점 : <span id="starString"></span></p>
								</div>								
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header pt-4"><p class="font-weight-bold h3">시설안내</p></div>
								<div class="card-body">

									<p class="h4"><span class="badge badge-primary"><i class="fas fa-clock"></i>&nbsp;운영시간</span></p>	
									<c:if test="${empty viewinfo.otime }" var="otime">
										기업회원이 정보를 제공하지 않았습니다.
									</c:if>
									<c:if test="${not otime }">
										${viewinfo.otime }
									</c:if>
									<p class="h4 mt-1"><span class="badge badge-primary">제공 서비스</span></p>
									<c:if test="${empty viewinfo.service }" var="service">
										<p>기업회원이 정보를 제공하지 않았습니다.</p>
									</c:if>
									<c:if test="${not service }">
										<p>${viewinfo.service }</p>
									</c:if>
									<p class="h4"><span class="badge badge-primary">사진</span></p>
										<div class="scrolling-wrapper scrollbar scrollbar-primary">
											<c:if test="${empty viewinfo.img_urls }" var="img_urls">
												<div class="card-container p-3">
													<img class="card-img-top" src="" alt="기업회원이 이미지를 등록하지 않았습니다." style="width: 100%">
												</div>											
											</c:if>
											<c:if test="${not img_urls }">												
												<c:forEach items="${viewinfo.img_urls }" var="img_url" varStatus="loop">
													<div class="card-container p-3">
														<img class="card-img-top" src="${img_url }" alt="" style="width: 100%">
													</div>
												</c:forEach>
											</c:if>										
										</div>
								</div>
							</div>
						</div>		
					</div>
				
				</div>
				<!--/.Card content-->	
			</div>
			<!--/.Card-->

		</div>
		<!-- Grid column 1 -->

		<!-- Grid column 2 -->
		<div class="col-md-6 mb-4">

			<!--Card-->
			<div class="card">
				<div class="card-body">
				
					<!-- 태그 등록 시작 -->
		               <div class="row mb-3">
		                  <div class="col">
		                     <div class="card">
		                        <div class="card-header">
		                           <h3 style="font-weight: bold; margin-bottom: 0px;">센터 대표태그</h3>
		                        </div>
		                        <div class="card-body">
		                        <!--Text-->
		                        <c:if test="${empty viewinfo.tag }">
		                        	<span>대표 태그가 등록되어 있지 않습니다:)</span>
		                        </c:if>
		                        <c:if test="${not empty viewinfo.tag }">
		                        	<input type="text" class="form-control" name="tag1" id="tag1" placeholder="태그입력" value="${viewinfo.tag}" disabled="disabled"/>
		                        </c:if>
		                        </div>
		                     </div>
		                  </div>
		               </div>
		               <!-- 태그 등록 끝 -->
				
					<div class="row pb-3">
						<div class="col">
							<div class="card">
								<div class="card-header">
									<h3 style="font-weight: bold; margin-bottom: 0px;">센터 소개</h3>                        
								</div>
								<div class="card-body">
								
									<c:if test="${empty viewinfo.content }" var="content">
										<p>기업회원이 정보를 제공하지 않았습니다.</p>
									</c:if>
									<c:if test="${not content }">
										<p>${viewinfo.content }</p>									
									</c:if>
										
								</div>
							</div>
						</div>
					</div>
					
					<div class="row pb-3">
						<div class="col">
							<div class="card">
							
								<div class="card-header pt-4"><p class="font-weight-bold h3">평균별점  / 후기 남기기</p></div>
								
								<div class="card-body">
									<div class="row align-items-center h-100">
										<div class="col">
										
											<form id="comment_form">
												<span id="rateMe1"></span>
												<div class="form-group shadow-textarea m-0 mt-2">
													<textarea class="form-control z-depth-1" id="comment_text" rows="3" placeholder="후기를 등록하세요!" name="rComment"></textarea>
												</div>
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
												<button type="submit" class="btn btn-indigo" id="comment_submit">등록하기</button>
											</form>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header pt-4"><p class="font-weight-bold h3">이용후기</p></div>
								<div class="card-body" id="comment_list">
								
									
									
								</div>	
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<!--/.Card-->

		</div>
		<!-- Grid column 2 -->

	</div>
	<!-- row -->
</div>
<!-- container-fluid -->


