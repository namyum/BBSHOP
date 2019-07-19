<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>

<%
	String num = request.getParameter("num");
%>

<style>
h3 {
	font-weight: bold;
}
</style>
<div class="container">
	<div class="billing_details">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="mb-30 title_color"><%=num%>번 배송지 수정
				</h3>
				<form class="row contact_form" action="#" method="post"
					novalidate="novalidate">
					<div class="col-md-6 form-group p_star">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="이름">
					</div>
					<div class="col-md-7 form-group p_star">
						<input type="text" class="form-control" id="phone" name="phone"
							placeholder="핸드폰">
					</div>
					<div class="col-md-8 form-group p_star">
						<input type="text" class="form-control" id="add1" name="add1"
							placeholder="기본 주소">
					</div>
					<div class="col-md-8 form-group p_star">
						<input type="text" class="form-control" id="add2" name="add2"
							placeholder="상세 주소">
					</div>
					<div class="col-md-4 form-group p_star"></div>

					<a href="/modify_info" class="genric-btn default radius" style="margin-left: 20px;" 
					onclick="alert('배송지 정보가 수정되었습니다.');"><span>등록하기</span> </a>
				</form>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
</div>


<%@ include file="../include/mypage_footer.jsp"%>