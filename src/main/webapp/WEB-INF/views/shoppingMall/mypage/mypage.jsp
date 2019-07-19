<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>

<style>
.col-md-4::before {
	position: absolute;
	left: 0;
	top: 10px;
	content: '';
	display: block;
	width: 1px;
	height: 73px;
	background: #e6e6e6;
}

.col-md-4:first-child::before {
	content: '';
}

</style>
<div class="container">
	<div class="section-top-border" style="display: flex;">
		<div class="col-md-6"
			style="float: left; text-align: center; background: #024137; padding: 50px; height: 300px;">
			<aside class="single_sidebar_widget author_widget"
				style="color: white;">
				<p></p>
				<h4>강민구</h4>
				<p>mangoJuiceDeli</p><br><br>
				<div class="br"></div>
			</aside>
			<div class="col-md-4" style="color: white;">
				<p>
					<i class="fas fa-money-check"></i>
				</p>
				<span>보유 쿠폰</span>
				<h4>1</h4>
			</div>
			<div class="test">
				<div class="col-md-4" style="color: white;">
					<p>
						<i class="fas fa-won-sign"></i>
					</p>
					<span>보유 적립금</span>
					<h4>￦ 5,000</h4>
				</div>
				<div class="col-md-4" style="color: white;">
					<p>
						<i class="fas fa-star"></i>
					</p>
					<span>보유 포인트</span>
					<h4>1,350 P</h4>
				</div>
			</div>
		</div>
		<!-- grade -->
		<div class="plan col-sm-3 col-md-3" style="float: left; height: 150px;">
			<div class="plan-name-gold">
				<p>
					<i class="fas fa-medal"></i>
				</p>
				<span>회원 등급</span>
				<h1 style="margin-top: 10px; color: #abae46;" >Gold</h1>
			</div>
			<div style="padding: 30px; background: #b7d2b1; height: 150px;">
				<p>
					<i class="far fa-credit-card"></i>
				</p>
				<h4>
					<span>멤버십 혜택 안내</span>
				</h4>
				<span><a href="#" style="color: #777777;">자세히 보기</a></span>
			</div>
		</div>
		<div class="col-sm-3 col-md-3 text-center"
			style="float: left; background: #dde8e1; height: 300px;">
			<div style="padding: 50px 40px 50px 40px;">
				<div class="blog_info text-center">
					<ul class="blog_meta list" style="clear: both">
						<li><a href="#"><span>mangoJuiceDeli</span> <i class="lnr lnr-user"></i>
						</a></li>
						<li><a href="#"><span>2019년 7월 6일 가입</span> <i class="lnr lnr-calendar-full"></i>
						</a></li>
						<li><a href="#"><span>누적 구매액</span> <i class="lnr lnr-eye"></i>
						</a></li>
						<li><a href="#"><span>다음 등급까지 남은 구매액</span> <i class="lnr lnr-bubble"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="section-top-border" style="background: #e4e4e4; padding-bottom : 20px;">
		<div class="areaBox">
			<div class="myOrderBox">
				<div class="myOrderCon">
					<div class="row"
						style="width: 1000px; margin: 0 auto; padding-left: 100px">
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							<span class="order_now">0</span><br> <a href="#"
								class="genric-btn default circle" style="clear: both;"><span>주문 완료</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							<span class="order_now">0</span><br> <a href="#"
								class="genric-btn default circle" style="clear: both;"><span>결제 완료</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							<span class="order_now">0</span><br> <a href="#"
								class="genric-btn default circle" style="clear: both;"><span>배송
								준비중</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							<span class="order_now">0</span><br> <a href="#"
								class="genric-btn default circle" style="clear: both;"><span>배송중</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							<span class="order_now">0</span><br> <a href="#"
								class="genric-btn default circle" style="clear: both;"><span>배송 완료</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section-top-border">
		<h3 style="padding: 15px">내 적립금 현황</h3>
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr style="background: #b5dab6; padding: 20px;">
						<th scope="col" style="text-align: center; padding: 20px; width: 15%">주문날짜</th>
						<th scope="col" style="text-align: center; padding: 20px;">주문내역</th>
						<th scope="col" style="text-align: center; padding: 20px; width: 15%">적립금</th>
						<th scope="col" style="text-align: center; padding: 20px; width: 15%">총 적립금</th>
					</tr>
				</thead>
				<tbody style="text-align: center;">
					<tr>
						<td>
							<h5>2019-06-07</h5>
						</td>
						<td>
							<h5>야구공</h5>
						</td>
						<td>
							<h5>+ ￦ 1,000</h5>
						</td>
						<td>
							<h5>￦ 3,500</h5>
						</td>
					</tr>
					<tr>
						<td>
							<h5>2019-06-07</h5>
						</td>
						<td>
							<h5>야구공</h5>
						</td>
						<td>
							<h5>+ ￦ 1,500</h5>
						</td>
						<td>
							<h5>￦ 2,500</h5>
						</td>
					</tr>
					<tr>
						<td>
							<h5>2019-06-07</h5>
						</td>
						<td>
							<h5>야구공</h5>
						</td>
						<td>
							<h5>+ ￦ 500</h5>
						</td>
						<td>
							<h5>￦ 2,000</h5>
						</td>
					</tr>
					<tr>
						<td>
							<h5>2019-06-07</h5>
						</td>
						<td>
							<h5>야구공</h5>
						</td>
						<td>
							<h5>+ ￦ 500</h5>
						</td>
						<td>
							<h5>￦ 1,500</h5>
						</td>
					</tr>
					<tr>
						<td>
							<h5>2019-06-07</h5>
						</td>
						<td>
							<h5>야구공</h5>
						</td>
						<td>
							<h5>+ ￦ 500</h5>
						</td>
						<td>
							<h5>￦ 1,000</h5>
						</td>
					</tr>
					<tr>
						<td>
							<h5>2019-06-07</h5>
						</td>
						<td>
							<h5>야구공</h5>
						</td>
						<td>
							<h5>+ ￦ 500</h5>
						</td>
						<td>
							<h5>￦ 500</h5>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="text-center">
				<ul class="pagination">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/mypage_footer.jsp"%>