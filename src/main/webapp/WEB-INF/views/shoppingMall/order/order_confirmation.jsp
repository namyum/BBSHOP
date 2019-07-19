<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../include/shopping_header.jsp" %>

<style>
body {
	font-weight: bold;
	font-size: 17px;
}

.order_details_table .table thead tr th {
	font-weight: bold;
	font-size: 17px;
}

.order_d_inner .details_item .list li a{
	font-size: 17px;
}
</style>
<body>
	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center" style="background-color:#70e270;">
			<div class="container">
				<div class="banner_content text-center">
					<h2 style="color:white;">주문확인</h2>
					<div class="page_link">
						<a href="/shopping_main" style="color:white;">쇼핑몰</a> <a href="/order_confirmation" style="color:white;">주문 확인</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Order Details Area =================-->
	<section class="order_details p_120" style="padding-top:0px;">
		<div class="container">
			<p class="title_confirmation" style="font-weight:bold; font-size:20px">♥주문 완료되었습니다. 감사합니다♥</p>
			<div class="row order_d_inner">
				<div class="col-lg-4" style="margin-left:17%;">
					<div class="details_item" style="background-color:#e0f0e3;">
						<h4>주문 정보</h4>
						<ul class="list">
							<li>
								<a href="#none">
									<span>주문 번호</span> : 60235</a>
							</li>
							<li>
								<a href="#none">
									<span>주문 날짜</span> : 2019/07/11</a>
							</li>
							<li>
								<a href="#none">
									<span>총 결제금액</span> : 835,000원</a>
							</li>
							<li>
								<a href="#none">
									<span>결제 방식</span> : 카카오페이</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="details_item" style="background-color:#b7d2b1; height:162px;">
						<h4>배송 정보</h4>
						<ul class="list">
							<li>
								<a href="#none">
									<span>우편번호</span> : 123-456</a>
							</li>
							<li>
								<a href="#none">
									<span>주소</span> : 주소시 주소구 주소동 123</a>
							</li>
							<li>
								<a href="#none">
									<span>상세주소</span> : 1234호</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="order_details_table">
				<h2 style="text-align:center; font-weight:bold;">주문 상세</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col" style="width:500px;">상품명</th>
								<th scope="col" style="text-align:center;">수량</th>
								<th scope="col" style="text-align:center;width:130px;">합계</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<p>드마리니 펑고델릭 메이플 우드 배트</p>
								</td>
								<td>
									<h5 style="text-align:center;">02</h5>
								</td>
								<td>
									<p style="text-align:center;">200,000원</p>
								</td>
							</tr>
							<tr>
								<td>
									<p>윌슨 2019 KOREA A2K GM 이대호 12.25" 1루수 미트</p>
								</td>
								<td>
									<h5 style="text-align:center;">01</h5>
								</td>
								<td>
									<p style="text-align:center;">560,000원</p>
								</td>
							</tr>
							<tr>
								<td>
									<p>이보쉴드 럭스 배팅 헬멧</p>
								</td>
								<td>
									<h5 style="text-align:center;">01</h5>
								</td>
								<td>
									<p style="text-align:center;">75,000원</p>
								</td>
							</tr>
							<tr>
								<td>
									<p>총 상품 금액</p>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p style="text-align:center;">835,000원</p>
								</td>
							</tr>
							<tr>
								<td>
									<p>배송비(5만원 이상 구매 시 무료)</p>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p style="text-align:center;">0원</p>
								</td>
							</tr>
							<tr>
								<td>
									<p>총 결제금액</p>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p style="text-align:center;">835,000원</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Order Details Area =================-->

<%@ include file="../include/shopping_footer.jsp" %>

</body>
</html>