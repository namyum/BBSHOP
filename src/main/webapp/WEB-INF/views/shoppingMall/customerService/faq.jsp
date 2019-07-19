<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="../include/shopping_header.jsp" %>

<style>
body {
	font-weight: bold;
	font-size: 17px;
}

.order_details_table {
	width: 1200px;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 50px;
}

.order_details_table .table thead tr th {
	text-align: center;
}

.table td {
	text-align: center;
}

a{
	color:#777777;
}

.genric-btn.primary{
	font-size:16px;
}
</style>

</head>

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
							href="/faq" style="color: white;">FAQ</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->
	
	<div class="button-group-area mt-40" style="margin-bottom: 30px;">
		<a href="/faq" class="genric-btn primary e-large"
			style="background: #024137; margin-left: 30%; padding: 6px 60px; font-size: 30px; font-weight: bold;">FAQ</a>
		<a href="/one_to_one_list" class="genric-btn primary e-large"
			style="background: #024137; margin-left: 21%; padding: 6px 60px; font-size: 30px; font-weight: bold;">1:1문의</a>
	</div>
	
	<div class="button-group-area mt-40" style="margin-bottom: 20px;">
		<a href="#" class="genric-btn primary radius"
			style="background: #EBDBC4; color: #666666; font-weight: bold; margin-left: 19.5%">전체보기</a>
		<a href="#" class="genric-btn primary radius"
			style="background: #EBDBC4; color: #666666; font-weight: bold; margin-left: 7%">변경/취소</a>
		<a href="#" class="genric-btn primary radius"
			style="background: #EBDBC4; color: #666666; font-weight: bold; margin-left: 7%">교환/반품</a>
		<a href="#" class="genric-btn primary radius"
			style="background: #EBDBC4; color: #666666; font-weight: bold; margin-left: 7%">주문/조회</a>
		<a href="#" class="genric-btn primary radius"
			style="background: #EBDBC4; color: #666666; font-weight: bold; margin-left: 7%">상품문의</a>
	</div>
	
	<div class="order_details_table" style="margin-top: 0px; padding: 0px;">
		<!-- <h2 style="text-align: center;">고객센터</h2> -->
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr style="background: #9FC197;">
						<th scope="col">번호</th>
						<th scope="col">카테고리</th>
						<th scope="col">제목</th>
					</tr>
				</thead>
				<tbody>
					<!-- 10 -->
					<tr>
						<td>
							<p>10</p>
						</td>
						<td>
							<h5>변경/취소</h5>
						</td>
						<td>
							<a href="/faq_info">제목이 생각안나여</a>
						</td>
					</tr>
					<!-- 9 -->
					<tr>
						<td>
							<p>9</p>
						</td>
						<td>
							<h5>교환/반품</h5>
						</td>
						<td>
							<a href="/faq_info">교환 절차는 어떻게 되나요?</a>
						</td>
					</tr>
					<!-- 8 -->
					<tr>
						<td>
							<p>8</p>
						</td>
						<td>
							<h5>주문/조회</h5>
						</td>
						<td>
							<a href="/faq_info">비회원 주문 확인은 어떻게 하나요?</a>
						</td>
					</tr>
					<!-- 7 -->
					<tr>
						<td>
							<h4>7</h4>
						</td>
						<td>
							<h5>상품문의</h5>
						</td>
						<td>
							<a href="/faq_info">재입고 알림 서비스가 없나요?</a>
						</td>
					</tr>
					<!-- 6 -->
					<tr>
						<td>
							<h4>6</h4>
						</td>
						<td>
							<h5>변경/취소</h5>
						</td>
						<td>
							<a href="/faq_info">입금까지 완료한 이후 주문을 취소했습니다. 환불은 어떻게 되나요?</a>
						</td>
					</tr>
					<!-- 5 -->
					<tr>
						<td>
							<h4>5</h4>
						</td>
						<td>
							<h5>교환/반품</h5>
						</td>
						<td>
							<a href="/faq_info">상품불량으로 인한 교환/반품에 대해 알려주세요.</a>
						</td>
					</tr>
					<!-- 4 -->
					<tr>
						<td>
							<h4>4</h4>
						</td>
						<td>
							<h5>주문/조회</h5>
						</td>
						<td>
							<a href="/faq_info">해외에서 주문이 가능한가요?</a>
						</td>
					</tr>
					<!-- 3 -->
					<tr>
						<td>
							<h4>3</h4>
						</td>
						<td>
							<h5>상품문의</h5>
						</td>
						<td>
							<a href="/faq_info">구매금액별 사은품은 무엇인가요?</a>
						</td>
					</tr>
					<!-- 2 -->
					<tr>
						<td>
							<h4>2</h4>
						</td>
						<td>
							<h5>변경/취소</h5>
						</td>
						<td>
							<a href="/faq_info">질문이 생각안나여</a>
						</td>
					</tr>
					<!-- 1 -->
					<tr>
						<td>
							<h4>1</h4>
						</td>
						<td>
							<h5>교환/반품</h5>
						</td>
						<td>
							<a href="/faq_info">단순변심으로 인한 교환/반품에 대해 알려주세요.</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<table class="paging_area"
		style="width: 1200px; margin-left: auto; margin-right: auto;">
		<tr>
		<td><a href="#writing_modal" class="genric-btn default radius"
				data-toggle="modal" style="font-weight: bold;font-size:17px;">글쓰기</a></td>
			<td>
				<nav class="cat_page mx-auto" aria-label="Page navigation example">
					<ul class="pagination" style="float: right;">
						<li class="page-item"><a class="page-link" href="#"> <i
								class="fa fa-chevron-left" aria-hidden="true"></i>
						</a></li>
						<li class="page-item active"><a class="page-link" href="#">01</a></li>
						<li class="page-item"><a class="page-link" href="#">02</a></li>
						<li class="page-item"><a class="page-link" href="#">03</a></li>
						<li class="page-item"><a class="page-link" href="#">04</a></li>
						<li class="page-item"><a class="page-link" href="#">05</a></li>
						<li class="page-item"><a class="page-link" href="#"> <i
								class="fa fa-chevron-right" aria-hidden="true"></i>
						</a></li>
					</ul>
				</nav>
			</td>
			<td class="search_area">
				<div class="input-group"
					style="width: 200px; float: right;">
					<input type="text" class="form-control" placeholder="글 검색">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="lnr lnr-magnifier"></i>
						</button>
					</span>
				</div>
			</td>
		</tr>
	</table>
	
