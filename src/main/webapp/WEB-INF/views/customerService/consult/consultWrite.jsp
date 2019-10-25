<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="containter">
	<div class="row">
		<h3>1:1문의</h3>
	</div><hr/>
	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal" method="post"
				action="/workout/customerService/consult/consultView.do">
				<div class="form-group row" id="category">
					<label class="control-label pr-4">키워드</label>
					<div>
						<select name="selectCategory" class="form-control custom-select">
							<option selected value="1">-카테고리를 선택해주세요.</option>
							<option value="2">헬스클럽 관련</option>
							<option value="3">앱 사용 관련</option>
						</select>
					</div>
				</div>
				<div class="form-group row">
					<label class="control-label pr-4" for="title">제목</label>
					<div class="col-10">
						<input type="text" class="form-control" name="title" id="title"
							placeholder="제목을 입력하세요" />
					</div>
				</div>
				<div class="form-group row">
					<label class="control-label pr-4" for="content">내용</label>
					<div class="col-10">
						<textarea rows="10" name="content" id="content"
							class="form-control" placeholder="내용을 입력하세요"></textarea>
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
						<button type="submit" class="btn btn-primary">등록</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>