<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
					<h2>${categoryString }</h2>	<!-- 카테고리(String) 출력 -->
					<div class="page_link">
						<a href="/shopping_main">쇼핑몰</a>
						<!-- url에 카테고리값 전달, view에 카테고리(String) 출력 -->
						<a href="/goods_list?category=${categoryInt }">${categoryString }</a>
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
						<!-- 정렬 -->
						<div class="left_dorp">
							<select class="sorting" onchange="goGoodsList(this.value)">
								<option id="new" 	value="new">신상품</option>
								<option id="best" 	value="best">인기상품</option>
								<option id="lowPrice" 	value="lowPrice">낮은가격</option>
								<option id="highPrice" value="highPrice">높은가격</option>
							</select>
						</div>
						<!-- end 정렬 -->
						<!-- price bar -->
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
						<!-- end price bar -->
					</div>
					
					<div class="latest_product_inner row">
					
						<!-- 상품 출력 -->
						<c:forEach items="${goodsList }" var="goods">
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info"><img class="img-fluid" src="<c:out value='${goods.main_img }' />" alt=""></a>
								</div>
								<a href="#">
									<h4><c:out value="${goods.name }" /></h4>
								</a>
								<h5><c:out value="${goods.price }" />원</h5>
							</div>
						</div>
						</c:forEach>
						<!-- end 상품 출력 -->

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
	
	<script>
	function goGoodsList(sorting) {
		var url = "/goods_list?category=${categoryInt}&&sorting=" + sorting;
		
		location.replace(url);
	}
	
	</script>

<%@ include file="../include/shopping_footer.jsp" %>