<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="<c:url value='/resources/utils/datePicker/moment/moment.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/css/datepicker.css'/>">

<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.all.js'/>"></script>
<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.en.js'/>"></script>
<script src="<c:url value='/resources/js/mypage/enterprise/user-stats.js'/>" /></script>
<script>
$(function(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	var checkinsertedlists=function(data){
		$.ajax({
			url:"<c:url value='/ajax/getUserRegiList?_csrf="+token+"'/>",
			type:"post",
			success:function(data){
				console.log("확인 중 데이터");
				console.log(data);
				showuserlists();
			},
		    error:function(request,status,error){
		    	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
		    }
		});
	}
	var checklists=function(){
		$.ajax({
			url:"<c:url value='/ajax/getUserRegiList?_csrf="+token+"'/>",
			type:"post",
			success:showuserlists,
		    error:function(request,status,error){
		    	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
		    }
		});
	}
	var showuserlists=function(data){
		var comment='';
		if(data.length==0){
			comment+='<tr><td colspan="4">현재 등록된 회원이 없습니다.</td></tr>';
		}
		else{
			$.each(data,function(index, element){
				comment+='<tr>';
				comment+='<td>'+element['name']+'</td>';
				comment+='<td>'+element['id']+'</td>';
				comment+='<td>'+element['startdate']+'~'+element['enddate']+'</td>';
				comment+='<td>'+element['isallowed']+'</td>';
				comment+='<tr/>';
			});//$.each
		}
		$('#customerlist').html(comment);
	}
	$('#regisubmit').click(function(e){
		e.preventDefault();
		$.ajax({
			url:"<c:url value='/ajax/UserRegister?_csrf="+token+"'/>",
			type:"post",
			data:{
				'id':$('#user_id').val(),
				'startdate':$('#startdate').val(),
				'enddate':$('#enddate').val(),
				},
			success:function(data){
				console.log("입력 성공");
				checkinsertedlists(data);
			},
		    error:function(request,status,error){
		    	console.log("입력 실패");
		    }
		});
	});
	checklists();
});
</script>
<div class="container-fluid">
   <!-- 페이지 헤더 시작 -->
   <div class="page-header mb-4" style="border-bottom: 1px solid #D8D8D8;">
         <h2 style="font-weight: bold;">회원 관리</h2>
   </div>
   <!-- 페이지 헤더 끝 -->
   <div class="row">
      <!-- col-1 시작-->
      <div class="col-md-6">
         <div class="card">
            <div class="card-body">
               <h2 class="card-title" style="font-weight: bold;">회원 증감 추이</h2>
               <hr/>
               <!-- 기업용 네비게이션 바 -->
               <div>
                  <nav>
                  <div class="nav nav-tabs" id="user_tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav_lineChart" data-toggle="tab" href="#user_lineChart" role="tab" aria-controls="nav-home" aria-selected="true">회원 증감률</a>
                    <a class="nav-item nav-link" id="nav_barChart" data-toggle="tab" href="#user_barChart" role="tab" aria-controls="nav_barChart" aria-selected="false">신규회원 증감률</a>
                  </div>
                  </nav>
                  <div class="tab-content" id="user_tabContent">
                    <div class="member tab-pane fade show active" id="user_lineChart" role="tabpanel" aria-labelledby="nav_lineChart">
                    
                        <!-- 셀렉트 박스 시작 -->
                          <div class="clearfix">
                             <div class="float-right">
                                <select class="browser-default custom-select mt-3" id="member">
                                      <option value="option1" selected="selected">월별</option>
                                      <option value="option2">분기별</option>
                                      <option value="option3">년별</option>
                                </select>
                             </div>
                          </div>
                          <!-- 셀렉트 박스 끝 -->
                        
                           <!-- 차트 시작 -->   
                           <div class="month mb-4">
                              <canvas id="monthLineChart"></canvas>
                           </div>
                           <div class="quarter mb-4">
                              <canvas id="quarterLineChart"></canvas>
                           </div>
                           <div class="year mb-4">
                              <canvas id="yearLineChart"></canvas>
                           </div>
                           <!-- 차트 끝 -->   

                     </div>
                    <div class="tab-pane fade" id="user_barChart" role="tabpanel" aria-labelledby="nav_barChart">
                       <canvas id="memberBarChart"></canvas>
                    </div>
                  </div>
                  </div>
                  <!-- 기업용 네비게이션 바 끝-->
            </div>
         </div>
      </div>
      <!-- col-1 끝 -->
      
      <!-- col-2  시작-->
      <div class="col-md-6">
         <div class="card">
            <div class="card-body">
               <h2 class="card-title" style="font-weight: bold;">회원 상세 관리</h2>
                  <!-- 회원 등록,삭제 버튼 -->
                     <div class="clearfix">
                        <div class="float-right">
                           <button type="submit" class="btn btn-info px-3" id="memberPlus">회원등록</button>       
                        </div>
                     </div>
               <!-- 회원 등록,삭제 버튼 -->
               <!-- 테이블 시작 -->
                  <table class="table" style="text-align: center;">
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col">이름</th>
                           <th scope="col">아이디</th>
                           <th scope="col">일자</th>
                           <th scope="col">승인여부</th>
                        </tr>
                     </thead>
                     <tbody id="customerlist">
                        <!--
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check2">
                              <label class="custom-control-label" for="Check2"></label>
                           </div>
                           </th>
                           <td>2</td>
                           <td>김집에</td>
                           <td>KIM*</td>
                           <td>여</td>
                           <td>27</td>
                           <td>2019.10.23 ~ 2020.10.22</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check1">
                              <label class="custom-control-label" for="Check1"></label>
                           </div>
                           </th>
                           <td>1</td>
                           <td>김집에</td>
                           <td>KIM*</td>
                           <td>여</td>
                           <td>27</td>
                           <td>2019.10.23 ~ 2020.10.22</td>
                        </tr>
                        -->
                     </tbody>
                  </table>
                  <!-- 테이블 끝 -->   
            </div>
            
            <!-- 페이징 시작
            <div class="row justify-content-center">
               <nav aria-label="Page navigation example">
                  <ul class="pagination pg-blue">
                     <li class="page-item"><a class="page-link">Previous</a></li>
                     <li class="page-item"><a class="page-link">1</a></li>
                     <li class="page-item"><a class="page-link">2</a></li>
                     <li class="page-item"><a class="page-link">3</a></li>
                     <li class="page-item"><a class="page-link">Next</a></li>
                  </ul>
               </nav>
            </div>
            -->
            <!-- 페이징 끝 -->
         </div>
      </div>
      <!-- col-2 끝 -->
      
   </div>
   <!-- row 끝 -->
