<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!-- 구글 로그인에 필요한 소스 시작
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="471338080176-g046e95v00o1np1q8glj03ghqf97mjra.apps.googleusercontent.com">
<!-- 구글 로그인에 필요한 소스 끝 -->
<!-- 네이버 로그인에 필요한 소스 시작
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<!-- 네이버 로그인에 필요한 소스 끝 -->
<!-- 카카오 로그인에 필요한 소스 시작 
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 카카오 로그인에 필요한 소스 끝 
-->


<!-- 비로그인시 로그인 사이드바 -->
<style>
#customerLinks a{
   padding-top:10px;
   padding-bottom:10px;
}
</style>

<script>
   function loginformOpen(){
      $("#loginMenu").fadeToggle("3000");
   }
   function csrfCheck(){
      console.log("${_csrf.token}");
      console.log("${_csrf.parameterName}");
   }
</script>

<sec:authorize access="isAnonymous()">
<div class="login bg-dark" id="loginMenu" style="width: 450px">
   <!-- close button 시작 -->
   <button type="button" class="close text-white mt-2" aria-label="Close" id="closelogin">
       <span aria-hidden="true">×</span>
   </button>      
   <!-- close button 끝 -->
   <div class="container text-center">
      <div class="row">
         <div class="col" style="margin-bottom: 50px; margin-top: 40px">
            <img src="<c:url value='/resources/images/loginLogo.png'/>"/>
         </div>
      </div>
      <form action="<c:url value='/loginprocess.do'/>" method="post">
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
         <div class="md-form">
            <input type="text" id="id" name="id" class="form-control text-white"> 
               <label for="id"><span class="text-white" id="labelId">아이디</span></label>
         </div>
         <div class="md-form">
            <input type="password" id="password" name="password" class="form-control text-white"> 
            <label for="password"><span class="text-white" id="labelPwd">비밀번호</span></label>
         </div>
         <div class="text-right">
            <button type="submit" value="submit" class="btn btn-primary">LOGIN</button>
         </div>
      </form>
      <div class="text-center pt-4">
         <span class="text-white">회원이 아니신가요?<a href="<c:url value='jointype.do'/>"> 회원가입</a></span>
      </div>
      
      <!--아이디 비밀번호 찾기
      <div class="text-center pt-3">
         <span class="text-white"><a href="<c:url value='join.do'/>">아이디/비밀번호 찾기</a></span>
      </div>
      -->
      
      <!-- 구글 로그인 버튼 시작
      <div class="row justify-content-center mt-3">
         <div class="g-signin2" data-onsuccess="onSignIn"></div>
      </div>
   
      <!-- 네이버 로그인 버튼 시작
      <div class="row justify-content-center mt-3">
         <div id="naverIdLogin"></div>
      </div>
   
      <!-- 카카오 로그인 버튼 시작
      <a id="kakao-login-btn"></a>
      <a href="http://developers.kakao.com/logout"></a>
      <!-- 카카오 로그인 버튼 끝 -->
      
   </div>
</div>

<div class="modal fade" id="required-modal" tabindex="-1"
   role="alert" aria-labelledby="requiredCenterTitle"
   aria-hidden="true">

   <!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
   <div class="modal-dialog modal-dialog-centered" role="document">

      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="requiredLongTitle">이 서비스를 이용하려면 로그인하셔야 합니다.</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn peach-gradient" onclick="loginformOpen()" data-dismiss="modal">확인</button>
         </div>
      </div>
   </div>
</div>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER')">

<script>

var token = $("meta[name='_csrf']").attr("content");

function dataget(){
   $('#getdata').submit();
}
$(function(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	var checkcenterlists=function(){
		$.ajax({
			url:"<c:url value='/ajax/UserCenterList?_csrf="+token+"'/>",
			type:"post",
			success:showcenterlists,
		    error:function(request,status,error){
		    	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
		    }
		});
	}
	var showcenterlists=function(data){
		console.log("여긴 어디");
		console.log(data);
		var comment='';
		if(data.length==0){
			comment+='<tr><td>현재 센터에 등록되어있지 않습니다.</td></tr>';
		}
		else{
			$.each(data,function(index, element){
				comment+='<tr>';
				comment+='<td><a href="#">'+element['center_name']+'</a></td>';
				comment+='<tr/>';
			});//$.each
		}
		$('#usercenterlist').html(comment);
	}
	checkcenterlists();
});

