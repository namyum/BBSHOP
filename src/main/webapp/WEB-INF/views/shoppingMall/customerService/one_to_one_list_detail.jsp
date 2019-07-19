<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="../include/shopping_header.jsp"%>

<style>
body {
	font-size: 17px;
	font-weight: bold;
}

.comments-area .btn-report {
	background-color: #fff;
	color: #222222;
	border: 1px solid #eee;
	padding: 2px 18px;
	font-size: 12px;
	display: block;
	font-weight: 600;
	transition: all 300ms linear 0s;
}

.blog_info .blog_meta li a {
	background-color: #fff;
	color: #222222;
	border: 1px solid #eee;
	padding: 2px 18px;
	font-size: 12px;
	display: block;
	font-weight: 600;
	transition: all 300ms linear 0s;
	margin-left: 700px;
}

.single-post-area .fileUpload-area {
	border-top: 1px solid #eee;
	padding-top: 30px;
	margin-top: 60px;
}

.genric-btn.primary {
	background: #9FC197;
	font-size: 16px;
	font-weight: bold;
	color: white !important;
}
</style>

<body>
<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center"
			style="background-color: #70e270;">
			<div class="container">
				<div class="banner_content text-center">
					<h2 style="color: white;">고객센터</h2>
					<div class="page_link">
						<a href="/shopping_main" style="color: white;">Home</a> <a
							href="/one_to_one_list" style="color: white;">1대1문의</a>
					</div>
				</div>
			</div>
		</div>
	</section>
<!--================End Home Banner Area =================-->
	<!--================Blog Area =================-->
	<section class="blog_area single-post-area p_120" style="padding-top:0px;">
		<div class="container" style="max-width:1500px;">
			<div class="row">
			
				<div class="col-lg-10 posts-list" style="margin-left:auto;margin-right:auto;margin-top:30px;">
					<div class="single-post row">

						<div class="col-lg-12  col-md-12" style="border-bottom:1px solid; border-color:#6c757d45;">
							<div class="blog_info text-left">
								<ul class="blog_meta list" style="border-top:1px solid;border-bottom:1px solid;border-color:#6c757d45;background:#9993;">
									<li>
										<table style="margin-left:auto;margin-right:auto;">
											<tr>
												<td>
													<h2>[상품] 테스트입니다.</h2>
												</td>
											</tr>
										</table>
									</li>
									<li></li>
									<li>
										<table style="float:right;margin-top:20px;">
											<tr>
												<td><p class="bno" style="margin-right: 10px;">글
														번호: 5</p></td>
												<td><p class="title" style="margin-right: 10px;">
														<i class="lnr lnr-user"></i> 천웅짱짱
													</p></td>
												<td>
													<p class="regdate" style="margin-right: 10px;">
														<i class="lnr lnr-calendar-full"></i> 2019/07/11
													</p>
												</td>
											</tr>
										</table>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-lg-9 col-md-9 blog_details"
							style="min-width: 100%;">
							<p>테스트입니다.
							</p>

						</div>
					</div>
					<div class="fileUpload-area"
						style="border-top: 0.5px solid; border-color: #6c757d6b;">
						<table style="width: 100%; margin-top: 15px;">
							<tr>
								<td><p>
										첨부파일: <a href="C:\Users\Jisoo\Desktop\커뮤니티_로고\wooyoung.jpg">다운로드</a>
									</p></td>
							</tr>
						</table>
					</div>
														<!-- 이전글 다음글 버튼 -->
					<div class="navigation-area" style="margin-top: 0px; width: 100%;">
						<div class="row">
							<div
								class="col-lg-12 col-md-12 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
								<div class="thumb" style="width:100%;background:white;">
									<a href="#"> <img class="img-fluid"
										src="resources/shoppingMall/img/left_arrow.png" alt=""
										style="width: 30px;float:left;">
									</a> <a href="#"> <img class="img-fluid"
										src="resources/shoppingMall/img/right_arrow.png" alt=""
										style="width: 30px;float:right;">
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- 이전글 다음글 버튼 끝 -->

					<!-- 수정, 삭제, 목록보기 버튼 -->
					<div style="width: 100%;">
						<div class="button-group-area mt-40">
							<a href="/one_to_one_list" id="go_list"
								class="genric-btn primary radius" style="margin-left: 42%;">목록보기</a>
							<a href="/one_to_one_list_modify" id="modify_post"
								class="genric-btn primary radius">수정</a> <a id="delete_post"
								class="genric-btn primary radius" style="float: right;">삭제</a>
						</div>
					</div>
					<!-- 수정, 삭제, 목록보기 버튼 끝 -->
				</div>
			</div>
		</div>
	</section>

	<script>
		// 글 상세 -> 삭제버튼
		var delete_postBtn = document.getElementById('delete_post');

		// 글 삭제 버튼 클릭 시 알람창
		delete_postBtn.onclick = function() {
			alert('글을 삭제하시겠습니까?');
		}
	</script>

<%@ include file="../include/shopping_footer.jsp"%>

</body>

</html>