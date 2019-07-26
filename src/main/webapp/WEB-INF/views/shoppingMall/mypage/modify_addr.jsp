<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>

<style>
h3 {
	font-weight: bold;
}
</style>
<div class="container">
	<div class="billing_details">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="mb-30 title_color">${num }번 배송지 수정
				</h3>
				<form class="row contact_form" action="/modify_userAddr.do" method="post"
					novalidate="novalidate" id="addr_info">
					<div class="col-md-6 form-group p_star">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="이름" value="<c:out value="${addrVO.name }"/>">
					</div>
					<div class="col-md-7 form-group p_star">
						<input type="text" class="form-control" id="contact" name="contact"
							placeholder="연락처" value="<c:out value="${addrVO.contact }"/>">
					</div>
					<div class="col-md-8 form-group p_star">
						<input type="text" class="form-control" id="add1" name="add1"
							placeholder="기본 주소" value="서울시 강남구 삼성동">
					</div>
					<div class="col-md-8 form-group p_star">
						<input type="text" class="form-control" id="addr" name="addr"
							placeholder="상세 주소" value="<c:out value="${addrVO.addr }"/>">
					</div>
					<div class="col-md-4 form-group p_star">
						<input type="hidden" name="zc_key" value="${num }">
					</div>

					<a href="#" class="genric-btn default radius" style="margin-left: 20px;" 
					onclick="modify_userAddr('addr_info');"><span>등록하기</span> </a>
				</form>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
</div>

<script>
	function modify_userAddr(form) {
		
		alert('배송지 정보가 수정되었습니다.');
		
		$('#' + form).submit();
	}
</script>


<%@ include file="../include/mypage_footer.jsp"%>