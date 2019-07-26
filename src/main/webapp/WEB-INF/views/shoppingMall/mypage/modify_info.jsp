<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>

<style>
.sorting {
	margin-right: 50px;
}

h3, h4, h6 {
	font-weight: bold;
}
</style>
<div class="container">
	<section class="checkout_area section_gap" style="padding-top: 0px;">
		<!-- 의정 style수정 -->
		<div class="container">
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-12" style="margin-bottom: 30px;">
						<h3 class="mb-30 title_color">회원 정보 수정</h3>
						<form class="row contact_form" action="/modify_userInfo.do"
							method="post" novalidate="novalidate" id="modify_info">
							<div class="col-md-7 form-group p_star">
								<label for="name">이름</label> <input type="text"
									class="form-control" id="NAME" name="NAME"
									value="<c:out value="${memberInfo.NAME }" default="null" />">
							</div>
							<div class="col-md-6 form-group p_star">
								<label for="pw">비밀번호</label> <input type="text"
									class="form-control" id="MEMBER_PW" name="MEMBER_PW"
									value="<c:out value="${memberInfo.MEMBER_PW }" default="null" />">
							</div>
							<div class="col-md-6 form-group p_star">
								<label for="pw_chk">비밀번호 확인</label> <input type="text"
									class="form-control" id="PW_CHK" name="PW_CHK"
									value="<c:out value="${memberInfo.MEMBER_PW }" default="null" />">
							</div>
							<div class="col-md-7 form-group p_star">
								<label for="birth">생년월일</label> <input type="text"
									class="form-control" id="BIRTH" name="BIRTH"
									value="<c:out value="${memberInfo.BIRTH }" default="null" />"
									readonly>
							</div>
							<div class="col-md-6 form-group p_star">
								<label for="phone">휴대폰</label> <input type="text"
									class="form-control" id="PHONE" name="PHONE"
									value="<c:out value="${memberInfo.PHONE }" default="null" />">
							</div>
							<div class="col-md-7 form-group p_star">
								<label for="nickname">닉네임</label> <input type="text"
									class="form-control" id="NICKNAME" name="NICKNAME"
									value="<c:out value="${memberInfo.NICKNAME }" default="null" />">
							</div>
							<div class="col-md-5 form-group p_star">
								<a href="#" class="genric-btn default radius"
									style="height: 35px; position: absolute; left: 0px; bottom: 0px;"><span
									id="dup_chk">중복확인</span></a>
							</div>
						</form>

						<a href="#" class="genric-btn default radius"
							onclick="modify_userInfo('modify_info')"><span>수정하기</span></a> <a
							id="withdraw" href="/withdraw.do"
							class="genric-btn default radius" style="float: right;"><span>회원
								탈퇴</span> </a>
					</div>
				</div>
			</div>
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-12" style="margin-bottom: 30px;">
						<h3 class="mb-30 title_color">배송지 목록</h3>
						<a href="/write_addr.do?num=${addr_list.size() }"
							class="genric-btn default radius"
							style="float: right; margin-top: 0px;"><span>새 배송지 등록</span>
						</a>
						<div class="row">
							<c:forEach items="${addr_list }" var="AddrVO" varStatus="status">
								<div class="col-lg-4">
									<div class="contact_info">
										<h4>배송지 ${status.count }</h4>
										<br>
										<div class="info_item">
											<i class="fas fa-male"></i>
											<h6>이름</h6>
											<p>${AddrVO.name }</p>
										</div>
										<div class="info_item">
											<i class="lnr lnr-home"></i>
											<h6>주소</h6>
											<p>서울시 강남구 삼성동</p>
											<p>${AddrVO.addr }</p>
										</div>
										<div class="info_item">
											<i class="lnr lnr-phone-handset"></i>
											<h6>연락처</h6>
											<p>${AddrVO.contact }</p>
										</div>
									</div>
									<a href="/modify_addr.do?num=${status.count }"
										class="genric-btn default radius" style="margin-top: 30px"><span>배송지${status.count }
											수정</span> </a> <a href="#" onclick="deleteAddr('${AddrVO.num }');"
										class="genric-btn danger radius" style="margin-top: 30px"><span>배송지${status.count }
											삭제</span> </a>
								</div>
							</c:forEach>

						</div>
					</div>

				</div>
			</div>
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="mb-30 title_color">추가 정보 수정</h3>
						<h5>* 구단과 포지션은 하나만 선택 가능합니다.</h5>
						<form class="row contact_form" action="#" method="post"
							novalidate="novalidate">
							<div class="product_top_bar" style="margin-bottom: 30px;">
								<div class="left_dorp">
									<select class="sorting">
										<option value="0">구단</option>
										<option value="1">SK 와이번스</option>
										<option value="2">LG 트윈스</option>
										<option value="3">한화 이글스</option>
										<option value="4">두산 베어스</option>
										<option value="5">삼성 라이온즈</option>
										<option value="6">키움 히어로즈</option>
										<option value="7">KIA 타이거즈</option>
										<option value="8">KT 위즈</option>
										<option value="9">NC 다이노스</option>
									</select>
								</div>
								<div class="left_dorp">
									<select class="sorting">
										<option value="0">포지션</option>
										<option value="1">포수</option>
										<option value="2">투수</option>
										<option value="3">1루수</option>
										<option value="4">2루수</option>
										<option value="5">3루수</option>
										<option value="5">유격수</option>
										<option value="5">외야수</option>
									</select>
								</div>
								<div class="left_dorp">
									<select class="sorting">
										<option value="0">좌/우</option>
										<option value="1">좌투(오른손 착용)</option>
										<option value="2">우투(왼손 착용)</option>
									</select>
								</div>
							</div>
							<div class="product_top_bar" style="margin-bottom: 30px;">
								<div class="left_dorp">
									<select class="sorting">
										<option value="1">브랜드 1</option>
										<option value="2">MIZUNO</option>
										<option value="3">WILSON</option>
										<option value="4">NIKE</option>
										<option value="5">ADIDAS</option>
										<option value="6">ASICS</option>
										<option value="7">FILA</option>
										<option value="8">MORIMOTO</option>
										<option value="9">UNDERARMOUR</option>
										<option value="10">DESCENTE</option>
										<option value="11">BRETT</option>
									</select>
								</div>
								<div class="left_dorp">
									<select class="sorting">
										<option value="1">브랜드 2</option>
										<option value="2">MIZUNO</option>
										<option value="3">WILSON</option>
										<option value="4">NIKE</option>
										<option value="5">ADIDAS</option>
										<option value="6">ASICS</option>
										<option value="7">FILA</option>
										<option value="8">MORIMOTO</option>
										<option value="9">UNDERARMOUR</option>
										<option value="10">DESCENTE</option>
										<option value="11">BRETT</option>
									</select>
								</div>
								<div class="left_dorp">
									<select class="sorting">
										<option value="1">브랜드 3</option>
										<option value="2">MIZUNO</option>
										<option value="3">WILSON</option>
										<option value="4">NIKE</option>
										<option value="5">ADIDAS</option>
										<option value="6">ASICS</option>
										<option value="7">FILA</option>
										<option value="8">MORIMOTO</option>
										<option value="9">UNDERARMOUR</option>
										<option value="10">DESCENTE</option>
										<option value="11">BRETT</option>
									</select>
								</div>
							</div>
						</form>
						<div>
							<a href="/modify_info" class="genric-btn default radius"
								onclick="alert('추가 사항이 수정되었습니다.');" style="float: right;"><span>수정하기</span>
							</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
</div>

<script>
	function modify_userInfo(form) {

		alert('회원 정보가 수정되었습니다.');

		$('#' + form).submit();

	};

	function deleteAddr(num) {

		var answer = confirm('배송지를 삭제하시겠습니까?');

		if (answer == true) {

			alert('배송지가 삭제되었습니다.');

			location.href = "/delete_userAddr.do?num=" + num;
		}
	}
</script>

<%@ include file="../include/mypage_footer.jsp"%>