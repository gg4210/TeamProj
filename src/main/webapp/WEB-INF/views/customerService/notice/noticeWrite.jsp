<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/validation/jquery.validate.js'/>"></script>
<script>
$( document ).ready( function () {
	$( "#notice_form" ).validate( {
		rules: {
			title: {
				required: true,
				maxlength: 30
			},
			content: {
				required: true,
				rangelength: [1,1000]
			}
		},
		messages: {
			title: {
				required: "제목을 입력해주세요.",
				maxlength: "제목은 최대 30자까지 입력 가능합니다."
			},
			content: {
				required: "내용을 입력해주세요.",
				rangelength: "내용 최소 1자에서 최대 1000자까지  입력 가능합니다."
			}
		}
		/* 글자 빨간색일 필요 없으면  주석 사이를 지우면 됨. */
		,
		errorElement: "em",
		errorPlacement: function ( error, element ) {			
		}
		/* 여기까지 글자 빨간색*/
	} );
} );
</script>

<!-- 실제 내용 시작 -->
<div class="containter">
	<div class="col-md-10 offset-1">
		<div class="row pt-2">
			<h3>공지사항</h3>
		</div><hr/>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" method="post" id="notice_form"
					action="<c:url value='/member/noticeWrite.do'/>">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<div class="form-group row" id="category">
						<label class="control-label pr-3">카테고리</label>
						<div class="col-2">
							<select name="selectCategory" class="form-control custom-select">
								<!-- 
								<option selected value="1">-카테고리를 선택해주세요.</option>
								 -->
								<option value="[공지]">공지</option>
								<option value="[점검]">점검</option>
								<option value="[기타]">기타</option>
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
						
						<div class="row">
							<em id="title-error" class="error help-block text-left ml-3 pl-5 pb-2" for="title" style="display:none;color:red;"></em>
						</div>
					
					
					<div class="form-group row">
						<label class="control-label pr-4" for="content">내용</label>
						<div class="col-10">
							<textarea rows="10" name="content" id="content"
								class="form-control" placeholder="내용을 입력하세요"></textarea>
						</div>
					</div>
					
						<div class="row">
							<em id="content-error" class="error help-block text-left ml-3 pl-5" for="content" style="display:none;color:red;"></em>
						</div>
					
					
					<div class="form-group row">
						<div class="col-md-2 offset-md-9 pl-5">
							<button type="submit" class="btn btn-info">등록</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>