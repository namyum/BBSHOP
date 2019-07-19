<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ include file="../include/shopping_header.jsp" %>

<style>
@font-face{font-family:'NanumBarunpen';font-weight:normal;src:local(NanumBarunpen);src:url("resources/shoppingMall/fonts/nanumbarunpenR.eot");src:url("resources/shoppingMall/fonts/nanumbarunpenR.woff") format("woff"), url("resources/shoppingMall/fonts/nanumbarunpenR.woff2") format("woff2")}
@font-face{font-family:'NanumBarunpen';font-weight:bold;src:local(NanumBarunpen);src:url("resources/shoppingMall/fonts/nanumbarunpenB.eot");src:url("resources/shoppingMall/fonts/nanumbarunpenB.woff") format("woff"), url("resources/shoppingMall/fonts/nanumbarunpenB.woff2") format("woff2")}

body{font-family:NanumBarunpen, sans-serif}
/*
.d-flex{
	width:30%
}*/
</style>

	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>Shopping Cart</h2>
					<div class="page_link">
						<a href="/shopping_main">쇼핑몰</a>
						<a href="/cart">Cart</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Cart Area =================-->
	<section class="cart_area">
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th width="4%"><input type='checkbox' id='check_all'></th>
								<font><th style='text-align:center' scope="col">Product</th></font>
								<th scope="col" >Price</th>
								<th scope="col">Quantity</th>
								<th scope="col">Total</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
								<input type='checkbox' id='pd_check'>
								</td>
								<td>
									<div class="media">
										<div class="d-flex">
											<img src="resources/shoppingMall/img/0.jpeg" width=100% height=100% alt="">
										</div>
										<div class="media-body">
											<p>야구용품 1입니다.야구용품 1입니다.야구용품 1입니다.야구용품 1입니다.야구용품 1입니다.야구용품 1입니다.</p>
										</div>
									</div>
								</td>
								<td>
									<h5>$360.00</h5>
								</td>
								<td>
									<div class="product_count">
										<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
										 class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
										 class="reduced items-count" type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5>$720.00</h5>
								</td>
							</tr>
							<tr>
							<td>
								<input type='checkbox' id='pd_check'>
								</td>
								<td>
									<div class="media">
										<div class="d-flex">
											<img src="resources/shoppingMall/img/1.jpg" width=100% height=100% alt="">
										</div>
										<div class="media-body" style="float:left;">
											<p>야구용품 2입니다.야구용품 2입니다.야구용품 2입니다.야구용품 2입니다.야구용품 2입니다.야구용품 2입니다.</p>
										</div>
									</div>
								</td>
								<td>
									<h5>$360.00</h5>
								</td>
								<td>
								<!-- 메소드로 만들어서 위아래를 버튼을 받아서 바꿔주면될듯? vs코드에 대충만든거있는데 실행이안됨 -->
									<div class="product_count">
										<input type="text" name="qty" id="sst2" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst2'); var sst2 = result.value; if( !isNaN( sst2 )) result.value++;return false;"
										 class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst2'); var sst2 = result.value; if( !isNaN( sst2 ) &amp;&amp; sst2 > 0 ) result.value--;return false;"
										 class="reduced items-count" type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5>$720.00</h5>
								</td>
							</tr>
							<tr>
							<td>
								<input type='checkbox' id='pd_check'>
								</td>
								<td>
									<div class="media">
										<div class="d-flex">
											<img src="resources/shoppingMall/img/2.png" width=100% height=100% alt="">
										</div>
										<div class="media-body">
											<p>야구용품 3입니다.야구용품 3입니다.야구용품 3입니다.야구용품 3입니다.야구용품 3입니다.야구용품 3입니다.</p>
										</div>
									</div>
								</td>
								<td>
									<h5>$360.00</h5>
								</td>
								<td>
									<div class="product_count">
										<input type="text" name="qty" id="sst3" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst3'); var sst3 = result.value; if( !isNaN( sst3 )) result.value++;return false;"
										 class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst3'); var sst3 = result.value; if( !isNaN( sst3 ) &amp;&amp; sst3 > 0 ) result.value--;return false;"
										 class="reduced items-count" type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5>$720.00</h5>
								</td>
							</tr>
							<tr class="bottom_button">
								<td>
									
								</td>
								<td>

								</td>
								<td>

								</td>
								<td>
								</td>
								<td>
									<button class='btn btn-danger'>선택삭제</button>
								</td>
							</tr>
							<tr>
								<td>

								</td>
								<td>
								</td>
								<td>

								</td>
								<td>
									<h5>Subtotal</h5>
								</td>
								<td>
									<h5>$2160.00</h5>
								</td>
							</tr>
							<tr class="shipping_area">
								<td>

								</td>
								<td>
								</td>
								<td>

								</td>
								<td>
									<h5>배송비</h5>
								</td>
								<td>
									<div class="shipping_box">
										<ul class="list">
											<li class="active">
												<a href="#">배송료: 2500원</a>
											</li>
											<li >
												<a href="#">배송료:    원</a>
											</li>
										</ul>
										<h6>Calculate Shipping
											<i class="fa fa-caret-down" aria-hidden="true"></i>
										</h6>
									
									</div>
								</td>
							</tr>
							<tr class="out_button_area">
								<td>

								</td>
								<td>

								</td>
								<td>

								</td>
								<td>
								</td>
								<td>
								</td>
								<td>
								</td>
								<td>

								</td>
								<td></td>
								<td>
										<div class="checkout_btn_inner">
											<a class="gray_btn" href="/goods_list">계속 쇼핑하기</a>
											<a class="main_btn" href="/order">결제하기</a>
										</div>
									</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->


<%@ include file="../include/shopping_footer.jsp" %>