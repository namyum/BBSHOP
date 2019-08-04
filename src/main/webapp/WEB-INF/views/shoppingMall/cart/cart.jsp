<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ include file="../include/shopping_header.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="com.bbshop.bit.cart.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%
List<GoodsVO> goodsList= (List<GoodsVO>)request.getAttribute("goodsList");
List<Cart_PDVO> cartList= (List<Cart_PDVO>)request.getAttribute("cartList");
%>


<style>
@font-face{font-family:'NanumBarunpen';font-weight:normal;src:local(NanumBarunpen);src:url("resources/shoppingMall/fonts/nanumbarunpenR.eot");src:url("resources/shoppingMall/fonts/nanumbarunpenR.woff") format("woff"), url("resources/shoppingMall/fonts/nanumbarunpenR.woff2") format("woff2")}
@font-face{font-family:'NanumBarunpen';font-weight:bold;src:local(NanumBarunpen);src:url("resources/shoppingMall/fonts/nanumbarunpenB.eot");src:url("resources/shoppingMall/fonts/nanumbarunpenB.woff") format("woff"), url("resources/shoppingMall/fonts/nanumbarunpenB.woff2") format("woff2")}

body{font-family:NanumBarunpen, sans-serif}
/*
.d-flex{
	width:30%
}*/
</style>
	<!-- 1. vo를 만들자  (완료)
		 2. 전체 선택을 누르면 상품이 전체다 뜨게하자.
		 3. 퀀티티의 양을 늘리면 토탈 값이 올라가자
		 4. 토탈이 올라가면 서브토탈이 올라가자.
		 5. 금액이 일정이상 올라가면 배송료를 무료로 주자.
		 6. 물품의 사진을 받아오자.(완료)
		 7.해당 상품이 삭제되면 삭제되는 controller를 써서 삭제를 하자.
		 
		
		 
	-->
	<script>
	$(document).ready(function(){
		//전체 체크박스 클릭시 전체체크 혹은 전체해제 
		$("#check_all").click(function(){
			if($("#check_all").is(":checked")){
				$(".check").prop("checked" , true);
			}
			else{
				$(".check").prop("checked", false);
				
			}
			
			
		});
		
		//하위 항목중 하나라도 체크가 풀릴시 전체 체크도 풀려야한다.
		$(".check").click(function(){
			if($("input[class='check']:checked").length<=4){
				$("#check_all").prop("checked",false);
				
			}else{
				$("#check_all").prop("checked",true);
			}
		
		
		});
			
	});
		
	</script>
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
								<th width="4%"><input type='checkbox' class='check' id='check_all'></th>
								<th scope="col" >GoodsNum</th>
								<th scope="col" style="width:4%" >Photo</th>
								<th style='text-align:center' scope="col">Product</th>
								<th scope="col" >Price</th>
								<th scope="col" >Savings</th>
								<th scope="col">Quantity</th>
								<th scope="col">Total</th>
							</tr>
						</thead>
						<tbody>
						
						<c:forEach var="cart" items="${cartList}" varStatus="status">
				
							<tr>
								<td>
								<input type='checkbox' class='check' id='pd_check'>
								</td>
								
								<td><h5>${goodsList[status.index].GOODS_NUM}</h5>
								</td>
								<td>
											<img src="<c:out value='${goodsList[status.index].MAIN_IMG}'/>" style="width:100%; height:50%" alt="">
								</td>
								<td>
											<p><c:out value="${goodsList[status.index].NAME}"/></p>
								</td>
								<td>
									<h5 id=price${status.index}><c:out value="${cart.PRICE}"/></h5>
								</td>
								<td>
								<h5><c:out value="${cart.SAVINGS}"/></h5>
								</td>
								
								<td>
									<div class="product_count">
										<input type="text" name="qty" id="sst${status.index}" value="${cart.QNTTY }" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst${status.index}'); var sst = result.value; if( !isNaN( sst )) result.value++; return false;"
										 class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst${status.index}'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 1 ) result.value--;return false;"
										 class="reduced items-count" type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5 id="totalPrice${status.index}"></h5>
								</td>
							</tr>
							</c:forEach>
							<tr class="shipping_area">
								<td>

								</td>
								<td>
								</td>
								<td></td>
								<td></td>
								<td></td>
								
								<td>

								</td>
								<td>
									<h5>배송비</h5>
								</td>
								
								
								
								
								<td>
									<div class="shipping_box">
										<ul class="list">
											<li class="active">
												<a href="#">2500원</a>
											</li>
											<li >
												<a href="#">   0원</a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
							<tr>
								<td>

								</td>
								<td>
								</td>
								<td></td>
								<td></td>
								<td></td>
								<td>

								</td>
								<td>
									<h5>Total:</h5>
								</td>
								<td>
									<h5>$2160.00</h5>
								</td>
							</tr>
								<table align="center">
							<tr class="out_button_area">
								<td style="text-align:center"><div align="center" class="checkout_btn_inner">
											<a class="main_btn" href="/order">결제하기</a>
											<a class="main_btn" href="/order">선택삭제</a>
											<a class="gray_btn" href="/goods_list">계속 쇼핑하기</a>
											
										</div>
										</td>
							</tr>
								</table>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->


<%@ include file="../include/shopping_footer.jsp" %>