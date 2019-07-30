<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>
<style>
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
</style>
<div class="container">
	<div class="order_details_table" style="margin-top: 10px">
		<h3 class="mb-30 title_color">상품 후기</h3>
		<h5 align="left">내가 작성한 상품 후기입니다.</h5>
		<div class="single-element-widget">
			<div class="default-select" id="default-select"
				style="margin-top: 30px;">
				<select onchange="if(this.value) location.href=(this.value);">
					<option value="/mypost.do">전체</option>
					<option value="/mypost_review.do" selected>상품 후기</option>
					<option value="/mypost_qna.do">상품 QnA</option>
					<option value="/mypost_one_to_one.do">1:1 문의</option>
				</select>
				<h5 align="right">총 게시글 : ${pageMaker.total }개</h5>
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
					<c:forEach var="reviewVO" items="${review_list }">
						<tr>
							<td>
								<h5>
									<c:out value="${reviewVO.rv_num }" default="null" />
								</h5>
							</td>
							<td>
								<h5>상품 후기</h5>
							</td>
							<td>
								<h5>
									<c:out value='${reviewVO.title }' />
								</h5>
							</td>
							<td>
								<h5>
									<fmt:formatDate pattern="yyyy-MM-dd"
										value="${reviewVO.re_date }" />
								</h5>
							</td>
							<td>
								<h5>
									<c:out value="${reviewVO.re_hit }" default="null" />
								</h5>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="text-center">
				<ul class="pagination">
					<!-- 페이지 목록 버튼 -->
					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class="page-item  ${pageMaker.pagingVO.pageNum == num ? 'active' : ''}">
							<a href="${num}" class="page-link">${num}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- 페이징 버튼 처리를 위한 히든 폼 -->
			<form id="actionForm" action="mypost_review.do">
				<input type="hidden" name="pageNum" value="${pageMaker.pagingVO.pageNum }">
				<input type="hidden" name="amount" value="${pageMaker.pagingVO.amount }">
			</form>
		</div>
	</div>
</div>

<script>
	// 페이징 버튼 처리
	$(document).ready(function() {

		var actionForm = $("#actionForm");

		$(".page-item a").on("click", function(e) {

			e.preventDefault();

			actionForm.find("input[name='pageNum']").val($(this).attr("href"));

			actionForm.submit();
		});
	});
</script>

<%@ include file="../include/mypage_footer.jsp"%>