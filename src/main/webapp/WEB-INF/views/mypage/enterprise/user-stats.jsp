<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="<c:url value='/resources/utils/datePicker/moment/moment.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/css/datepicker.css'/>">

<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.all.js'/>"></script>
<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.en.js'/>"></script>
<script src="<c:url value='/resources/js/mypage/enterprise/user-stats.js'/>" /></script>

    
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
                           <button type="submit" class="btn btn-default px-3" id="memberupdate">정보수정</button>   
                           <button type="submit" class="btn btn-danger px-3" id="memberDelete">회원삭제</button>         
                        </div>
                     </div>
               <!-- 회원 등록,삭제 버튼 -->
               <!-- 테이블 시작 -->
                  <table class="table" style="text-align: center;">
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="CheckAll">
                              <label class="custom-control-label" for="CheckAll"></label>
                           </div>
                           </th>
                           <th scope="col">NO</th>
                           <th scope="col">이름</th>
                           <th scope="col">아이디</th>
                           <th scope="col">성별</th>
                           <th scope="col">나이</th>
                           <th scope="col">일자</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check10">
                              <label class="custom-control-label" for="Check10"></label>
                           </div>
                           </th>
                           <td>10</td>
                           <td>나아는</td>
                           <td>NAA*</td>
                           <td>여</td>
                           <td>27</td>
                           <td>2019.10.24 ~ 2020.09.23</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check9">
                              <label class="custom-control-label" for="Check9"></label>
                           </div>
                           </th>
                           <td>9</td>
                           <td>김집에</td>
                           <td>KIM*</td>
                           <td>여</td>
                           <td>27</td>
                           <td>2019.10.23 ~ 2020.10.22</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check8">
                              <label class="custom-control-label" for="Check8"></label>
                           </div>
                           </th>
                           <td>8</td>
                           <td>박가고</td>
                           <td>PAR*</td>
                           <td>남</td>
                           <td>45</td>
                           <td>2019.10.23 ~ 2020.01.22</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check7">
                              <label class="custom-control-label" for="Check7"></label>
                           </div>
                           </th>
                           <td>7</td>
                           <td>김고객</td>
                           <td>KIM*</td>
                           <td>남</td>
                           <td>30</td>
                           <td>2019.10.20 ~ 2020.01.19</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check6">
                              <label class="custom-control-label" for="Check6"></label>
                           </div>
                           </th>
                           <td>6</td>
                           <td>최고객</td>
                           <td>CHO*</td>
                           <td>여</td>
                           <td>23</td>
                           <td>2019.10.15 ~ 2020.11.14</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check5">
                              <label class="custom-control-label" for="Check5"></label>
                           </div>
                           </th>
                           <td>5</td>
                           <td>이고객</td>
                           <td>LEE*</td>
                           <td>여</td>
                           <td>25</td>
                           <td>2019.09.30 ~ 2020.12.29</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check4">
                              <label class="custom-control-label" for="Check4"></label>
                           </div>
                           </th>
                           <td>4</td>
                           <td>김집에</td>
                           <td>KIM*</td>
                           <td>여</td>
                           <td>27</td>
                           <td>2019.10.23 ~ 2020.10.22</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check3">
                              <label class="custom-control-label" for="Check3"></label>
                           </div>
                           </th>
                           <td>3</td>
                           <td>김집에</td>
                           <td>KIM*</td>
                           <td>여</td>
                           <td>27</td>
                           <td>2019.10.23 ~ 2020.10.22</td>
                        </tr>
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
                     </tbody>
                  </table>
                  <!-- 테이블 끝 -->   
            </div>
            
            <!-- 페이징 시작 -->
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
						<div class="row justify-content-center">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">이름</span>
								</div>
								<input type="text" class="form-control" placeholder="이름을 입력하세요" aria-describedby="basic-addon1">
								<div class="input-group-prepend pl-2">
									<span class="input-group-text" id="basic-addon2">아이디</span>
								</div>
								<input type="text" class="form-control" placeholder="아이디를 입력하세요" aria-describedby="basic-addon2">		
							</div>
		
							<div class="input-group mb-3">
								<select class="browser-default custom-select mr-3">
									<option selected>성별</option>
									<option value="1">남</option>
									<option value="2">여</option>
								</select>
								<select class="browser-default custom-select">
									<option selected>나이</option>
									<option value="1">10대</option>
									<option value="2">20대</option>
									<option value="3">30대</option>
									<option value="4">40대</option>
									<option value="5">50대</option>
									<option value="6">60대</option>
									<option value="7">70대</option>
								</select>
							</div>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon3">등록일</span>
								</div>
								<!-- 날짜 입력란 시작 -->
								<div class="c-datepicker-date-editor  J-datepicker-range-day mt10">
									<i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
									<input placeholder="시작일" name="" class="c-datepicker-data-input only-date" value="">
									<span class="c-datepicker-range-separator">-</span>
									<input placeholder="종료일" name="" class="c-datepicker-data-input only-date" value="">
								</div>
								<!-- 날짜 입력란 끝 -->
							</div>
					</div>
						<div class="row justify-content-center mt-4">
							<button type="button" class="btn btn-info btn-md">등록하기</button>
							<button type="button" class="btn btn-danger btn-md" data-dismiss="modal">취소</button>
						</div>
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