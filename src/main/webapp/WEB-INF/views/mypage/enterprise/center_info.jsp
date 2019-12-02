<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test ="${isallowed ==0}" var="Allowed">
<style>

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

.scrolling-wrapper .card {
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

</style>
<script>
$(function(){
	console.log("여기서 체크");
	console.log("${isallowed}");
	console.log("${isallowed ==0}");
	console.log("${not Allowed}");
	var token = $("meta[name='_csrf']").attr("content");
	$.ajax({
		url:"<c:url value='/ajax_centerinfo?_csrf="+token+"'/>",
		type:"post",
		success:function(data){
			console.log("center_info 관련 ajax");
			var obj = JSON.parse(data);
			console.log(data);
		
			if(obj.tag!=null){
				var split=obj.tag.split(',');
				var tagString="";
				for ( var i in split ) {
					tagString+='<div class="col-md-2"><input type="text" class="form-control" name="tag1" id="tag1" placeholder="태그입력" value="#'+split[i]+'" disabled="disabled"/></div>';	
				}
			}
			
			$("#first-img").html('<img src="'+obj.img_urls[0]+'" class="card-img-top img-fluid" alt="photo" height="350px">');
			$('#title_center').html(obj.title);
			$('#tel').html(obj.tel);
			$('#addr').html(obj.addr);
			$('#otime').html(obj.otime);
			$('#tag_centerInfo').html(tagString);
			$('#sports-kind').html(obj.sport_kind);
			$('#content_center_info').html(obj.content);
			$('#service').html(obj.service);
			$('#rating').html(obj.avgRate);
			$('#complexity').html(obj.compliextyString);
			var image_content="";
			for(var i in obj.img_urls){
                image_content+='<div class="card"><img class="card-img-top" src="'+obj.img_urls[i]+'" alt="Card image cap"></div>';
			}
			$('#img_urls').html(image_content);
			showComment(obj.mapkey);		
		},
		error:function(data){}
	});
	
	var showComment=function(mapkey){
		$.ajax({
			url:"/workout/commentlist.do?_csrf="+token,
			type:"post",
			data:{'mapkey':mapkey},
			success:displayComments,
			error:function(data){
			}
		});
	}
	
	var displayComments=function(data){
		var comment='';
		
		if(data.length==0){
			console.log('데이타 없다!')
			comment+='<div class="row pb-4"><div class="col text-center">등록된 한줄 댓글이 존재하지 않습니다.</div></div>';
		}
		else{
			$.each(data,function(index, element){
				comment+='<div class="row pb-4"><div class="col-2">';
				comment+='<img src=/workout'+element['PICTURE']+' alt="Avatar" class="avatar img-fluid">';
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

});


</script>





<div class="container-fluid">
   
   <!-- 페이지 헤더 시작 -->
	<div class="page-header mb-1" style="border-bottom: 1px solid #D8D8D8;">
		<h2 style="font-weight: bold;">센터 관리</h2>
	</div>
	<!-- 페이지 헤더 끝 -->
		<!-- 버튼 시작 -->
		<div class="text-right p-0 mb-2">
			<a class="btn btn-warning px-3" id="edit_center_info_button" href="<c:url value='/center/edit_centerinfo.do'/>">수정</a>
		</div>
		<!-- 버튼 끝 -->
   
   <!-- row 시작 -->
   <div class="row">
      <!-- Grid column 1 -->
      <div class="col-md-6 mb-4">

         <!--Card-->
         <div class="card">
            <!--Card content-->
            <div class="card-body">
               <!-- Grid column 1 첫단 시작(이미지, 헬스장 정보) -->
               <div class="row mb-3">
                  <div class="col-md-6">
                      <!--Card image-->
                        <div class="view" id="first-img">
                          
                          <a href="#">
                            <div class="mask rgba-white-slight"></div>
                          </a>
                        </div>
                  </div>
                  <div class="col-md-6">
                     <div class="card">
						<div class="card-header pt-4 font-weight-bold">
							<p class="font-weight-bold h3"><span id="title_center"></span></p>
						</div>							
						<div class="card-body">
									<p><span class="badge badge-primary">주소</span> : <span id="addr"></span></p>
									<hr/>
									<p><span class="badge badge-primary">전화번호</span> : <span id="tel"></span></p>
									<hr/>									
									<span id="complexity">
									</span>
									<hr/>									
									<p><span style="font-weight: bold; color:blue;">TODAY</span> : 현재 운영중!</p>
									<hr/>									
									<p><span class="badge badge-primary">종목</span><span id="sports-kind"></span></p>
									<hr/>
									<p>평균별점 : <span id="rating"></span></p>
						</div>								
						</div>
                  </div>
               </div>
               <!-- Grid column 1 첫단 끝(이미지,헬스장 정보) -->
               

               <!-- Grid column 1 두번째 단 시작(세부이미지) -->
               <div class="row">
                  <div class="col">                 
                     <div class="card">
                        <div class="card-header"><h3 style="font-weight: bold; margin-bottom: 0px;">시설 안내</h3></div>
                        <div class="card-body">
                        	<p class="h4"><span class="badge badge-primary"><i class="fas fa-clock"></i>&nbsp;운영시간</span></p>
									<span id="otime"></span>
									<p class="h4"><span class="badge badge-primary">제공 서비스</span></p>
									<span id="service"></span>
                        
                        
                        
                        
                           <!-- 이미지 시작 -->
                           <p class="h4"><span class="badge badge-primary">사진</span></p>                        
                           <div class="scrolling-wrapper" id="img_urls">

                           </div>
                           <!-- 이미지 끝 -->
                        
                        </div>
                     </div>
                  </div>      
               </div>
               <!-- Grid column 1 두번째 단 끝(세부이미지) -->
            
            </div>
            <!--/.Card content-->   
         </div>
         <!--/.Card-->
      </div>
      <!-- Grid column 1 -->
      

      <!-- Grid column 2 시작 -->
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
                           <div class="form-row" id="tag_centerInfo">
                           
                              
                            </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 태그 등록 끝 -->
               
               
               <!-- 센터 소개 시작 -->
               <div class="row mb-3">
                  <div class="col">
                     <div class="card">
                        <div class="card-header">
                           <h3 style="font-weight: bold; margin-bottom: 0px;">센터 소개</h3>
                        </div>
                        <div class="card-body">
                        <!--Text-->
                        <p class="card-text" id="content_center_info">                
                        </p>
                           
                        </div>
                     </div>
                  </div>
               </div>
               <!-- 센터 소개 끝 -->
               

               <!-- 리뷰 시작 -->
               <div class="row">
                  <div class="col">
                     <div class="card">
                     
                        <div class="card-header">
                           <div class="row pl-2">
                           <h3 style="font-weight: bold; margin-bottom: 0px;">이용후기</h3>                        
                           </div>
                        </div>
                        
                        <div class="card-body" id="comment_list">
                          
                           
                           
                           
                        </div> 
                     </div>
                  </div>
                  <!-- 리뷰 끝 -->
                  
               </div>
               
            </div>
            <!--Card 끝-->
         </div>
         <!--Grid column 2 끝-->
      
      </div>
      <!-- row 끝 -->

</div>
<!-- container-fluid -->
</c:if>
<c:if test="${not Allowed}">
	<div class="container-fluid">
		<div class="page-header mb-1" style="border-bottom: 1px solid #D8D8D8;">
			<h2 style="font-weight: bold;">센터 관리</h2>
		</div>
		<div class="text-center p-0 mb-2">
			<h2 style="font-weight: bold;">관리자 승인이 완료되었을 때 이용 가능합니다.</h2>
		</div>
	</div>
</c:if>