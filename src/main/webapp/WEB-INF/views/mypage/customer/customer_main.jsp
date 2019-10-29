<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
   
<div class="container">

   <!-- row1 시작 -->
   <div class="row">
   
      <!-- col1 등록한 센터 시작 -->
      <div class="accordion col" id="accordion1">
         <div class="card">
            <div class="card-header mdb-color darken-3 pb-0" id="heading1">
               <button class="btn btn-link" type="button" data-toggle="collapse"
                     data-target="#center" aria-expanded="true"
                     aria-controls="collapseOne">
                     
                     <div class="row">
                        <div class="col-3 mr-3">
                           <h4>
                           	  <span class="fa-stack">
                              <i class="far fa-circle fa-stack-2x text-white"></i>
                              <i class="fas fa-heart fa-stack-1x text-white"></i>
                           	  </span>
                           </h4>               
                        </div>
                        <div class="col">
                           <div class="row">
                              <h5 class="text-left font-weight-bold text-white">
                                	내가 등록한 센터
                              </h5>
                           </div>
                           <div class="row">
                              <p class="text-left text-white">
                                 <span class="badge badge-pill badge-danger"><i class="far fa-heart" aria-hidden="true"></i></span>
                                 	자신이 등록한 센터를 확인하세요!
                              </p>
                           </div>
                        </div>
                     </div>
               </button>
            </div>

            <div id="center" class="collapse" aria-labelledby="heading1"
               data-parent="#accordion1">
               <!-- 카드 바디 시작 -->
               <div class="card-body pt-1">
               <!-- 삭제 버튼 시작 -->
               <div class="row float-right pr-2">
               		<button type="submit" class="btn btn-danger p-1 px-2" id="delete">삭제하기</button>
               	</div>
               	<!-- 삭제 버튼 끝 -->
               	  <!-- 등록한 센터 테이블 시작 -->
                  <table class="table" style="text-align: center;" >
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col" style="width: 5%">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="AllCheck">
                              <label class="custom-control-label" for="AllCheck"></label>
                           </div>
                           </th>
                           <th scope="col" style="width: 25%">센터명</th>
                           <th scope="col" style="width: 40%">일자</th>
                           <th scope="col" style="width: 15%">혼잡도</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check3">
                              <label class="custom-control-label" for="Check3"></label>
                           </div>
                           </th>
                           <td><a href="#">도레미</br>스포츠센터</a></td>
                           <td>2019.10.28 ~ 2019.11.27</td>
                           <td><i class="fas fa-circle text-danger"></i> 혼잡</br>85%</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check2">
                              <label class="custom-control-label" for="Check2"></label>
                           </div>
                           </th>
                           <td><a href="#">파솔라</br>스포츠센터</a></td>
                           <td>2019.10.28 ~ 2019.11.27</td>
                            <td><i class="fas fa-circle text-info"></i> 여유</br>30%</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check1">
                              <label class="custom-control-label" for="Check1"></label>
                           </div>
                           </th>
                           <td><a href="#">시도</br>스포츠센터</a></td>
                           <td>2019.10.28 ~ 2019.11.27</td>
                            <td><i class="fas fa-circle text-warning"></i> 보통</br>65%</td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 등록한 센터 테이블 끝 -->  
                  <div class="row float-right pr-2 pb-3">
                  	<span style="color: red; font-weight: bold;">※센터 등록은 최대 3개까지 가능합니다.</span>
                  </div>
               </div>
               <!-- 카드 바디 끝 -->
            </div>
         </div>
      </div>
      <!-- col1 끝 -->

      <!-- col 2 찜한 센터 시작 -->
      <div class="accordion col" id="accordion2">
         <div class="card">
            <div class="card-header mdb-color darken-3 pb-0" id="heading2">
               <button class="btn btn-link" type="button" data-toggle="collapse"
                     data-target="#like_center" aria-expanded="true"
                     aria-controls="collapseThree">

                     <div class="row">
                     <div class="col-3 mr-2">
      
                        <h4 class="text-left font-weight-bold">
                           <span class="fa-stack"> <i
                              class="far fa-circle fa-stack-2x text-white"></i>
                              <i class="fas fa-star fa-stack-1x text-white"></i>
                           </span>
                        </h4>
                     
                     </div>
                     <div class="col">
                        <div class="row">
                           <h5 class="text-left font-weight-bold text-white">
                                	내가 찜한 센터
                           </h5>
                        </div>
                        <div class="row">
                           <p class="text-left text-white">
                              <span class="badge badge-pill badge-danger"><i class="far fa-star"></i></span>
                              	자신이 찜한 센터를 확인하세요!
                           </p>
                        </div>
                     </div>
                     </div>   
                     
               </button>
            </div>

            <div id="like_center" class="collapse" aria-labelledby="connect"
               data-parent="#accordion2">
               <!-- 카드 바디 시작 -->
               <div class="card-body pt-1">
               <!-- 삭제 버튼 시작 -->
               <div class="row float-right pr-2">
               		<button type="submit" class="btn btn-danger p-1 px-2" id="delete">삭제하기</button>
               	</div>
               	<!-- 삭제 버튼 끝 -->
               	  <!-- 등록한 센터 테이블 시작 -->
                  <table class="table" style="text-align: center;" >
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col" style="width: 5%">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="AllCheck">
                              <label class="custom-control-label" for="AllCheck"></label>
                           </div>
                           </th>
                           <th scope="col" style="width: 25%">센터명</th>
                           <th scope="col" style="width: 40%">위치</th>
                           <th scope="col" style="width: 15%">혼잡도</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check3">
                              <label class="custom-control-label" for="Check3"></label>
                           </div>
                           </th>
                           <td><a href="#">오늘은</br>스포츠센터</a></td>
                           <td>서울시 금천구</td>
                           <td><i class="fas fa-circle text-danger"></i> 혼잡</br>85%</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check2">
                              <label class="custom-control-label" for="Check2"></label>
                           </div>
                           </th>
                           <td><a href="#">월요일</br>스포츠센터</a></td>
                           <td>서울시 금천구</td>
                            <td><i class="fas fa-circle text-info"></i> 여유</br>30%</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check1">
                              <label class="custom-control-label" for="Check1"></label>
                           </div>
                           </th>
                           <td><a href="#">빠른</br>스포츠센터</a></td>
                           <td>서울시 금천구</td>
                            <td><i class="fas fa-circle text-warning"></i> 보통</br>65%</td>
                        </tr>
                         <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check2">
                              <label class="custom-control-label" for="Check2"></label>
                           </div>
                           </th>
                           <td><a href="#">귀가</br>스포츠센터</a></td>
                           <td>서울시 금천구</td>
                             <td><i class="fas fa-circle text-warning"></i> 보통</br>70%</td>
                        </tr>
                         <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check2">
                              <label class="custom-control-label" for="Check2"></label>
                           </div>
                           </th>
                           <td><a href="#">부탁</br>스포츠센터</a></td>
                           <td>서울시 강남구</td>
                            <td><i class="fas fa-circle text-info"></i> 여유</br>15%</td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 등록한 센터 테이블 끝 -->  
                  <div class="row float-right pr-2 pb-3">
                  	<span style="color: red; font-weight: bold;">※센터 찜하기는 최대 5개까지 가능합니다.</span>
                  </div>
               </div>
               <!-- 카드 바디 끝 -->
            </div>
         </div>
      </div>
      <!-- col 2 끝 -->
   </div>
   <!-- row1 끝 -->
   
   
   
   <!-- row2 시작 -->
   <div class="row mt-3">
      <!-- col 1 나의 운동메이트 시작 -->
      <div class="accordion col" id="accordion3">
         <div class="card">
            <div class="card-header mdb-color darken-3 pb-0" id="heading3">
               <button class="btn btn-link" type="button" data-toggle="collapse"
                  data-target="#like_mate" aria-expanded="true"
                  aria-controls="collapseTwo">

                  <div class="row">
                     <div class="col-3 mr-3">

                        <h4 class="text-left font-weight-bold">
                           <span class="fa-stack"> <i
                              class="far fa-circle fa-stack-2x text-white"></i> <i
                              class="fas fa-user-friends fa-stack-1x text-white"></i>
                           </span>
                        </h4>

                     </div>
                     <div class="col">
                        <div class="row">
                           <h5 class="text-left font-weight-bold text-white">나의 운동 메이트
                           </h5>
                        </div>
                        <div class="row">
                           <p class="text-left text-white">
                              <span class="badge badge-pill badge-primary"><i class="fas fa-plus"></i></span>
                              	나의 운동메이트들을 확인하세요!
                           </p>
                        </div>
                     </div>
                  </div>
               </button>
            </div>

            <div id="like_mate" class="collapse" aria-labelledby="heading3"
               data-parent="#accordion3">
               <div class="card-body pt-1">
               	  <!-- 더보기  시작 -->
               	  	<div class="row float-right pr-2">
               		<button type="submit" class="btn btn-info p-1 px-2" id="select"><i class="fas fa-plus"></i> 더보기</button>
               	</div>               	  
               	<!-- 더보기 끝 -->
                  <!-- 테이블 시작 -->
                  <table class="table" style="text-align: center;">
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col"></th>
                           <th scope="col">아이디</th>
                           <th scope="col">메이트 등록일</th>
                           <th scope="col">상세보기</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <th scope="row">
                           <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                           </th>
                           <td>KIM**</td>
                           <td>2019.10.28</td>
                           <td><button type="button" class="btn btn-default btn-rounded p-1 px-3">Click!</button></td>
                        </tr>
                        <tr>
                           <th scope="row">
                           	<img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                           </th>
                           <td>LEE**</td>
                           <td>2019.10.20</td>
                       	   <td><button type="button" class="btn btn-default btn-rounded p-1 px-3">Click!</button></td>
                        </tr>
                        <tr>
                           <th scope="row">
                           	<img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(27).jpg" alt="avatar mx-auto white" class="rounded-circle img-fluid">
                           </th>
                           <td>PAR**</td>
                           <td>2019.10.01</td>
                           <td><button type="button" class="btn btn-default btn-rounded p-1 px-3">Click!</button></td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 테이블 끝 -->
               </div>
            </div>
         </div>
      </div>
      <!-- col 1 끝 -->






      <!-- col 2 시작 -->
      <div class="accordion col" id="accordion4">
         <div class="card">
            <div class="card-header mdb-color darken-3 pb-0" id="heading4">
                  <button class="btn btn-link" type="button" data-toggle="collapse"
                     data-target="#message" aria-expanded="true"
                     aria-controls="collapseFour">
                     
                     <div class="row">
                     <div class="col-3">
      
                        <h4 class="text-left font-weight-bold">
                           <span class="fa-stack"> 
                              <i class="far fa-circle fa-stack-2x text-white"></i> 
                              <i class="fa fa-envelope fa-stack-1x text-white"></i>
                           </span>
                        </h4>
                     
                     </div>
                     <div class="col">
                        <div class="row">
                           <h5 class="text-left font-weight-bold text-white">
                                 	받은 쪽지함
                           </h5>
                        </div>
                        <div class="row">
                           <p class="text-left text-white">
                              <span class="badge badge-pill badge-primary">new</span> 새로운 쪽지가 도착했어요!
                           </p>
                        </div>
                     </div>
                     </div>
                     
                     
                  </button>
            </div>
            <div id="message" class="collapse" aria-labelledby="board" data-parent="#accordion4">
            <div class="card-body pt-1">
            	<!-- 더보기  시작 -->
               	  	<div class="row float-right pr-2">
               		<button type="submit" class="btn btn-info p-1 px-2" id="plus"><i class="fas fa-plus"></i> 더보기</button>
               	</div>               	  
               	<!-- 더보기 끝 -->
               <!-- 쪽지함 테이블 시작 -->
                  <table class="table" style="text-align: center;" >
                     <thead class="bg-primary white-text">
                        <tr>
                           <th scope="col" style="width: 5%">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="AllCheck">
                              <label class="custom-control-label" for="AllCheck"></label>
                           </div>
                           </th>
                           <th scope="col" style="width: 25%">보낸사람</th>
                           <th scope="col" style="width: 40%">발신일</th>
                           <th scope="col" style="width: 20%">읽음 여부</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check3">
                              <label class="custom-control-label" for="Check3"></label>
                           </div>
                           </th>
                           <td><a href="#">도레미</br>스포츠센터</a></td>
                           <td>2019.10.28 ~ 2019.11.27</td>
                           <td><i class="fas fa-circle text-danger"></i> 혼잡</br>85%</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check2">
                              <label class="custom-control-label" for="Check2"></label>
                           </div>
                           </th>
                           <td><a href="#">파솔라</br>스포츠센터</a></td>
                           <td>2019.10.28 ~ 2019.11.27</td>
                            <td><i class="fas fa-circle text-info"></i> 여유</br>30%</td>
                        </tr>
                        <tr>
                           <th scope="row">
                           <div class="custom-control custom-checkbox">
                              <input type="checkbox" class="custom-control-input" id="Check1">
                              <label class="custom-control-label" for="Check1"></label>
                           </div>
                           </th>
                           <td><a href="#">시도</br>스포츠센터</a></td>
                           <td>2019.10.28 ~ 2019.11.27</td>
                            <td><i class="fas fa-circle text-warning"></i> 보통</br>65%</td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 쪽지함 테이블 끝 -->        
              </div>
         </div>
      </div>
   </div>
   <!-- col 2 끝 -->
   </div>
   <!-- row2 끝 -->
   
</div>
<!-- container -->