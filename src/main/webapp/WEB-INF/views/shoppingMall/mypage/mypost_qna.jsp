<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>
<style>
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 20px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
}

.order_details_table {
	padding: 0px 30px 0px 30px;
	background: white;
}
</style>
<div class="container">
	<div class="order_details_table" style="margin-top: 10px">
		<h3 class="mb-30 title_color">상품 QnA</h3>
		<h5 align="left">내가 작성한 상품 QnA입니다.</h5>
		<div class="single-element-widget">
			<div class="default-select" id="default-select" style="margin-top: 30px;">
				<select onchange="if(this.value) location.href=(this.value);">
					<option value="/mypost">전체</option>
					<option value="/mypost_review">상품 후기</option>
					<option value="/mypost_qna" selected>상품 QnA</option>
					<option value="/mypost_one_to_one">1:1 문의</option>
				</select>
				<h5 align="right">총 게시글 : 10</h5>
			</div>
		</div>
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr style="background: #b5dab6;">
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
							<h5>상품 QnA</h5>
						</td>
						<td>
							<h5>테스트입니다</h5>
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
							<h5>상품 QnA</h5>
						</td>
						<td>
							<h5>테스트입니다</h5>
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
							<h5>상품 QnA</h5>
						</td>
						<td>
							<h5>테스트입니다</h5>
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
							<h5>상품 QnA</h5>
						</td>
						<td>
							<h5>테스트입니다</h5>
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
							<h5>상품 QnA</h5>
						</td>
						<td>
							<h5>테스트입니다</h5>
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
							<h5>상품 QnA</h5>
						</td>
						<td>
							<h5>테스트입니다</h5>
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
			<div class="text-center">
				<ul class="pagination">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/mypage_footer.jsp"%>