$(function(){
   $('#customerLinks a').click(function(){
      var cIndex=$(this).index();
      console.log($('#asubmit'));
      console.log($('#asubmit').prop('action'));
      switch(cIndex){
         case 0:
            $('#asubmit').prop('action','<c:url value='/user/customer.do#pills-home-tab'/>');
            document.getElementById("asubmit").submit();
            break;
         case 1:
            $('#asubmit').prop('action','<c:url value='/user/customer.do#pills-mate-tab'/>');
            document.getElementById("asubmit").submit();
            break;
         case 2:
            $('#asubmit').prop('action','<c:url value='/user/customer.do#pills-coupon-tab'/>');
            document.getElementById("asubmit").submit();
            break;
         case 3:
            $('#asubmit').prop('action','<c:url value='/user/customer.do#pills-scrap-tab'/>');
            document.getElementById("asubmit").submit();
            break;
         default:
            $('#asubmit').prop('action','<c:url value='/user/customer.do#pills-info-tab'/>');
            document.getElementById("asubmit").submit();         
      }
   });
   
	$.ajax({
		url:"<c:url value='/getUserInfo.do?_csrf="+token+"'/>",
		type:"post",
		data:{'id':'${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}'},
		success:function(data){
			var user=JSON.parse(data);
			$('#picture').attr('src','<c:url value="'+user['picture']+'"/>');
		},
	    error:function(request,status,error){
	         alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
	    }
	});  
	/*
	$.ajax({
		url:"<c:url value='/ajax/getUserRegiCenter?_csrf="+token+"'/>",
		type:"post",
		data:{
			'id':'${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}',
			
			},
		success:function(data){
			var user=JSON.parse(data);
			console.log("인포 받아오는지:",user["picture"].toString());
			$('#picture').attr('src','<c:url value="'+user['picture']+'"/>');
		},
	    error:function(request,status,error){
	         alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
	    }
	});
   */
});
</script>

<!-- 개인회원으로 로그인시 사이드바 -->
<div class="login bg-dark" id="CustomerLoMenu">

   <!-- close button 시작 -->
   <button type="button" class="close text-white mt-2" aria-label="Close" id="closeCulogin">
       <span aria-hidden="true">×</span>
   </button>      
   <!-- close button 끝 -->
   <div class="container text-center">
      <div class="row">
         <div class="col-6" style="margin-bottom:15px;">
            <img class="col-12" src="<c:url value='/resources/images/girl.png'/>" id="picture"/>
         </div>
         <div class="h5 text-white col-6" style="align-self:center;"><sec:authentication property="principal.username"/>님,<br/>반갑습니다</div>
         
         <div class="row">
            <!-- col1 등록한 센터 시작 -->
            <div class="accordion col" id="useraccordion1">
               <div class="card">
                  <div class="card-header mdb-color darken-3 pb-0" id="heading1" style="padding:0px;">
                     <button class="btn btn-link" type="button" data-toggle="collapse"
                           data-target="#usercenter1" aria-expanded="true"
                           aria-controls="collapseOne" style="margin:0px;">
                           <div class="row">
                              <div class="col-2 mr-5">
                                 <h4>
                                      <span class="fa-stack">
                                       <i class="far fa-circle fa-stack-2x text-white"></i>
                                       <i class="fas fa-heart fa-stack-1x text-white"></i>
                                      </span>
                                 </h4>               
                              </div>
                              <div class="col" style="align-self:center;">
                                 <div class="row">
                                    <h5 class="text-left font-weight-bold text-white">
                                         내가 등록한 센터
                                    </h5>
                                 </div>
                              </div>
                           </div>
                     </button>
                  </div>
            
                  <div id="usercenter1" class="collapse" aria-labelledby="heading1"
                     data-parent="#useraccordion1">
                     <!-- 카드 바디 시작 -->
                     <div class="card-body" style="padding:0px">
                          <!-- 등록한 센터 테이블 시작 -->
                        <table class="table" style="text-align: center;" >
                           <thead class="bg-primary white-text">
                              <tr class="align-middle">
                                 <th scope="col">센터명</th>
                              </tr>
                           </thead>
                           <tbody id="usercenterlist">
                           </tbody>
                        </table>
                        <!-- 등록한 센터 테이블 끝 -->
                     </div>
                     <!-- 카드 바디 끝 -->
                  </div>
               </div>
            </div>
            <div class="accordion col" id="useraccordion2">
               <div class="card">
                  <div class="card-header mdb-color darken-3 pb-0" id="heading2" style="padding:0px;">
                     <button class="btn btn-link" type="button" data-toggle="collapse"
                           data-target="#usercenter2" aria-expanded="true"
                           aria-controls="collapseOne" style="margin:0px;">
                           <div class="row">
                              <div class="col-2 mr-5">
                                 <h4>
                                      <span class="fa-stack">
                                       <i class="far fa-circle fa-stack-2x text-white"></i>
                                       <i class="fas fa-book fa-stack-1x text-white"></i>
                                      </span>
                                 </h4>               
                              </div>
                              <div class="col" style="align-self:center;">
                                 <div class="row">
                                    <h5 class="text-left font-weight-bold text-white">
                                         마이페이지 메뉴
                                    </h5>
                                 </div>
                              </div>
                           </div>
                     </button>
                  </div>
                  <div id="usercenter2" class="collapse" aria-labelledby="heading2"
                     data-parent="#useraccordion2">
                     <!-- 카드 바디 시작 -->
                        <div class="card-body" style="padding:0px">
                           <div class="list-group" id="customerLinks">
                              <a class="list-group-item list-group-item-action" href="#" id="lpills-home">
                              <span>마이페이지</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="#" id="lpills-mate">
                              <span>운동메이트</span>
                           </a>

                           <a class="list-group-item list-group-item-action" href="#" id="lpills-coupon">
                              <span>쿠폰함</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="#">
                              <span>스크랩</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="#">
                              <span>내 정보 관리</span>
                           </a>
                           <form id="asubmit" action="<c:url value='/user/customer.do#pills-home-tab'/>" method="post">
                              <input type="hidden" value="<sec:authentication property="principal.username"/>" name="id"/>
                              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                           </form>
                        </div>
                        </div>
                     </div>
               </div>
            </div>
            <!-- col2 끝 -->
            <div class="accordion col" id="useraccordion3">
               <div class="card">
                  <div class="card-header mdb-color darken-3 pb-0" id="heading3" style="padding:0px;">
                     <button class="btn btn-link" type="button" data-toggle="collapse"
                           data-target="#usercenter3" aria-expanded="true"
                           aria-controls="collapseOne" style="margin:0px;">
                           <div class="row">
                              <div class="col-2 mr-5">
                                 <h4>
                                      <span class="fa-stack">
                                       <i class="far fa-circle fa-stack-2x text-white"></i>
                                       <i class="fas fa-bell fa-stack-1x text-white"></i>
                                      </span>
                                 </h4>               
                              </div>
                              <div class="col" style="align-self:center;">
                                 <div class="row">
                                    <h5 class="text-left font-weight-bold text-white">
                                         고객센터 메뉴
                                    </h5>
                                 </div>
                              </div>
                           </div>
                     </button>
                  </div>
                  <div id="usercenter3" class="collapse" aria-labelledby="heading3"
                     data-parent="#useraccordion3">
                     <!-- 카드 바디 시작 -->
                        <div class="card-body" style="padding:0px">
                           <div class="list-group" id="serviceLinks">
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-home-tab'/>" id="lpills-home">
                              <span>고객센터 홈</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-faq-tab'/>" id="lpills-mate">
                              <span>자주 묻는 질문</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-notice-tab'/>" id="lpills-coupon">
                              <span>공지 이벤트</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-consultwrite-tab'/>">
                              <span>1:1 문의</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-consultlist-tab'/>">
                              <span>문의내역 확인</span>
                           </a>
                        </div>
                        </div>
                     </div>
               </div>
            </div>
            <!-- col3 끝 -->
            <button type="button" class="btn btn-primary col-12" onclick="javascript:logout()">로그아웃</button>
            <!-- <button type="button" class="btn btn-primary col-12" onclick="javascript:dataget()">데이터 받아오기</button>-->
            <form id="getdata" method="post" action="<c:url value='/notification.do'/>">
               <input type="hidden" value="<sec:authentication property="principal.username"/>" name="id"/>
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <form id="logoutForm" method="post" action="<c:url value='/logout.do'/>">
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
         </div>
      </div>
   </div>
</div>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_CENTER')">

<script>
function dataget(){
   $('#getdata').submit();
}
</script>

<!-- 센터회원으로 로그인시 사이드바 -->
<div class="login bg-dark" id="CenterLoMenu">
   <!-- close button 시작 -->
   <button type="button" class="close text-white mt-2" aria-label="Close" id="closeCelogin">
       <span aria-hidden="true">×</span>
   </button>      
   <!-- close button 끝 -->
   <div class="container text-center">
      <div class="row">
         <div class="col-6" style="margin-bottom:15px;">
            <img class="col-12" src="<c:url value='/resources/images/girl.png'/>" />
         </div>
         <div class="h5 text-white col-6" style="align-self:center;"><sec:authentication property="principal.username"/>님,<br/>반갑습니다</div>
         <div class="row">
            <div class="accordion col" id="centeraccordion3">
               <div class="card">
                  <div class="card-header mdb-color darken-3 pb-0" id="heading3" style="padding:0px;">
                     <button class="btn btn-link" type="button" data-toggle="collapse"
                           data-target="#centercenter3" aria-expanded="true"
                           aria-controls="collapseOne" style="margin:0px;">
                           <div class="row">
                              <div class="col-2 mr-5">
                                 <h4>
                                      <span class="fa-stack">
                                       <i class="far fa-circle fa-stack-2x text-white"></i>
                                       <i class="fas fa-book fa-stack-1x text-white"></i>
                                      </span>
                                 </h4>               
                              </div>
                              <div class="col" style="align-self:center;">
                                 <div class="row">
                                    <h5 class="text-left font-weight-bold text-white">
                                         마이페이지 메뉴
                                    </h5>
                                 </div>
                              </div>
                           </div>
                     </button>
                  </div>
                  <div id="centercenter3" class="collapse" aria-labelledby="heading3"
                     data-parent="#centeraccordion3">
                     <!-- 카드 바디 시작 -->
                        <div class="card-body" style="padding:0px">
                           <div class="list-group" id="centerLinks">
                           <a class="list-group-item list-group-item-action" href="<c:url value='/center/enterprise.do#pills-home-tab'/>" id="lpills-home">
                              <span>마이페이지</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/center/enterprise.do#pills-user-tab'/>" id="lpills-mate">
                              <span>회원관리</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/center/enterprise.do#pills-board-tab'/>" id="lpills-coupon">
                              <span>홍보</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/center/enterprise.do#pills-customer-service-tab'/>">
                              <span>센터 관리</span>
                           </a>
                        </div>
                        </div>
                     </div>
               </div>
            </div>
            <!-- col2 끝 -->
            <div class="accordion col" id="centeraccordion4">
               <div class="card">
                  <div class="card-header mdb-color darken-3 pb-0" id="heading4" style="padding:0px;">
                     <button class="btn btn-link" type="button" data-toggle="collapse"
                           data-target="#centercenter4" aria-expanded="true"
                           aria-controls="collapseOne" style="margin:0px;">
                           <div class="row">
                              <div class="col-2 mr-5">
                                 <h4>
                                      <span class="fa-stack">
                                       <i class="far fa-circle fa-stack-2x text-white"></i>
                                       <i class="fas fa-bell fa-stack-1x text-white"></i>
                                      </span>
                                 </h4>               
                              </div>
                              <div class="col" style="align-self:center;">
                                 <div class="row">
                                    <h5 class="text-left font-weight-bold text-white">
                                         고객센터 메뉴
                                    </h5>
                                 </div>
                              </div>
                           </div>
                     </button>
                  </div>
                  <div id="centercenter4" class="collapse" aria-labelledby="heading4"
                     data-parent="#centeraccordion4">
                     <!-- 카드 바디 시작 -->
                        <div class="card-body" style="padding:0px">
                           <div class="list-group" id="serviceLinks">
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-home-tab'/>" id="lpills-home">
                              <span>고객센터 홈</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-faq-tab'/>" id="lpills-mate">
                              <span>자주 묻는 질문</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-notice-tab'/>" id="lpills-coupon">
                              <span>공지 이벤트</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-consultwrite-tab'/>">
                              <span>1:1 문의</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/member/customerServiceMain.do#pills-consultlist-tab'/>">
                              <span>문의내역 확인</span>
                           </a>
                        </div>
                        </div>
                     </div>
               </div>
            </div>
            <!-- col3 끝 -->
            <button type="button" class="btn btn-primary col-12" onclick="javascript:logout()">로그아웃</button>
            <!-- <button type="button" class="btn btn-primary col-12" onclick="javascript:dataget()">데이터 받아오기</button>-->
            <form id="bsubmit" method="post" action="<c:url value='/center/enterprise.do'/>">
               <input type="hidden" value="<sec:authentication property="principal.username"/>" name="id"/>
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <form id="logoutForm" method="post" action="<c:url value='/logout.do'/>">
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
         </div>
      </div>
   </div>
</div>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<script>
function dataget(){
   $('#getdata').submit();
}
</script>

<!-- 개인회원으로 로그인시 사이드바 -->
<div class="login bg-dark" id="AdminLoMenu">
   <!-- close button 시작 -->
   <button type="button" class="close text-white mt-2" aria-label="Close" id="closeAdlogin">
       <span aria-hidden="true">×</span>
   </button>      
   <!-- close button 끝 -->
   <div class="container text-center">
      <div class="row">
         <div class="col-6" style="margin-bottom:15px;">
            <img class="col-12" src="<c:url value='/resources/images/girl.png'/>" />
         </div>
         <div class="h5 text-white col-6" style="align-self:center;"><sec:authentication property="principal.username"/>님,<br/>반갑습니다</div>
         
         <div class="row">
            <div class="accordion col" id="adminaccordion">
               <div class="card">
                  <div class="card-header mdb-color darken-3 pb-0" id="heading1" style="padding:0px;">
                     <button class="btn btn-link" type="button" data-toggle="collapse"
                           data-target="#admincenter" aria-expanded="true"
                           aria-controls="collapseOne" style="margin:0px;">
                           <div class="row">
                              <div class="col-2 mr-5">
                                 <h4>
                                      <span class="fa-stack">
                                       <i class="far fa-circle fa-stack-2x text-white"></i>
                                       <i class="fas fa-book fa-stack-1x text-white"></i>
                                      </span>
                                 </h4>               
                              </div>
                              <div class="col" style="align-self:center;">
                                 <div class="row">
                                    <h5 class="text-left font-weight-bold text-white">
                                         마이페이지 메뉴
                                    </h5>
                                 </div>
                              </div>
                           </div>
                     </button>
                  </div>
                  <div id="admincenter" class="collapse" aria-labelledby="heading1"
                     data-parent="#adminaccordion">
                     <!-- 카드 바디 시작 -->
                        <div class="card-body" style="padding:0px">
                           <div class="list-group" id="adminLinks">
                           <a class="list-group-item list-group-item-action" href="<c:url value='/admin/admin.do#pills-home-tab'/>" id="lpills-home">
                              <span>마이페이지</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/admin/admin.do#pills-user-tab'/>" id="lpills-mate">
                              <span>유저관리</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/admin/admin.do#pills-board-tab'/>" id="lpills-coupon">
                              <span>게시글관리</span>
                           </a>
                           <a class="list-group-item list-group-item-action" href="<c:url value='/admin/admin.do#pills-customer-service-tab'/>">
                              <span>고객센터 관리</span>
                           </a>
                        </div>
                        </div>
                     </div>
               </div>
            </div>
            <button type="button" class="btn btn-primary col-12" onclick="javascript:logout()">로그아웃</button>
            <!-- <button type="button" class="btn btn-primary col-12" onclick="javascript:dataget()">데이터 받아오기</button>-->
            <form id="getdata" method="post" action="<c:url value='/notification.do'/>">
               <input type="hidden" value="<sec:authentication property="principal.username"/>" name="id"/>
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <form id="logoutForm" method="post" action="<c:url value='/logout.do'/>">
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
         </div>
      </div>
   </div>
</div>
</sec:authorize>

<script>
   function logout(){
      $('#logoutForm').submit();
   }
   //구글 로그인 후, 호출되는 함수
   function onSignIn(googleUser) {
      var profile = googleUser.getBasicProfile();
      console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
      console.log('Name: ' + profile.getName());
      console.log('Image URL: ' + profile.getImageUrl());
      console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
   }
</script>

<script>
   //네이버 로그인 자바스크립트 코드
   var naverLogin = new naver.LoginWithNaverId(
         {
            clientId: "Lfogv2spxFwP6Q1uKP9I",
            callbackUrl: "http://localhost:8080/workout/main.do",
            isPopup: false, /* 팝업을 통한 연동처리 여부 */
            loginButton: {color: "green", type: 3, height: 40} /* 로그인 버튼의 타입을 지정 */
         }
      );
      
      /* 설정정보를 초기화하고 연동을 준비 */
      naverLogin.init();
      
      window.addEventListener('load', function () {
         naverLogin.getLoginStatus(function (status) {
            if (status) {
               /* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
               var name = naverLogin.user.getNickName();
               if( name == undefined || name == null) {
                  alert("이름은 필수정보입니다. 정보제공을 동의해주세요.");
                  naverLogin.reprompt();
                  //return;
               }
               console.log(name);
               window.location.replace("http://localhost:8080/workout/main.do");
            } else {
               console.log("callback 처리에 실패하였습니다.");
            }
         });
      });
      
        //<![CDATA[
       // 사용할 앱의 JavaScript 키를 설정해 주세요.
       Kakao.init('277dd2a8bda106627e537859aae6e385');
       // 카카오 로그인 버튼을 생성합니다.
       Kakao.Auth.createLoginButton({
         container: '#kakao-login-btn',
         success: function(authObj) {
            alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
         },
         fail: function(err) {
            alert(JSON.stringify(err));
         }
       });
     //]]>   
   
   
</script>