<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="../include/shopping_header.jsp" %>

<style>
.tab-content>#home {
	text-align: center;
}

.form-group>#file {
	border-style: none;
	padding-left: 0px;
}

.fa-star:before {

	color: rgb(251, 214, 0);
}

.main_btn {
	width: 150px;
}

.option {
	padding-top: 8px;
}

.product_image_area {
	padding-top: 0px;
	font-weight: bold;
}

.s_product_text h3 {
	font-size: 30px;
	font-weight: bold;
}

.s_product_text h2 {
	font-weight: bold;
}

.s_product_img img {
	width: 500px !important;
	height: 500px;
}

a#default-select.default-select {
	display: none;
}

#qna_Modal, #review_Modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 100; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}
/* 일반 검색 모달창 내용 */
.qna_Content, .review_Content {
	background-color: #fefefe;
	margin: 8% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}
#qna_Modal, #review_Modal {
	opacity: 0.9;
}
</style>


	<!--================Home Banner Area =================-->	
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>상품 정보 페이지</h2>
					<div class="page_link">
						<a href="/shopping_main">쇼핑몰</a>		
						<a href="/goods_list">카테고리</a>	<!-- 값 넣어주기-->
						<a href="/goods_info">상품명</a>	<!-- 값 넣어주기 -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<!-- 상품 이미지 부분 -->
				<div class="col-lg-6">
					<div class="s_product_img">
						<img class="d-block w-100" src="resources/shoppingMall/img/product/single-product/s-product-6.JPG" alt="">
					</div>
				</div>
				
				<!-- 상품정보, 옵션, 구매/장바구니 버튼 -->
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">	
						<!-- 상품명 -->
						<h3 id="product_name">모리모토 VVIP PL-011 오가웹</h3>
						<!-- 상품가격 -->
						<h2>179,000원</h2>
						<!-- 옵션들 -->
						<ul class="list">
							<li>
								<!-- 카테고리 값 넣어주세요, 클릭 시 페이지 이동--> 
								<!-- 카테고리 값 읽기 : document.getElementById("category").innerHTML -->
								<a class="active" href="/goods_list">
									<span>카테고리</span><span style="padding-left:20px; color:red;" id="category">유니폼</span>
								</a>
							</li>
							<li>&nbsp;</li>
							<!-- select된 값 읽기  var value = $('#globe_hand option:selected').val(); -->
							<li>	<!-- 글러브 옵션 -->
								<a class="default-select globe" id="default-select" href="#none">
									<!-- 옵션1 -->
									<label for="globe_hand"><span class="option">좌 / 우</span></label>
									<select id="globe_hand">
										<option value="left">좌투(오른손착용)</option>
										<option value="right">우투(왼손착용)</option>
									</select>
								</a>
							</li>
							<li>
								<a class="default-select globe" id="default-select" href="#none">
									<!-- 옵션2 -->
									<label for="globe_tame"><span class="option">길들이기</span></label>
									<select id="globe_tame">
										<option value="false">선택안함</option>
										<option value="true">볼집+각잡기(+15000)</option>
									</select>
								</a>
							</li>
							<li>	<!-- 배트 옵션 -->
								<a class="default-select bat" id="default-select" href="#none">
									<label for="bat_size"><span class="option">규격</span></label>
									<select id="bat_size">
										<option value="33">33인치</option>
										<option value="32">32인치</option>
									</select>
								</a>
							</li>
							<li>	<!-- 유니폼 옵션 -->
								<a class="default-select uniform" id="default-select" href="#none">
									<label for="uniform_size"><span class="option">사이즈</span></label>
									<select id="uniform_size">
										<option value="85">85</option>
										<option value="90">90</option>
										<option value="95">95</option>
										<option value="100">100</option>
										<option value="105">105</option>
									</select>
								</a>
							</li>
							<li>	<!-- 야구화 옵션 -->
								<a class="default-select shoes" id="default-select" href="#none">
									<label for="shoes_size"><span class="option">사이즈</span></label>
									<select id="shoes_size">
										<option value="260">260</option>
										<option value="270">270</option>
										<option value="280">280</option>
									</select>
								</a>
							</li>
							<li>
								<a class="default-select shoes" id="default-select" href="#none">
									<label for="shoes_spike"><span class="option">사이즈</span></label>
									<select id="shoes_spike">
										<option value="false">선택안함</option>
										<option value="true">스파이크(+5000)</option>
									</select>
								</a>
							</li>
							<li>	<!-- 야구공 옵션 -->
								<a class="default-select ball" id="default-select" href="#none">
									<label for="ball_count"><span class="option">판매단위</span></label>
									<select id="ball_count">
										<option value="1">낱개</option>
										<option value="12">12개(1타스)</option>
									</select>
								</a>
							</li>
						</ul>
						<p>
							적립금 : 1790원 <br>
							배송비 : 2500원 (5만원 이상 구매 시, 무료배송)
						</p>
						<!-- 상품 수량 체크 -->
						<div class="product_count">
							<label for="qty">수  량  :</label>
							<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
							 class="increase items-count" type="button">
								<i class="lnr lnr-chevron-up"></i>
							</button>
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) && sst > 1 ) result.value--; return false;"
							 class="reduced items-count" type="button">
								<i class="lnr lnr-chevron-down"></i>
							</button>
						</div>
						<div class="card_area" style="width:400px;">
							<a class="main_btn" href="/order">구매하기</a>
							<a class="main_btn" id="info_cart_btn" href="#none">장바구니</a>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">상세설명</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">상품 정보</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">상품 Q&A</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">상품 후기</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<!-- #home : 상세 설명 -->
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<!-- DB, 사진3번째컬럼, 상세사진 긴~거 띄우기 -->
				  	<img class="bbshop-info" src="resources/shoppingMall/img/product/single-product/s-product-5-info.jpg" alt="">
				</div>
				
				<!-- #profile : 상품 정보 (객체의 속성들? 다 설정) -->
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5>카테고리</h5>
									</td>
									<td>
										<h5>글러브</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>상품번호</h5>
									</td>
									<td>
										<h5>20190704</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>상품명</h5>
									</td>
									<td>
										<h5>모리모토 VVIP PL-011 오가웹</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>제조사</h5>
									</td>
									<td>
										<h5>모리모토</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>좌/우</h5>
									</td>
									<td>
										<h5>좌투(오른손착용), 우투(왼손착용)</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>포지션</h5>
									</td>
									<td>
										<h5>투수, 올라운드</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>색상</h5>
									</td>
									<td>
										<h5>black</h5>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<!-- #contact : 상품 Q&A -->
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="row">
						<div class="col-lg-12">
							<div class="comment_list">
								<div class="review_item">
									<div class="media">
								<!--	<div class="d-flex">
											<img src="resources/shoppingMall/img/product/single-product/review-1.png" alt="">
										</div>	  우리 db에 회원이미지는 없으니까?	-->
										<div class="media-body">
											<h4>1(문의번호) 상품 크기 문의합니다.(제목)</h4>
											<h5>남냠남(닉네임) &emsp;12th Feb, 2017 at 05:56 pm(시간)</h5>
									<!--	<a class="reply_btn" href="#">Reply</a>	-->
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
								</div>
								<div class="review_item reply">
									<div class="media">
							<!--		<div class="d-flex">
											<img src="resources/shoppingMall/img/product/single-product/review-2.png" alt="">
										</div>		-->
										<div class="media-body">
											<h4>Re : 상품 크기 문의합니다.(제목)</h4>
											<h5>관리자(닉네임) &emsp; 12th Feb, 2017 at 05:56 pm(시간)</h5>
									<!--	<a class="reply_btn" href="#">Reply</a>	-->
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
							<!--		<div class="d-flex">
											<img src="resources/shoppingMall/img/product/single-product/review-3.png" alt="">
										</div>	-->
										<div class="media-body">
											<h4>2. 재입고 문의</h4>
											<h5>이지수달 &emsp; 12th Feb, 2017 at 05:56 pm</h5>
											<!--	<a class="reply_btn" href="#">Reply</a>	-->
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
								</div>
								<!-- Q&A 작성버튼 -->
								<div class="col-md-12 text-right">
									<button class="btn submit_btn" id="qna_btn">상품 문의 등록</button>
								</div>
							</div>
						</div>
						
		<!-- ==================== qna 작성 모달 ==================== -->
						<div id="qna_Modal">
							<div class="qna_Content review_box ">
								<span class="modal_close close">&times;</span>	<!-- X버튼 -->
								<h4 align="center">Q&A 작성하기</h4>
								<form class="row contact_form" action="" method="post" id="contactForm" novalidate="novalidate">
									<!-- Q&A 제목 -->
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="title" name="title" placeholder="Q&A 제목">
										</div>
									</div>
									<!-- Q&A 내용 -->
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="message" id="message" rows="1" placeholder="Q&A 내용"></textarea>
										</div>
									</div>
									<!-- Q&A 첨부파일 -->
									<div class="col-md-12">
										<div class="form-group">
											<input type="FILE" class="form-control" id="file" name="file" placeholder="첨부파일">
										</div>
									</div>
									<!-- Q&A 등록(submit)버튼 -->
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="btn submit_btn">등록하기</button>
									</div>
								</form>
							</div>
						</div>
		<!-- ==================== qna 작성 모달 ==================== -->
					</div>
				</div>
				
				<!-- #review : 상품 후기 -->
				<div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-12">
						<div class="row total_rate">
							<div class="col-3">
								<div class="single-element-widget">
									<h3 class="mb-30 title_color" style="padding-left:30px;">별점 별 보기</h3>
									<div class="default-select" id="default-select">
										<select>
											<option value="star5">★★★★★</option>
											<option value="star4">★★★★☆</option>
											<option value="star3">★★★☆☆</option>
											<option value="star2">★★☆☆☆</option>
											<option value="star1">★☆☆☆☆</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="box_total">
									<h5>평균 별점</h5>
									<h4>5.0</h4>
									<!-- 평균값 입력 -->
								</div>
							</div>
							<div class="col-3" style="text-align:center;">
								<div class="rating_list">
									<h3>총 ??개의 후기</h3>
									<!-- 후기 max글번호 입력 -->
									<ul class="list">
										<li><a href="#">5 Star <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> 03
										</a></li>
										<li><a href="#">4 Star <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"
												style="visibility: hidden;"></i> 00
										</a></li>
										<li><a href="#">3 Star <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star" style="visibility: hidden;"></i> <i
												class="fa fa-star" style="visibility: hidden;"></i> 00
										</a></li>
										<li><a href="#">2 Star <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"
												style="visibility: hidden;"></i> <i class="fa fa-star"
												style="visibility: hidden;"></i> <i class="fa fa-star"
												style="visibility: hidden;"></i> 00
										</a></li>
										<li><a href="#">1 Star <i class="fa fa-star"></i> <i
												class="fa fa-star" style="visibility: hidden;"></i> <i
												class="fa fa-star" style="visibility: hidden;"></i> <i
												class="fa fa-star" style="visibility: hidden;"></i> <i
												class="fa fa-star" style="visibility: hidden;"></i> 00
										</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="review_list">
								<div class="review_item">
									<div class="media">
								<!--		<div class="d-flex">
											<img src="resources/shoppingMall/img/product/single-product/review-1.png" alt="">
										</div> -->
										<div class="media-body">
											<h4>제목1</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>&emsp;닉네임1
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
								<!--		<div class="d-flex">
											<img src="resources/shoppingMall/img/product/single-product/review-2.png" alt="">
										</div> -->
										<div class="media-body">
											<h4>제목2</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>&emsp;닉네임2
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
							<!--			<div class="d-flex">
											<img src="resources/shoppingMall/img/product/single-product/review-3.png" alt="">
										</div>  -->
										<div class="media-body">
											<h4>제목3</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>&emsp;닉네임3
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
								</div>
								
								<!-- Q&A 작성버튼 -->
								<div class="col-md-12 text-right">
									<button class="btn submit_btn" id="review_btn">상품 후기 등록</button>
								</div>
							</div>
						</div>
		<!-- ==================== 후기 작성 모달 ==================== -->
						<div id="review_Modal">
							<div class="review_Content review_box">
								<span class="modal_close close">&times;</span>	<!-- X버튼 -->
								<h4 align="center">후기 작성하기</h4>
								<div id="star_review">
									<input type="checkbox">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									&nbsp;
									<input type="checkbox">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									&nbsp;
									<input type="checkbox">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									&nbsp;
									<input type="checkbox">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									&nbsp;
									<input type="checkbox">
									<i class="fa fa-star"></i>
								</div>
								
								<form class="row review_form" action="" method="post" id="reviewForm" novalidate="novalidate">
									<!-- 후기 제목 -->
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="title" name="title" placeholder="후기 제목">
										</div>
									</div>
									<!-- 후기 내용 -->
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="message" id="message" rows="1" placeholder="후기 내용"></textarea>
										</div>
									</div>
									<!-- 후기 첨부파일 -->
									<div class="col-md-12">
										<div class="form-group">
											<input type="FILE" class="form-control" id="file" name="file" placeholder="첨부파일">
										</div>
									</div>
									<div class="col-md-12 text-right">
									
										<button type="submit" value="submit" class="btn submit_btn">등록하기</button>
									</div>
								</form>
							</div>
						</div>
		<!-- ==================== 후기 작성 모달 ==================== -->
		
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->

