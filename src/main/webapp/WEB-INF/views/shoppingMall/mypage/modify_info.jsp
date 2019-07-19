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
	<section class="checkout_area section_gap" style="padding-top:0px;"> <!-- 의정 style수정 -->
		<div class="container">
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-12" style="margin-bottom: 30px;">
						<h3 class="mb-30 title_color">회원 정보 수정</h3>
						<form class="row contact_form" action="#" method="post"
							novalidate="novalidate">
							<div class="col-md-7 form-group p_star">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="이름">
							</div>
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="first" name="name"
									placeholder="비밀번호">
							</div>
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="last" name="name"
									placeholder="비밀번호 확인">
							</div>
							<div class="col-md-7 form-group p_star">
								<input type="text" class="form-control" id="add2" name="add2"
									placeholder="생년월일">
							</div>
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="number"
									name="number" placeholder="핸드폰">
							</div>
							<a href="#" class="genric-btn default radius"
								style="height: 35px;"><span>인증하기</span> </a>

							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="city" name="city"
									placeholder="닉네임">
							</div>
							<a href="#" class="genric-btn default radius"
								style="height: 35px;"><span>중복확인</span> </a>

						</form>

						<a href="/modify_info" class="genric-btn default radius"
							onclick="alert('회원 정보가 수정되었습니다.');"><span>수정하기</span> </a> <a id="withdraw"
							href="/withdraw" class="genric-btn default radius"
							style="float: right;"><span>회원 탈퇴</span> </a>
					</div>
				</div>
			</div>
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-12" style="margin-bottom: 30px;">
						<h3 class="mb-30 title_color">배송지 목록</h3>
						<a href="/write_addr" class="genric-btn default radius"
							style="float: right; margin-top: 0px;">새 배송지 추가 </a>
						<div class="row">
							<div class="col-lg-4">
								<div class="contact_info">
									<h4>배송지 1</h4>
									<br>
									<div class="info_item">
										<i class="fas fa-male"></i>
										<h6>이름</h6>
										<p>강민구</p>
									</div>
									<div class="info_item">
										<i class="lnr lnr-home"></i>
										<h6>주소</h6>
										<p>서울시 강남구 삼성동</p>
										<p>57-8 삼성 래미안 802호</p>
									</div>
									<div class="info_item">
										<i class="lnr lnr-phone-handset"></i>
										<h6>핸드폰</h6>
										<p>010-6565-3449</p>
									</div>
								</div>
								<a href="/modify_addr?num=1" class="genric-btn default radius"
									style="margin-top: 30px"><span>배송지1 변경</span> </a> <a href="#"
									onclick="alert('배송지 정보가 삭제되었습니다.');"
									class="genric-btn danger radius" style="margin-top: 30px"><span>배송지1
									삭제</span> </a>
							</div>
							<div class="col-lg-4">
								<div class="contact_info">
									<h4>배송지 2</h4>
									<br>
									<div class="info_item">
										<i class="fas fa-male"></i>
										<h6>이름</h6>
										<p>강민구</p>
									</div>
									<div class="info_item">
										<i class="lnr lnr-home"></i>
										<h6>주소</h6>
										<p>서울시 강남구 삼성동</p>
										<p>57-8 삼성 래미안 802호</p>
									</div>
									<div class="info_item">
										<i class="lnr lnr-phone-handset"></i>
										<h6>핸드폰</h6>
										<p>010-6565-3449</p>
									</div>
								</div>
								<a href="/modify_addr?num=2" class="genric-btn default radius"
									style="margin-top: 30px">배송지2 변경 </a> <a href="#"
									onclick="alert('배송지 정보가 삭제되었습니다.');"
									class="genric-btn danger radius" style="margin-top: 30px"><span>배송지2
									삭제</span> </a>
							</div>
							<div class="col-lg-4">
								<div class="contact_info">
									<h4>배송지 3</h4>
									<br>
									<div class="info_item">
										<i class="fas fa-male"></i>
										<h6>이름</h6>
										<p>강민구</p>
									</div>
									<div class="info_item">
										<i class="lnr lnr-home"></i>
										<h6>주소</h6>
										<p>서울시 강남구 삼성동</p>
										<p>57-8 삼성 래미안 802호</p>
									</div>
									<div class="info_item">
										<i class="lnr lnr-phone-handset"></i>
										<h6>핸드폰</h6>
										<p>010-6565-3449</p>
									</div>
								</div>
								<a href="/modify_addr?num=3" class="genric-btn default radius"
									style="margin-top: 30px">배송지3 변경 </a> <a href="#"
									onclick="alert('배송지 정보가 삭제되었습니다.');"
									class="genric-btn danger radius" style="margin-top: 30px"><span>배송지3
									삭제</span> </a>
							</div>
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

<%@ include file="../include/mypage_footer.jsp"%>