<!-- ===============모달 Area ==================== -->
	<!-- 글쓰기 모달 -->
	<div class="modal fade" id="writing_modal" tabindex="-1" role="dialog"
		aria-labelledby="writing_modal_label" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width:30%;margin:8% auto;">
				<div class="modal-header">
					<h2 class="text-black" style="font-weight: bold">글쓰기</h2>
					<span class="close" data-dismiss="modal">&times;</span>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-11">
							<form>
								<div class="form-group row">
									<div class="col-md-6">
										<label for="subject" class="text-black">제목 <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="subject" name="subject">
									</div>
									<div class="col-md-6">
										<label for="category" class="text-black">카테고리 <span
											class="text-danger">*</span></label>
										<div class="left_dorp">
											<select class="sorting">
										<option value="header">말머리를 선택하세요</option>
										<option value="change_or_cancel">변경/취소</option>
										<option value="change_or_return" selected>교환/반품</option>
										<option value="order_or_check">주문/조회</option>
										<option value="about_product">상품문의</option>
											</select>
										</div>
									</div>
									<div class="col-md-10">
										<label for="content" class="text-black mt-10">내용 <span
											class="text-danger">*</span></label>
										<div>
											<textarea class="single-textarea" placeholder="글 내용을 작성해주세요."
												onfocus="this.placeholder = ''" style="margin-bottom: 10px"></textarea>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer" align="center">
					<button type="button" class="genric-btn danger radius"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="genric-btn default radius">등록</button>
				</div>
			</div>
		</div>
	</div>

<%@ include file="../include/shopping_footer.jsp" %>