<script type="text/javascript">
	//카테고리 별로 옵션 다르게 나오게 하기.
	var category = document.getElementById("category").innerHTML;
	
	var globe = document.querySelectorAll("a.globe");
	var bat = document.querySelectorAll("a.bat");
	var uniform = document.querySelectorAll("a.uniform");
	var shoes = document.querySelectorAll("a.shoes");
	var ball = document.querySelectorAll("a.ball");
	
	if(category == "글러브") {
		for(i=0; i<globe.length; i++) {
			globe[i].style.display = "flex";
		}
	}
	else if(category == "배트") {
		for(i=0; i<bat.length; i++) {
			bat[i].style.display = "flex";
		}
	}
	else if(category == "유니폼") {
		for(i=0; i<uniform.length; i++) {
			uniform[i].style.display = "flex";
		}
	}
	else if(category == "야구화") {
		for(i=0; i<shoes.length; i++) {
			shoes[i].style.display = "flex";
		}
	}
	else if(category == "야구공") {
		for(i=0; i<ball.length; i++) {
			ball[i].style.display = "flex";
		}
	}
</script>

<script>
//qna, review 모달
var qna_Modal = document.getElementById('qna_Modal');
var review_Modal = document.getElementById('review_Modal');

var close1 = document.getElementsByClassName("modal_close")[0];
var close2 = document.getElementsByClassName("modal_close")[1];


//qna_btn 눌렀을 때,
$('#qna_btn').click(function() {
	qna_Modal.style.display = "block";
})
//review_btn 눌렀을 때,
$('#review_btn').click(function() {
	review_Modal.style.display = "block";
})
//x버튼 눌렀을 때, 모달창 끄기
close1.onclick = function() {
	qna_Modal.style.display = "none";
}
close2.onclick = function() {
	review_Modal.style.display = "none";
}

window.onclick = function(event) {
	if (event.target == qna_Modal) {
		qna_Modal.style.display = "none";
	} else if (event.target == review_Modal) {
		review_Modal.style.display = "none";
	}
}
</script>

<%@ include file="../include/shopping_footer.jsp" %>
