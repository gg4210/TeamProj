<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 실제 내용 시작 -->    
<div class="containter">
	<div class="col-md-10 offset-1">
		<div class="row pt-2">
			<h3>이벤트 <small><sub> 수정하기</sub></small></h3>
		</div><hr/>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" method="post" action="/workout/member/eventEdit.do">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="hidden" name="no" value="${eventRecord.no}"/>
					<div class="form-group row" id="category">
						<label class="control-label pr-4">카테고리</label>
						<div>
							<select name="selectCategory" class="form-control custom-select">
								<!-- <option selected value="1">--선택해주세요--</option> -->
								<option value="[전체 이벤트]">전체 이벤트</option>
								<option value="[센터별 이벤트]">센터별 이벤트</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-5" for="title">제목</label>
						<div class="col-10">
							<input type="text" value="${eventRecord.title}" class="form-control" name="title" id="title"
								placeholder="입력했던 제목입니다" />
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-5" for="content">내용</label>
						<div class="col-10">
							<textarea rows="10" name="content" id="content"
								class="form-control" placeholder="입력했던 내용입니다. 내용을 고쳐주세요">${eventRecord.content}</textarea>
						</div>
					</div>
					
					<div class="form-group row">
						<div class="col-md-2 offset-md-9 pl-5">
							<button type="submit" class="btn btn-info">확인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>