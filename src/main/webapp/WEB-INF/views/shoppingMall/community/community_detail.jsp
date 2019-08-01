<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="../include/community_header.jsp"%>

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

.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top - display가 block 처리되었을 때 view보다 상단에 노출되게 해줌*/
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
#replyModal { .modal-content { background-color:#fefefe;
	margin: 8% auto; /* 15% from the top and centered */
	padding: 10px;
	border: 1px solid #888;
	width: 40%; /* Could be more or less, depending on screen size */
	height: 50%;
}

}
.modal-content {
	background-color: #fefefe;
	margin: 8% auto; /* 15% from the top and centered */
	padding: 10px;
	border: 1px solid #888;
	width: 20%; /* Could be more or less, depending on screen size */
	height: 35%;
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

#myModal {
	opacity: 0.9;
}

#replyModal {
	opacity: 0.9;
}

.modal-footer {
	margin-top: 20px;
}

.modal-body {
	align: center;
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
	<div style="margin-bottom: 50px;"></div>
	<!--================Blog Area =================-->
	<section class="cat_product_area section_gap">
		<div class="container-fluid">
			<div class="row flex-row-reverse">
				<div class="col-lg-9" style="margin-left:auto;margin-right:auto;">
					<div class="single-post row">

						<div class="col-lg-12  col-md-12">
							<div class="blog_info text-left" style="padding-top: 0px;">
								<ul class="blog_meta list">
									<li>
										<table>
											<tr>
												<td>
													<h2>[엘지] 가을야구 가자!!!!!</h2>
												</td>
											</tr>
										</table>
									</li>
									<li></li>
									<li>
										<table>
											<tr>
												<td><p class="bno" style="margin-right: 10px;">글
														번호: 5</p></td>
												<td><p class="title" style="margin-right: 10px;">
														<i class="lnr lnr-user"></i> 엘지사랑해요
													</p></td>
												<td>
													<p class="regdate" style="margin-right: 10px;">
														<i class="lnr lnr-calendar-full"></i> 2019/07/11
													</p>
												</td>
												<td>
													<p class="ip" style="margin-right: 10px;">IP:
														123.456.789</p>
												</td>
												<td>
													<p class="hit" style="margin-right: 10px;">
														<i class="lnr lnr-eye"></i>123
													</p>
												</td>
												<td>
													<p class="reply_num">
														<i class="lnr lnr-bubble"></i>3
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
							<p>차명석 단장은 조셉의 웨이버 공시에 대해 "외국인 선수는 실력 여부를 떠나 일단 경기에 나서야 하는데
								(가래톳과 허리 통증으로) 제대로 뛰질 못했으니까…"라고 답답해했다. 조셉은 좋은 성적(타율 0.274 9홈런
								36타점)을 올린 것도 아니었고, 무엇보다 개막 후부터 지난 9일까지 KBO 리그에서 뛰고 있는 6명(SK 로맥,
								두산 페르난데스, 키움 샌즈, KT 로하스, 삼성 러프, 한화 호잉) 외국인 타자 평균타석(372타석)의 약
								58%밖에 소화하지 못했다.</p>
							<p>이 과정에서 세리자와 유지 1군 배터리 코치가 결정적인 역할을 했다. 페게로는 2016년부터
								2018년까지 일본 프로야구 라쿠텐 소속으로 259경기에 출장해 타율 0.265, 53홈런, 145타점을 기록했다.
								일본 출신인 세리자와 코치는 이런저런 경로와 직접 눈으로 확인한 부분을 구단에 설명했다. 구단은 "일본 야구를
								경험한 점을 감안했다"고 했고, 차명석 단장 역시 "아무리 좋은 선수를 데려와도 적응을 못하면 문제다. 아시아
								야구를 경험이 점을 고려했다"고 설명했다.</p>

						</div>
					</div>
					<div class="fileUpload-area"
						style="border-top: 0.5px solid; border-color: #6c757d6b;">
						<table style="width: 100%; margin-top: 15px;">
							<tr>
								<td><p>
										첨부파일: <a href="C:\Users\Jisoo\Desktop\커뮤니티_로고\wooyoung.jpg">다운로드</a>
									</p></td>
								<td style="float: right;"><a href="#"
									class="genric-btn primary small" id="reportBtn1"
									style="float: right; padding: 0 20px;">신고하기</a></td>
							</tr>
						</table>
					</div>

					<div class="comments-area">
						<div class="comment-list">
							<div class="single-comment justify-content-between d-flex"
								style="border-bottom: 1.5px solid #eee;">
								<div class="user justify-content-between d-flex">
									<div class="desc">
										<h5>글쓴이</h5>
										<p class="date">2019/07/11</p>
										<input type="text" name="reply_content"
											style="width: 1100px; height: 100px;" />
										<div class="reply-btn">
											<a class="genric-btn primary small" id="reply_submit"
												style="float: right; padding: 0 20px; margin-top: 20px; margin-bottom: 30px;">등록</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<h4>03 Comments</h4>
						<div class="comment-list">
							<div class="single-comment justify-content-between d-flex">
								<div class="user justify-content-between d-flex">
									<div class="desc">
										<h5>정우영</h5>
										<p class="date">2019/07/11</p>
										<p class="comment">안녕하세요 59번이에요</p>
									</div>
								</div>
								<div class="reply-btn">
									<a class="genric-btn primary small" id="reportBtn2"
										style="float: right; padding: 0 20px;">신고하기</a>
								</div>
							</div>
						</div>
						<div class="comment-list left-padding">
							<div class="single-comment justify-content-between d-flex">
								<div class="user justify-content-between d-flex">
									<div class="desc">
										<h5>유강남</h5>
										<p class="date">2019/07/11</p>
										<p class="comment">안녕하세요 27번이에요</p>
									</div>
								</div>
								<div class="reply-btn">
									<a class="genric-btn primary small" id="reportBtn3"
										style="float: right; padding: 0 20px;">신고하기</a>
								</div>
							</div>
						</div>
						<div class="comment-list left-padding">
							<div class="single-comment justify-content-between d-flex">
								<div class="user justify-content-between d-flex">
									<div class="desc">
										<h5>윌슨</h5>
										<p class="date">2019/07/11</p>
										<p class="comment">Hi i'm the best pitcher</p>
									</div>
								</div>
								<div class="reply-btn">
									<a class="genric-btn primary small" id="reportBtn4"
										style="float: right; padding: 0 20px;">신고하기</a>
								</div>
							</div>
						</div>
					</div>

					<!-- 이전글 다음글 버튼 -->
					<div class="navigation-area" style="margin-top: 0px; width: 100%;">
						<div class="row">
							<div
								class="col-lg-12 col-md-12 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
								<div class="thumb" style="width:100%;">
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
							<a href="/community_list" id="go_list"
								class="genric-btn primary radius" style="margin-left: 500px;">목록보기</a>
							<a href="/community_modify" id="modify_post"
								class="genric-btn primary radius">수정</a> <a id="delete_post"
								class="genric-btn primary radius" style="float: right;">삭제</a>
						</div>
					</div>
					<!-- 수정, 삭제, 목록보기 버튼 끝 -->
				</div>

				<!-- 왼쪽 사이드 바 -->
				<div class="col-lg-2" style="margin-right:auto; margin-left:auto;">
					<div class="left_sidebar_area">
						<aside class="left_widgets cat_widgets">
							<div class="l_w_title"
								style="text-align: center; background: white;">
								<h3
									style="font-size: 20px; font-weight: bold; color: lightcoral;">순위보기</h3>
								<p>
									SK <br> 키움 <br> 두산 <br> LG <br> NC <br>
									KT <br> 삼성 <br> KIA <br> 한화 <br> 롯데 <br>
							</div>
							<div class="widgets_inner">
								<p>
							</div>
						</aside>
						<aside class="left_widgets p_filter_widgets">
							<div class="l_w_title">
								<h3
									style="text-align: center; font-size: 17px; font-weight: bold; color: lightcoral;">스포츠
									뉴스</h3>
							</div>
							<div class="widgets_inner">
								<ul>
									<li><p>크롤링 구현 예정입니다.</p></li>
									<li><a
										href="https://sports.news.naver.com/kbaseball/news/read.nhn?oid=144&aid=0000621625">
											[단독] 프로야구선수협, FA ‘4년 80억’ 상한제 수용키로</a></li>
									<li><a
										href="https://sports.news.naver.com/kbaseball/news/read.nhn?oid=109&aid=0004052054">
											"이명기는 통산 타율 3할 타자" 트레이드 효과는 이제부터</a></li>
									<li><a
										href="https://sports.news.naver.com/kbaseball/news/read.nhn?oid=076&aid=0003443645">
											[SC집중분석]레전드 넘어서는 최정. 467홈런 이승엽 넘기가 가능할까</a></li>
									<li><a
										href="https://sports.news.naver.com/kbaseball/news/read.nhn?oid=468&aid=0000536149">
											한선태가 새긴 유강남의 조언 "마운드에선 네가 왕이다"</a></li>
									<li><a
										href="https://sports.news.naver.com/kbaseball/news/read.nhn?oid=382&aid=0000747370">
											완전체 앞둔 LG 타선, 새로운 고민 된 외야 조합</a></li>
									<li><a
										href="https://sports.news.naver.com/kbaseball/news/read.nhn?oid=241&aid=0002938146">
											LG 윌슨·켈리, '1989년생·9승·원투펀치' 복덩이</a></li>
									<li><a
										href="https://sports.news.naver.com/kbaseball/news/read.nhn?oid=241&aid=0002938915">
											'왕조의 연결고리' 김강민이 말하는 2019년의 SK</a></li>
								</ul>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Area =================-->

	<!-- 신고 modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<!-- header -->
			<div class="modal-header">
							<!-- header title -->
				<h4 class="modal-title" align="center">신고하기</h4>
				
				<!-- 닫기(x) 버튼 -->
				<span class="close">&times;</span>
			</div>
			<!-- body -->
			<form id="reportForm" name="report" role="form" action="/community_detail">
				<div class="modal-body">
					<table>
						<tr class="report_content">
							<td><p>작성자:</p></td>
							<td><input type="text" name="writer" value="작성자"
								class="form-control" readonly /></td>
						</tr>
						<tr>
							<td><p>신고 내용 주소:</p></td>
							<td><input type="text" name="team_num" class="form-control"
								value="https://naver.com" readonly /></td>
							<!-- or reply_num -->
						</tr>
						<tr>
							<td><p>신고 카테고리:</p></td>
							<td><select class="nice-select">
									<option value="header">신고사유</option>
									<option value="swear">욕설</option>
									<option value="flood">도배</option>
									<option value="advertisement">광고</option>
									<option value="pornography">음란물</option>
							</select></td>
						</tr>
					</table>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<table align="center">
						<tr>
							<td><button type="button" class="btn btn-info btn-block">닫기</button></td>
							<td><input type="submit" class="btn btn-info btn-primary"
								value="제출" /></td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
	<!-- 모달 script -->
	<script>
		var modal = document.getElementById('myModal');

		var replymodal = document.getElementById('replyModal');

		// Get the button that opens the modal
		// 뷰 단계에서는 1,2,3,4 .. 등으로 정의하지만 백단으로 넘어가면 jstl 태그 + for문 사용할 것
		var reportbtn1 = document.getElementById("reportBtn1");

		var reportbtn2 = document.getElementById("reportBtn2");

		var reportbtn3 = document.getElementById("reportBtn3");

		var reportbtn4 = document.getElementById("reportBtn4");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// 닫기 버튼 불러오기
		var close = document.getElementsByClassName("btn-block")[0];

		// 글 상세 -> 삭제버튼
		var delete_postBtn = document.getElementById('delete_post');

		// When the user clicks on the button, open the modal 
		reportbtn1.onclick = function() {
			modal.style.display = "block";
		}

		reportbtn2.onclick = function() {
			modal.style.display = "block";
		}

		reportbtn3.onclick = function() {
			modal.style.display = "block";
		}

		reportbtn4.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// 닫기 버튼을 누른 경우 display none.(창 없앰)
		close.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

		// 글 삭제 버튼 클릭 시 알람창
		delete_postBtn.onclick = function() {
			alert('글을 삭제하시겠습니까?');
		}
	</script>

	<%@ include file="../include/community_footer.jsp"%>
</body>

</html>