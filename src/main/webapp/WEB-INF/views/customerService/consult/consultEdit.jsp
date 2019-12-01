<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 실제 내용 시작 -->    
<div class="containter">
	<div class="col-md-10 offset-1">
		<div class="row pt-2">
			<h3>1:1문의 <small><sub> 수정하기</sub></small></h3>
		</div><hr/>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" method="post" action="/workout/member/consultEdit.do">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="hidden" name="no" value="${consultRecord.no}"/>
					<div class="form-group row" id="category">
						<label class="control-label pr-4">카테고리</label>
						<div>
							<select name="selectCategory" class="form-control custom-select">
								<!-- <option selected value="1">--선택해주세요--</option> -->
								<option value="[앱 사용 관련]">앱 사용 관련</option>
								<option value="[스포츠센터 관련]">스포츠센터 관련</option>
								<option value="[건의사항]">건의사항</option>								
								<option value="[기타]">기타</option>								
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-5" for="title">제목</label>
						<div class="col-10">
							<input type="text" value="${consultRecord.title}" class="form-control" name="title" id="title"
								placeholder="입력했던 제목입니다" />
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-5" for="content">내용</label>
						<div class="col-10">
							<textarea rows="10" name="content" id="content"
								class="form-control" placeholder="입력했던 내용입니다. 내용을 고쳐주세요">${consultRecord.content}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-1" for="attachedFile">첨부파일</label>
						<div class="col-10">
							<input type="file" id="attachedFile">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-2 col-md-10">
							<button type="submit" class="btn btn-primary">확인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>