<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
    <a href="<c:url value='/bbsView.do'/>" class="btn btn-primary">뷰페이지 확인용 버튼(추후 삭제 예정)</a>
    <a href="#" class="btn btn-success" data-toggle="modal" data-target="#modalWriteForm">글쓰기(모달작성예정)</a>
    
    
    
    
    <!-- 게시글 등록을 위한 modal div -->

	<div class="modal fade" id="modalWriteForm" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h4 class="modal-title w-100 font-weight-bold">등록하기</h4>
				</div>
				<form class="needs-validation" method="post"
					action="<c:url value='/bbs/write.do?nowPage=${nowPage }'/>" novalidate>
					<div class="modal-body">
						<div class="form-group">
							<label data-error="wrong" data-success="right" for="title"><i
								class="fas fa-tag prefix grey-text"></i> 제목</label> <input type="text"
								id="title" name="title" class="form-control" required>
							<div class="invalid-feedback">제목을 입력하세요</div>
						</div>
						<div class="form-group">
							<label data-error="wrong" data-success="right" for="content"><i
								class="fas fa-pencil-alt prefix grey-text"></i> 내용</label>
							<textarea type="text" id="content" name="content" class="textarea form-control"
								rows="8" required></textarea>
							<div class="invalid-feedback">내용을 입력하세요</div>
						</div>
					</div>
					<div class="modal-footer d-flex justify-content-center">
						<button type="submit" class="btn btn-info">
							<i class="far fa-check-circle"></i> 등록
						</button>
						<button class="btn btn-info" data-dismiss="modal">
							<i class="far fa-times-circle"></i> 취소
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>