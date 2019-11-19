<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script src="<c:url value='/resources/utils/datePicker/moment/moment.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/css/datepicker.css'/>">

<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.all.js'/>"></script>
<script src="<c:url value='/resources/utils/datePicker/versatile-date-time-month-year-picker/js/datepicker.en.js'/>"></script>

    
<div class="container">
   <div class="page-header" style="margin-bottom:25px; border-bottom:1px solid #D8D8D8;">
      <h2>쿠폰 발급</h2>
   </div>
   <div class="row">
      <div class="col-lg-6" style="display:inline;">
         <div class="card">
            <div class="card-body">
               <h3>쿠폰 발급하기</h3>
               
               <div class="form-group row">
                  <label class="control-label pr-2 col-offset-1 col-2" for="title">제목</label>
                  <div class="col-12">
                     <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요"/>
                  </div>
               </div>
               <div class="form-group row">
                  <label class="control-label pr-2 col-offset-1 col-2" for="content">내용</label>
                  <div class="col-12">
                     <textarea rows="10" name="content" id="content" class="form-control" placeholder="내용을 입력하세요"></textarea>
                  </div>
               </div>
               
               <div class="mt40">
               		
	               		<label class="control-label pr-2 col-offset-1 col-3" for="content">유효기간</label>
				        <div class="c-datepicker-date-editor  J-datepicker-range-day mt10">
				          <i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
				          <input placeholder="시작일" name="" class="c-datepicker-data-input only-date" value="">
				          <span class="c-datepicker-range-separator">-</span>
				          <input placeholder="종료일" name="" class="c-datepicker-data-input only-date" value="">
				        </div>
				        
		      	</div>
               
            </div>
            <div class="d-flex justify-content-center">
               <button style="width:20%;" class="btn purple-gradient" id="event-send" data-toggle="modal" data-target="#event-modal">전송</button>
            </div>   
         </div>
      </div>
      <br/>
      <div class="col-lg-6" style="display:inline;">
         <div>
            <div class="card">
               <div class="card-body">
               <h3>쿠폰 발급내역</h3>
            
               <div class="row">
                  <div class="col">
                     <table class="table">
                        <thead>
                           <tr>
                              <th style="text-align:left; width:80%">제목</th>
                              <th style="width:20%;text-align:center;">작성일</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td><a href="#" data-toggle="modal" data-target="#send-coupon-history-ModalScrollable" id="send-coupon-history">10% 할인쿠폰</a></td>
                              <td class="align-middle" style="text-align:center;">2019-10-01</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>      
                  <!-- 페이지네이션 시작 -->
                  <div class="row">
                     <div class="col">
                        <nav class="d-flex justify-content-center mt-3">
                           <ul class="pagination pagination-circle pg-blue">
                              <li class="page-item"><a class="page-link" title="처음페이지로 이동" href="#">◀</a></li>
                              <li class="page-item"><a class="page-link" title="이전페이지" href="#" tabindex="-1">＜</a></li>
                              <li class="page-item active"><a class="page-link" href="#">1</a></li>
                              <li class="page-item"><a class="page-link" href="#">2</a></li>
                              <li class="page-item"><a class="page-link" href="#">3</a></li>
                              <li class="page-item"><a class="page-link" href="#">4</a></li>
                              <li class="page-item"><a class="page-link" href="#">5</a></li>
                              <li class="page-item"><a class="page-link" title="다음페이지" href="#">＞</a></li>
                              <li class="page-item"><a class="page-link" title="마지막페이지로 이동" href="#">▶</a></li>
                           </ul>
                        </nav>
                     </div>
                  </div>
                  <!-- 페이지네이션 끝 -->
                  
               </div>
            </div>
         </div>
      </div>
   </div>

   
   <!-- 쿠폰발급 모달 -->
	<div class="modal fade" id="event-modal" tabindex="-1"
		role="dialog" aria-labelledby="couponModalCenterTitle"
		aria-hidden="true">

		<!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
		<div class="modal-dialog modal-dialog-centered" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="couponSendModalLongTitle">쿠폰 발급</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">쿠폰을 발급하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn blue-gradient">발급</button>
					<button type="button" class="btn peach-gradient" data-dismiss="modal">취소</button>
					
				</div>
			</div>
		</div>
	</div>
	
	<!-- 쿠폰 발급내역 모달 -->
	<div class="modal fade" id="send-coupon-history-ModalScrollable" tabindex="-1" role="dialog" aria-labelledby="send-coupon-history-ModalScrollableTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="send-coupon-history-ModalScrollableTitle">10% 할인쿠폰</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	11월 리모델링 기념으로 10% 할인쿠폰을 보내드립니다
	      	<br/>
			유효기간내 2인 동시 등록시 추가 10% 할인해드립니다
			<br/>
			많은 관심 부탁드립니다
	      </div>
	      <div class="modal-footer">
	      	<button type="button" class="btn btn-primary">내용 복사하기</button>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	

</div>

<script>

$(function(){
	
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
   
});

</script>




