<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

	<!--================ start footer Area  =================-->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6 class="footer_title">About Us</h6>
						 <p>야구용품 쇼핑을 넘어 야구를 사랑하는 사람들과 함께 이야기 할 수 있는 공간을 만들어갑니다.</p>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6 class="footer_title">Newsletter</h6>
						 <p>MIZUNO 브랜드의 새로운 제품이 입고되었습니다. (8/6)</p>
					</div>
				</div>
				
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget instafeed">
						<h6 class="footer_title">Instagram Feed</h6>
						<ul class="list instafeed d-flex flex-wrap">
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-01.jpg" alt="">
							</li>
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-02.jpg" alt="">
							</li>
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-03.jpg" alt="">
							</li>
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-04.jpg" alt="">
							</li>
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-05.jpg" alt="">
							</li>
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-06.jpg" alt="">
							</li>
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-07.jpg" alt="">
							</li>
							<li>
								<img src="resources/shoppingMall/img/instagram/Image-08.jpg" alt="">
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6" style="padding-left : 50px;">
					<div class="single-footer-widget f_social_wd">
						<h6 class="footer_title">Follow Us</h6>
						<p>Let us be social</p>
						<div class="f_social">
							<a href="#">
								<i class="fa fa-facebook"></i>
							</a>
							<a href="#">
								<i class="fa fa-twitter"></i>
							</a>
							<a href="#">
								<i class="fa fa-dribbble"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row footer-bottom d-flex justify-content-between align-items-center" style="font-weight:bold;">
       			<p class="col-lg-12 footer-text text-center">
            	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
           			Copyright &copy;
            		<script>
               			document.write(new Date().getFullYear());
            		</script>
            		All rights reserved by BitCamp
         		</p>
     		</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->

<script>
<!-- ================ 모달 & 장바구니 js ====================== -->
	var search_Modal = document.getElementById('search');
	var searchBig_Modal = document.getElementById('searchBig');

	var span1 = document.getElementsByClassName("close")[0];
	var span2 = document.getElementsByClassName("close")[1];

	var curtain = document.getElementById('curtain');
	var miniCart = document.getElementById('miniCart');
	
	var cart_btn = document.getElementById('cart_btn');
	var view_cart_btn = document.getElementById('view_cart_btn');
	var info_cart_btn = document.getElementById('info_cart_btn');

	//search_btn 눌렀을 때,
	$('#search_btn').click(function() {
		search_Modal.style.display = "block";
	})
	//searchBig_btn 눌렀을 때,
	$('#searchBig_btn').click(function() {
		searchBig_Modal.style.display = "block";
	})

	//x버튼 눌렀을 때, 모달창 끄기
	span1.onclick = function() {
		search_Modal.style.display = "none";
	}
	span2.onclick = function() {
		searchBig_Modal.style.display = "none";
	}

	//장바구니 아이콘 눌렀을 때, miniCart나오기
	cart_btn.onclick = function() {
		curtain.style.display = "block";
		miniCart.style.width = "350px";
	}
	//페이지이동 : viewcart 버튼 눌렀을 때, 
	view_cart_btn.onclick = function() {
		curtain.style.display = "none";
		miniCart.style.width = "0";
		location.href="/cart";
	}
	//상품info에서 장바구니 버튼 눌렀을 때, miniCart나오기
	info_cart_btn.onclick = function() {
		curtain.style.display = "block";
		miniCart.style.width = "350px";
	}

	function openCart() {
		curtain.style.display = "block";
		miniCart.style.width = "350px";
	}
	function closeCart() {
		curtain.style.display = "none";
		miniCart.style.width = "0";
	}

	window.onclick = function(event) {
		if (event.target == search_Modal) {
			search_Modal.style.display = "none";
		} else if (event.target == searchBig_Modal) {
			searchBig_Modal.style.display = "none";
		} else if (event.target == curtain) {
			curtain.style.display = "none";
			miniCart.style.width = "0";
		}
	}
	
</script>
<!--================ 모달 & 장바구니 js====================== -->

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


<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="resources/shoppingMall/js/jquery-3.2.1.min.js"></script>
	<script src="resources/shoppingMall/js/popper.js"></script>
	<script src="resources/shoppingMall/js/bootstrap.min.js"></script>
	<script src="resources/shoppingMall/js/stellar.js"></script>
	<script src="resources/shoppingMall/vendors/lightbox/simpleLightbox.min.js"></script>
	<script src="resources/shoppingMall/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="resources/shoppingMall/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="resources/shoppingMall/vendors/isotope/isotope-min.js"></script>
	<script src="resources/shoppingMall/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/shoppingMall/js/jquery.ajaxchimp.min.js"></script>
	<script src="resources/shoppingMall/js/mail-script.js"></script>
	<script src="resources/shoppingMall/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="resources/shoppingMall/vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="resources/shoppingMall/vendors/counter-up/jquery.counterup.js"></script>
	<script src="resources/shoppingMall/js/theme.js"></script>
</body>

</html>