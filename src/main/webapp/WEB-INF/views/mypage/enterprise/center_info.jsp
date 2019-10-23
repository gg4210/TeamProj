<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.scrolling-wrapper {
	align-item:stretch;
	display:flex;
	flex-direction:row;
	flex-wrap:nowrap;
	overflow-x: scroll;
	overflow-y: hidden;
	
	.scrolling-wrapper .card {
		display: inline-block;
		}
	}

.scrolling-wrapper .card {
  /*float: left;*/
  max-width: 33.333%;
  padding: .75rem;
  margin:10px;
  margin-bottom: 2rem;
  border: 0;
  flex-basis: 33.333%;
  flex-grow: 0;
  flex-shrink: 0;
}

.scrolling-wrapper.card > img {
  margin-bottom: .75rem;
}

</style>
<div class="container">
	<div class="row">
		<div class="offset-md-2 col-md-8">
			<div class="card">
				<h2 class="card-title" style="background-color: #1a237e; color: white;text-align:center">MY 헬스클럽 정보</h2>
				<div class="card-body">
					<div>업체명: 운동해 클럽 가산 디지털점</div>
					<div>대표전화:010-1234-5678</div>
					<div>주소:서울 특별시 가산동~~</div>
					<div>운영시간:09:00~23:00</div>
					<div class="scrolling-wrapper">
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/35.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/36.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/37.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/38.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/39.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/40.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/41.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/42.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/43.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/44.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/45.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/46.jpg" alt="Card image cap"></div>
						<div class="card"><img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/images/47.jpg" alt="Card image cap"></div>
					</div>
				</div>
				<div class="card-footer" align="right">
					<button type="submit" class="detail btn btn-info px-3">수정</button>
					<button type="submit" class="detail btn btn-info px-3">삭제</button>
				</div>
			</div>
		</div>
	</div>
</div>