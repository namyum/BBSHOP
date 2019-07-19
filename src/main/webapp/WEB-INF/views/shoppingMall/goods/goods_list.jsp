<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="../include/shopping_header.jsp" %>


<style> /*여긴 list의 style*/
/* 상품 상단 바(product_top_bar) - 오른쪽 (가격 bar) */
.right_dorp {
	display: flex;
	margin-left: auto;
	width: 330px;
}
.p_filter_widgets {
	width: 220px;
	padding-top: 10px;
	padding-bottom: 0px;
	padding-left: 15px;
	padding-right: 15px;
}
.img-fluid {
	width: 250px;	/* img width : 200px or 250px로 통일  */
}
.page-link {		/* 페이지번호 border 없애기 */
	border-style: none;
}
.widgets_inner {	/* price bar */
	width: 280px;
}
#amount {
	width: 190px;
}
*, h4, h5 {
	font-weight : bold;
}
</style>

	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>글러브</h2>
					<div class="page_link">
						<a href="/shopping_main">쇼핑몰</a>
						<!-- 카테고리 값 넣어주세요 -->
						<a href="/goods_list">카테고리</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Category Product Area =================-->
	<section class="cat_product_area">
		<div class="container-fluid">
			<div class="row flex-row-reverse">
				<div class="col-lg-12">
					<div class="product_top_bar">
						<div class="left_dorp">
							<!-- top00 : 정렬 -->
							<select class="sorting">
								<option id="new" value="new">신상품</option>
								<option id="best" value="best">인기상품</option>
								<option id="low-price" value="low-price">낮은가격</option>
								<option id="high-price" value="high-price">높은가격</option>
							</select>
						</div>
						<div class="right_dorp ml-auto">
								<h4>Price</h4>
							<div class="widgets_inner p_filter_widgets">
								<div class="range_item">
									<div id="slider-range"></div>
									<div class="row m0">
										<label for="amount" style="visibility:hidden;">Price:</label>
										<input type="text" id="amount" readonly style="text-align:center; font-size:15px; background-color:#f9f9ff;">
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="latest_product_inner row">
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-6.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>글러브1</h4>
								</a>
								<h5>100,000원</h5>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-7.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>글러브2</h4>
								</a>
								<h5>200,000원</h5>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-8.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>배트1</h4>
								</a>
								<h5>150,000원</h5>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-9.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>배트2</h4>
								</a>
								<h5>15,000원</h5>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-10.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>야구화1</h4>
								</a>
								<h5>70,000원</h5>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-6.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>Long Sleeve TShirt</h4>
								</a>
								<h5>$150.00</h5>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-7.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>Long Sleeve TShirt</h4>
								</a>
								<h5>$150.00</h5>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="resources/shoppingMall/img/product/feature-product/f-p-8.jpg" alt=""></a>
								</div>
								<a href="#">
									<h4>Long Sleeve TShirt</h4>
								</a>
								<h5>$150.00</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div>&nbsp;</div>
			<div>&nbsp;</div>
			<div>&nbsp;</div>

		<!-- 페이지 출력 - script 항상 같이 따라가야함 -->
		<div class="row">
			<nav class="cat_page mx-auto" aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item page-item-left"><a class="page-link"
						href="#"> <i class="fa fa-chevron-left" aria-hidden="true"></i>
					</a></li>
					<li class="page-item active"><a class="page-link" href="#">01</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">02</a></li>
					<li class="page-item"><a class="page-link" href="#">03</a></li>
					<li class="page-item"><a class="page-link" href="#">04</a></li>
					<li class="page-item"><a class="page-link" href="#">05</a></li>
					<li class="page-item page-item-right"><a class="page-link"
						href="#"> <i class="fa fa-chevron-right" aria-hidden="true"></i>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
	</section>
	<!--================End Category Product Area =================-->
	
	<script>
	// 페이지 active 처리
	$(document).ready(function() {
		var page_item = $('.page-item');
		
		$('.page-item').click(function() {
			$('.page-item').removeClass("active");
			$(this).addClass("active");
		});
		
		$('.page-item-left').click(function() {
			$('.page-item').removeClass("active");
			page_item[5].classList.add("active");
		})
		$('.page-item-right').click(function() {
			$('.page-item').removeClass("active");
			page_item[1].classList.add("active");
		})
	});
	</script>

<%@ include file="../include/shopping_footer.jsp" %>