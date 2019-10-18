<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" method="post" action="<c:url value='#'/>">
			<div class="form-group" id="category">
				<label class="col-1 control-label">키워드</label>
				<select name="selectCategory" class="form-control custom-select mr-2 col-3">
					<option selected value="1">-카테고리를 선택해주세요.</option>
					<option value="2">헬스클럽 관련</option>
					<option value="3">앱 사용 관련</option>
				</select>
			</div>
			<div class="form-group">
				<label class="col-md-1 control-label" for="title">제목</label>
				<div class="col-10">
					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-12">
					<textarea rows="10" name="content" id="content" class="form-control" placeholder="내용을 입력하세요"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-2 col-md-10">
					<button type="submit" class="btn btn-info">등록</button>
				</div>
			</div>
		</form>
	</div>
</div>