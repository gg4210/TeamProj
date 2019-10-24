<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="containter">
	<div class="col-md-10 offset-1">
		<div class="row pt-2">
			<h3>공지사항 <small><sub> 수정하기</sub></small></h3>
		</div><hr/>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" method="post"
					action="/workout/customerService/notice/noticeView.do">
					<div class="form-group row" id="category">
						<label class="control-label pr-4">카테고리</label>
						<div>
							<select name="selectCategory" class="form-control custom-select">
								<option selected value="1">--선택해주세요--</option>
								<option value="2">정기점검</option>
								<option value="3">기타</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-5" for="title">제목</label>
						<div class="col-10">
							<input type="text" class="form-control" name="title" id="title"
								placeholder="입력했던 제목입니다" />
						</div>
					</div>
					<div class="form-group row">
						<label class="control-label pr-5" for="content">내용</label>
						<div class="col-10">
							<textarea rows="10" name="content" id="content"
								class="form-control" placeholder="입력했던 내용입니다. 내용을 고쳐주세요"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-md-offset-2 col-md-10">
							<button type="submit" class="btn btn-info">수정</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>