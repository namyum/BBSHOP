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
#amount
{
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
						<a href="/goods_list.do?category=${categoryInt }">${categoryString }</a>
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
							<select class="sorting" onchange="goodsList_Ajax()">
								<option id="new" 		value="new">신상품</option>
								<option id="best" 		value="best">인기상품</option>
								<option id="lowPrice" 	value="lowPrice">낮은가격</option>
								<option id="highPrice" 	value="highPrice">높은가격</option>
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
										<input type="text" id="amount" readonly style="text-align:center; font-size:15px; background-color:#f9f9ff; display:none">
										<input type="text" id="min_amount" readonly style="text-align:center; font-size:17px; background-color:#f9f9ff;">
										<input type="text" value="~" readonly style="width:15px; text-align:center; font-size:15px; background-color:#f9f9ff;">
										<input type="text" id="max_amount" readonly style="text-align:center; font-size:17px; background-color:#f9f9ff;">
									</div>
								</div>
							</div>
						</div>
						<!-- end price bar -->
 					</div>
					
					<div class="latest_product_inner row">
					
						<!-- 상품 출력 
						<c:forEach items="${goodsList }" var="goods">
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<a href="/goods_info?goods_num=${goods.goods_num }"><img class="img-fluid" src="<c:out value='${goods.main_img }' />" alt=""></a>
								</div>
								<a href="#">
									<h4><c:out value="${goods.name }" /></h4>
								</a>
								<h5><c:out value="${goods.price }" />원</h5>
							</div>
						</div>
						</c:forEach>
						<!-- end 상품 출력 -->
						
						<script>
						goodsList_Ajax();
						
						
						function goodsList_Ajax() {
							
							/*
							var min_amount = $('#min_amount').val();
							var max_amount = $('#max_amount').val();
							 
							if(min_amount === "")
								min_amount = "1000";
							if(max_amount === "")
								max_amount = "500000";
						
							var goodsList = {
								"pageNum" 	: ${pageMaker.pagingVO.pageNum},
								"amount"	: ${pageMaker.pagingVO.amount},
								"category"	: ${categoryInt},
								"sorting"	: $('select.sorting option:selected').val(),
								"min_amount": min_amount,
								"max_amount": max_amount
							};
							
							*/
							
							var pageNum = ${pageMaker.pagingVO.pageNum};
							var amount = ${pageMaker.pagingVO.amount};
							var category = ${categoryInt};
							var sorting = $('select.sorting option:selected').val();
							var min_amount = $('#min_amount').val();
							var max_amount = $('#max_amount').val();
							 
							
							if(min_amount === "")
								min_amount = "1000";
							if(max_amount === "")
								max_amount = "500000";
							
							
							// 상품 목록이 들어갈 div 클래스 이름 - 초기화
							$('.latest_product_inner').empty();
							
							$.ajax({
								url : "/getGoodsList_Ajax.do?pageNum=" + pageNum + "&&amount=" + amount + "&&category=" + category +
										"&&sorting=" + sorting + "&&min_amount=" + min_amount + "&&max_amount=" + max_amount,
								type : 'GET',
//								data : JSON.stringify(goodsList),
								dataType: 'json',
								contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
								success : function(goodsList) {
									$.each(goodsList, function(index, goods) {
										var output = "";
										output += "<div class='col-lg-3 col-md-3 col-sm-6'>";
										output += "<div class='f_p_item'>";
										output += "<div class='f_p_img'>";
										output += "<a href='goods_info.do?goods_num=" + goods.goods_num + "&&category=" + goods.category +"'>";
										output += "<img class='img-fluid' src='" + goods.main_img +"' alt=''></a></div>";
										output += "<a href='#'><h4>" + goods.name + "</h4></a>";
										output += "<h5>" + goods.price + "원</h5></div></div>";
										console.log("output : " + output);
										$('.latest_product_inner').append(output);
										

									});
								},
								error : function() {alert('ajax 통신 실패!');}
							});
						}
						</script>
						
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
					<c:if test="${pageMaker.prev }">
						<li class="page-item page-item-left"><a class="page-link"
							href="${pageMaker.startPage-1 }"><i class="fa fa-chevron-left" aria-hidden="true"></i>
						</a></li>
					</c:if>
					
					
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="page-item  ${pageMaker.pagingVO.pageNum == num? 'active':''}">
							<a class="page-link" href="${num }">${num }</a></li>
					</c:forEach>
					
					<!-- 
					<li class="page-item"><a class="page-link" href="#">02</a></li>
					<li class="page-item"><a class="page-link" href="#">03</a></li>
					<li class="page-item"><a class="page-link" href="#">04</a></li>
					<li class="page-item"><a class="page-link" href="#">05</a></li>
					-->
					
					<c:if test="${pageMaker.next }">
						<li class="page-item page-item-right"><a class="page-link"
							href="${pageMaker.endPage+1 }"> <i class="fa fa-chevron-right" aria-hidden="true"></i>
						</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
		
		<form id="actionForm">
			<input type="hidden" name="category" value="${categoryInt }">
			<input type="hidden" name="pageNum" value="${pageMaker.pagingVO.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.pagingVO.amount }">
			<input type="hidden" name="sorting" value="">
			<input type="hidden" name="min_amount" value="">
			<input type="hidden" name="max_amount" value="">
		</form>
	</div>
	</section>
	<!--================End Category Product Area =================-->

	<script>
	$(document).ready(function() {
		/*
		// paging
		var actionForm = $("#actionForm");
		
		var sorting = $('select.sorting option:selected').val();
		var min_amount = $('#min_amount').val();
		var max_amount = $('#max_amount').val();
			
		
		$(".page-item a").on("click", function(e) {
			e.preventDefault();	// a태그를 클릭해도 페이지이동이 없도록,
			console.log('click');
			alert("페이지버튼 눌렀다");
			
			goodsList_Ajax();
			// form 태그 내 pageNum값은 href 속성값으로 변경
			//actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			//actionForm.find("input[name='sorting']").val(sorting);
			//actionForm.find("input[name='min_amount']").val(min_amount);
			//actionForm.find("input[name='max_amount']").val(max_amount);

		});
		
		*/
		
		/*
		// 페이지 active 처리
		var page_item = $('.page-item');
		
		$('.page-item').click(function() {
			$('.page-item').removeClass("active");
			$(this).addClass("active");
		});
		
		$('.page-item-left').click(function() {
			$('.page-item').removeClass("active");
			page_item[5].classList.add("active");
		});
		$('.page-item-right').click(function() {
			$('.page-item').removeClass("active");
			page_item[1].classList.add("active");
			
		});
		*/
		
		// price slider - 변경할 때,
		$('span.ui-slider-handle.ui-corner-all.ui-state-default').click(function() {goodsList_Ajax();});
	});
	</script>

<%@ include file="../include/shopping_footer.jsp" %>