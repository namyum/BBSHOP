<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="../include/shopping_header.jsp" %>

<style>
body {
	font-weight: bold;
	font-size: 17px;
}

.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th,
	.table>thead>tr>td, .table>thead>tr>th {
	padding: 20px;
	line-height: 1.42857143;
	vertical-align: top;
	border-top: 1px solid #ddd;
}

.order_details_table {
	padding: 0px 30px 0px 30px;
	background: white;
}

a{
	color:#777777;
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
							href="/one_to_one_list" style="color: white;">1대1 문의</a>
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
	<div class="container">
		<div class="order_details_table" style="margin-top: 10px">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr style="background: #9FC197;">
							<th scope="col" style="width: 10%; font-weight: bold;">번호</th>
							<th scope="col" style="width: 15%; font-weight: bold;">카테고리</th>
							<th scope="col" style="font-weight: bold;">제목</th>
							<th scope="col" style="width: 15%; font-weight: bold;">날짜</th>
							<th scope="col" style="width: 10%; font-weight: bold;">조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<h5>6</h5>
							</td>
							<td>
								<h5>1:1 문의</h5>
							</td>
							<td>
								<a href="/one_to_one_list_info">테스트입니다</a>
							</td>
							<td>
								<h5>2019-07-10</h5>
							</td>
							<td>
								<h5>100</h5>
							</td>
						</tr>
						<tr>
							<td>
								<h5>5</h5>
							</td>
							<td>
								<h5>1:1 문의</h5>
							</td>
							<td>
								<a href="/one_to_one_list_info">테스트입니다</a>
							</td>
							<td>
								<h5>2019-07-10</h5>
							</td>
							<td>
								<h5>100</h5>
							</td>
						</tr>
						<tr>
							<td>
								<h5>4</h5>
							</td>
							<td>
								<h5>1:1 문의</h5>
							</td>
							<td>
								<a href="/one_to_one_list_info">테스트입니다</a>
							</td>
							<td>
								<h5>2019-07-10</h5>
							</td>
							<td>
								<h5>100</h5>
							</td>
						</tr>
						<tr>
							<td>
								<h5>3</h5>
							</td>
							<td>
								<h5>1:1 문의</h5>
							</td>
							<td>
								<a href="/one_to_one_list_info">테스트입니다</a>
							</td>
							<td>
								<h5>2019-07-10</h5>
							</td>
							<td>
								<h5>100</h5>
							</td>
						</tr>
						<tr>
							<td>
								<h5>2</h5>
							</td>
							<td>
								<h5>1:1 문의</h5>
							</td>
							<td>
								<a href="/one_to_one_list_info">테스트입니다</a>
							</td>
							<td>
								<h5>2019-07-10</h5>
							</td>
							<td>
								<h5>100</h5>
							</td>
						</tr>
						<tr>
							<td>
								<h5>1</h5>
							</td>
							<td>
								<h5>1:1 문의</h5>
							</td>
							<td>
								<a href="/one_to_one_list_info">테스트입니다</a>
							</td>
							<td>
								<h5>2019-07-10</h5>
							</td>
							<td>
								<h5>100</h5>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<table class="paging_area"
		style="width: 1100px; margin-left: auto; margin-right: auto; margin-top: 40px;">
		<tr>
			<td><a href="#writing_modal" class="genric-btn default radius"
				data-toggle="modal" style="font-weight: bold;font-size:17px;">글쓰기</a></td>
			<td><nav class="cat_page mx-auto"
					aria-label="Page navigation example">
					<ul class="pagination" style="float: right;">
						<li class="page-item"><a class="page-link" href="#"> <i
								class="fa fa-chevron-left" aria-hidden="true"></i>
						</a></li>
						<li class="page-item active"><a class="page-link" href="#">01</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">02</a></li>
						<li class="page-item"><a class="page-link" href="#">03</a></li>
						<li class="page-item blank"><a class="page-link" href="#">...</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">09</a></li>
						<li class="page-item"><a class="page-link" href="#"> <i
								class="fa fa-chevron-right" aria-hidden="true"></i>
						</a></li>
					</ul>
				</nav></td>
			<td class="search_area"><div class="input-group"
					style="width: 200px; float: right;">
					<input type="text" class="form-control" placeholder="글 검색">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="lnr lnr-magnifier"></i>
						</button>
					</span>
				</div></td>
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
											<select class="sorting" name="one_to_one_category">
												<option value="header">말머리를 선택하세요</option>
												<option value="order_or_delivery">주문/배송</option>
												<option value="about_product">상품관련</option>
												<option value="about_payment">결제관련</option>
												<option value="other">기타</option>
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
									<div class="col-md-6">
										<label for="content" class="text-black">첨부파일</label>
										<div>
											<input type="file" id="file" name="file">
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