</div>
<!-- container-fluid 끝 -->


		<!-- 회원 등록하기 모달 시작 -->
		<div class="modal fade" id="memberPlusWrite" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-info modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center">
						<p class="heading font-weight-bold">회원 등록하기</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<!-- 회원 등록 폼 시작 -->
						<form id="regicustomer_form">
							<div class="row justify-content-center">
								<div class="row">
									<div class="input-group col-6">
										<div class="input-group-prepend">
											<span class="input-group-text" id="label-newuser">아이디</span>
										</div>
										<div>
											<input type="text" placeholder="회원 아이디" class="form-control text-white" name="id" id="user_id" value="">
										</div>
									</div>
									<div class="input-group col-6">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon3">등록일</span>
										</div>
										<!-- 날짜 입력란 시작 -->
										<div class="c-datepicker-date-editor  J-datepicker-range-day mt10">
											<i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
											<input placeholder="시작일" id="startdate" name="startdate" class="c-datepicker-data-input only-date" value="">
											<span class="c-datepicker-range-separator">-</span>
											<input placeholder="종료일" id="enddate" name="enddate" class="c-datepicker-data-input only-date" value="">
										</div>
										<!-- 날짜 입력란 끝 -->
									</div>
								</div>
							</div>
							<div class="row justify-content-center mt-4">
								<button type="submit" id="regisubmit" class="btn btn-info btn-md" data-dismiss="modal">등록하기</button>
								<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
							</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
					</div>
				</div>
				<!--/.Content-->
			</div>
		</div>
		<!-- 회원 등록하기 모달 끝 -->
		
		<!-- 회원 삭제 모달 시작 -->
		<div class="modal fade" id="member_delete" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog modal-notify modal-sm modal-danger modal-dialog-centered" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center">
						<p class="heading font-weight-bold">회원 삭제</p>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					<!--Body-->
					<div class="modal-body">
						<div class="row justify-content-center">
								<p>
									<strong>선택한 회원을 삭제하시겠습니까?</strong>
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
		
		
		
<!-- 데이트 피커 스크립트-->
<script>


$(function(){
	
	//데이트 피커
	var DATAPICKERAPI = {	

	          rangeShortcutOption1: [{
	            name: '다음 주',
	            day: '0,7'
	          }, {
	            name: '다음 달',
	            day: '0,30'
	          }, {
	            name: '3달 후',
	            day: '0,90'

	}]};
	
	$('.J-datepicker-range-day').datePicker({
	            hasShortcut: true,
	            format: 'YYYY-MM-DD',
	            isRange: true,
	            shortcutOptions: DATAPICKERAPI.rangeShortcutOption1
	            
	});
	
	
	
})


</script>