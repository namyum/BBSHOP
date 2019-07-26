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
				<h3 class="mb-30 title_color">새 배송지 등록</h3>
				<form class="row contact_form" action="/write_userAddr.do" method="post"
					novalidate="novalidate" id="write_addr">
					<div class="col-md-6 form-group p_star">
						<label for="name">이름</label>
						<input type="text" class="form-control" id="name" name="name"
							placeholder="이름">
					</div>
					<div class="col-md-7 form-group p_star">
						<label for="contact">연락처</label>
						<input type="text" class="form-control" id="contact" name="contact"
							placeholder="연락처">
					</div>
					<div class="col-md-8 form-group p_star">
						<label for="add1">기본 주소</label>
						<input type="text" class="form-control" id="add1" name="add1"
							placeholder="기본 주소">
					</div>
					<div class="col-md-8 form-group p_star">
						<label for="addr">상세 주소</label>
						<input type="text" class="form-control" id="addr" name="addr"
							placeholder="상세 주소">
					</div>
					<div class="col-md-4 form-group p_star"></div>

					<a href="#" class="genric-btn default radius" onclick="insertAddrInfo('write_addr');" style="margin-left: 20px;">
						<span style="font-weight: bold;">배송지 등록</span>
					</a>
				</form>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
</div>
<script>
	function insertAddrInfo(form) {
		
		alert('배송지가 등록되었습니다.');
		
		$('#'+form).submit();
		
	}
</script>

<%@ include file="../include/mypage_footer.jsp"%>