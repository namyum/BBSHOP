<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/community_header.jsp"%>

<!-- jQuery를 사용하기위해 jQuery라이브러리 추가 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>

<%
	String url = request.getRequestURL().toString() + "?BOARD_NUM=" + request.getParameter("BOARD_NUM");
%>

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
	margin: 8% auto;  15% from the top and centered 
	padding: 10px;
	border: 1px solid #888;
	width: 40%;  Could be more or less, depending on screen size 
	height: 50%;
}


}
.modal-content {
	background-color: #fefefe;
	margin: 8% auto; /* 15% from the top and centered */
	padding: 10px;
	border: 1px solid #888;
	width: 25%; !important /* Could be more or less, depending on screen size */
	height: 45%;
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
													<h2><b>[<c:out value="${post.TEAM_NAME}"/>]</b><c:out value="${post.TITLE}" /></h2>
												</td>
											</tr>
										</table>
									</li>
									<li></li>
									<li>
										<table>
											<tr>
												<td><p class="bno" style="margin-right: 10px;">글
														번호: <c:out value="${post.BOARD_NUM}" /></p></td>
												<td><p class="title" style="margin-right: 10px;">
														<i class="lnr lnr-user"></i> <c:out value="${post.WRITER}" />
													</p></td>
												<td>
													<p class="regdate" style="margin-right: 10px;">
														<i class="lnr lnr-calendar-full"></i> <fmt:formatDate pattern="yyyy-MM-dd"
														value="${post.REGDATE}" />
													</p>
												</td>
												<td>
													<p class="hit" style="margin-right: 10px;">
														<i class="lnr lnr-eye"></i><c:out value="${post.HIT}" />
													</p>
												</td>
												<td>
													<p class="reply_num">
														<i class="lnr lnr-bubble"></i><c:out value="${post.REPLY_NUM}" />
													</p>
												</td>
											</tr>
										</table>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-lg-9 col-md-9 blog_details"
							style="min-width: 100%;margin-bottom:20px;">
							<c:out value="${post.BOARD_CONTENT}" />

						</div>
					</div>
					<div class="fileUpload-area"
						style="border-top: 0.5px solid; border-color: #6c757d6b;">
						<table style="width: 100%; margin-top: 15px;">
							<tr>
								<td><p>
										<c:if test="${post.UPLOADFILE ne null}">
										첨부파일: 
										<a href='<c:out value="${post.UPLOADFILE}" />'>다운로드</a>
										</c:if>
									</p></td>
								<td style="float: right;"><a
									class="genric-btn primary small" id="reportBtn1"
									style="float: right; padding: 0 20px;">신고하기</a></td>
							</tr>
						</table>
					</div>

					<div class="comments-area">
						<div class="comment-list-write" style="padding-bottom:48px;">
							<div class="single-comment justify-content-between d-flex"
								style="border-bottom: 1.5px solid #eee;">
								<div class="user justify-content-between d-flex" style="min-width:100%;">
									<div class="desc" style="min-width:100%;">
										<h5>글쓴이</h5>
										<p class="date">2019/07/11</p>
										<input type="text" name="reply_content"
											style="width: 100%; height: 100px;" />
										<div class="reply-btn">
											<a class="genric-btn primary small" id="reply_submit"
												style="float: right; padding: 0 20px; margin-top: 20px; margin-bottom: 30px;">등록</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<h4>03 Comments</h4>
						<div class="comment-list-show" style="padding-bottom:48px;">
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
							<a href="/community_list.do" id="go_list"
								class="genric-btn primary radius" style="margin-left:35%">목록보기</a>
							<a href="/community_modify.do" id="modify_post"
								class="genric-btn primary radius">수정</a> <a id="delete_post"
								class="genric-btn primary radius" style="float: right;" 
								href="/communityDeleteAction.do?BOARD_NUM=<c:out value="${post.BOARD_NUM}"/>">삭제</a>
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
			<form id="reportForm" role="form" action="/report_registerAction.do" method="POST">
			<input type="hidden" name="BOARD_NUM" value="<c:out value='${post.BOARD_NUM}'/>"/>
				<div class="modal-body">
					<table>
						<tr class="report_content">
							<td><p>작성자:</p></td>
							<td><input type="text" name="WRITER" value="<c:out value='${post.WRITER}'/>"
								class="form-control" readonly /></td>
						</tr>
						<tr>
							<td><p>신고 내용 주소:</p></td>
							<td><input type="text" name="URL" class="form-control" style="width:140%;"
								value=<%=url %> readonly /></td>
							
						</tr>
						<tr>
							<td><p>신고 카테고리:</p></td>
							<td><select class="nice-select" name="RE_CATEGORY">
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
	
	<script type="text/javascript" src="/resources/community/js/reply.js">
	</script>
	
	<script>
	
	$(document).ready(function(){
		
		var bnoValue = '<c:out value="${post.BOARD_NUM}"/>';
		var replyDIV = $(".comment-list-show");
		
		showList(1);
		
		function showList(page){
			
			replyService.getList(
			{board_num:bnoValue, PAGENUM: page|| 1}, function(list){
				
				var str = "";
				
				// 댓글이 없는 경우
				if(list == null || list.length == 0){
					replyDIV.html("");
					
					return;
				}
				for(var i = 0, len = list.length || 0; i < len; i++){
					str += "<div class='single-comment justify-content-between d-flex'";
					str += "style='padding-bottom:48px;'>"
					str += "<div class='user justify-content-between d-flex'>";
					str += "<div class='desc'>";
					str += "<h5>"+list[i].writer+"</h5>";
					str += "<p class='date'>"+list[i].regdate+"</p>";
					str += "<p class='comment'>"+list[i].reply_content+"</p>";
					str += "</div>";
					str += "</div>";
					str += "<div class='reply-btn'>";
					str += "<a class='genric-btn primary small'";
					str += "id='reportBtn"+[i]+"'";
					str += "style='float: right; padding: 0 20px;'>신고하기</a>";
					str += "</div>";
					str += "</div>";
				}
				
				console.log(str);
				replyDIV.html(str);
			}); // end function
		} // end showList
	});
	</script>

	<%@ include file="../include/community_footer.jsp"%>
</body>

</html>