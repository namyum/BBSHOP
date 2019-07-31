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
		<h3 class="mb-30 title_color">내가 남긴 글</h3>
		<h5 align="left">내가 작성한 <span id="table_content">전체</span>입니다.</h5>
		<div class="single-element-widget">
			<div class="default-select" id="default-select"
				style="margin-top: 30px;">
				<select id="category" onchange="getTableWithAjax(this.value);">
					<option value="all" selected>전체</option>
					<option value="review">상품 후기</option>
					<option value="qna">상품 QnA</option>
					<option value="onetoone">1:1 문의</option>
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
						<th scope="col" style="width: 18%; font-weight: bold;">날짜</th>
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
									<c:out value='${reviewVO.re_date }' />
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
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="page-item  ${pageMaker.pagingVO.pageNum == num ? 'active' : ''}" id="btn_${num }">
							<a href="${num}" class="page-link">${num}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- 페이징 버튼 처리를 위한 히든 폼 -->
			<form id="actionForm">
				<input type="hidden" name="pageNum" value="${pageMaker.pagingVO.pageNum }">
				<input type="hidden" name="amount" value="${pageMaker.pagingVO.amount }">
			</form>
		</div>
	</div>
</div>

<script>

function getTableWithAjax(category) {
	
	var actionForm = $("#actionForm");

	actionForm.find("input[name='pageNum']").val(1);
	
	var amount = actionForm.find("input[name='amount']").val();
	var pageNum = actionForm.find("input[name='pageNum']").val();
	
	var data = {};
	
		data["pageNum"] = pageNum; 
		data["amount"] = amount;
		data["category"] = category;
				
	$.ajax({
		type : 'POST',
		url : '/getTableWithAjax.do',
		data : JSON.stringify(data),
		dataType : 'json',
		contentType: "application/json",
		success : function(result) {
								
			var str = '';
			var values = '';
			
			var start = ${pageMaker.startPage};
			var end = ${pageMaker.endPage};
			var paging = '';
			
			if (category == 'review') {
				
				category = '상품 후기';
				values = result.review;
				
			} else if (category == 'qna') {
				
				category = '상품 QnA';
				values = result.qna;
				
			} else if (category == 'onetoone') {
				
				category = '1:1 문의';
				values = result.onetoone;		
			
			} else {
				
				category = '전체';
				values = result;
			}
			
			$.each(values, function(index, value){
				
				console.log('index : ' + index + 'value : ' + value);
								
				if (category == '상품 후기') {
					
					console.log(values[index].re_hit);
					
					str += '<tr><td><h5>' + values[index].rv_num + '</h5></td><td><h5>' + category + '</h5></td><td><h5>' + values[index].title + '</h5></td><td><h5>'
						+ values[index].re_date + '</h5></td><td><h5>' + values[index].re_hit + '</h5></td></tr>';
				
				} else if (category == '상품 QnA') {
					
					str += '<tr><td><h5>' + values[index].qna_num + '</h5></td><td><h5>' + category + '</h5></td><td><h5>' + values[index].subject + '</h5></td><td><h5>'
						+ values[index].regdate + '</h5></td><td><h5>' + values[index].hit + '</h5></td></tr>';
				
				} else if (category == '1:1 문의') {
					
					str += '<tr><td><h5>' + values[index].one_one_num + '</h5></td><td><h5>' + category + '</h5></td><td><h5>' + values[index].one_title + '</h5></td><td><h5>'
						+ values[index].regdate + '</h5></td><td><h5>' + values[index].hit + '</h5></td></tr>';
				
				} else {
					
					var list = values[index];
					
					if (index == 'review') {
						
						$.each(list, function(index, value) {
						
							str += '<tr><td><h5>' + list[index].rv_num + '</h5></td><td><h5>상품 후기</h5></td><td><h5>' + list[index].title + '</h5></td><td><h5>'
							+ list[index].re_date + '</h5></td><td><h5>' + list[index].re_hit + '</h5></td></tr>';
						});
						
					} else if (index == 'qna') {
						
						$.each(list, function(index, value) {

							str += '<tr><td><h5>' + list[index].qna_num + '</h5></td><td><h5>상품 QnA</h5></td><td><h5>' + list[index].subject + '</h5></td><td><h5>'
								+ list[index].regdate + '</h5></td><td><h5>' + list[index].hit + '</h5></td></tr>';
						});

					} else if (index == 'onetoone') {
						
						$.each(list, function(index, value) {
						
							str += '<tr><td><h5>' + list[index].one_one_num + '</h5></td><td><h5>1:1 문의</h5></td><td><h5>' + list[index].one_title + '</h5></td><td><h5>'
								+ list[index].regdate + '</h5></td><td><h5>' + list[index].hit + '</h5></td></tr>';
						});
					}
				}
				
			});
				
			$('tbody').empty();
			$('tbody').append(str);
			
			$('#table_content').empty();
			$('#table_content').append(category);
			
			// 페이징 버튼 AJAX 처리
			$('.pagination').empty();
			
			for (var i = start; i <= end; i++) {
				paging += '<li class="page-item ' + ${pageMaker.pagingVO.pageNum == i ? "active" : ''} + '" id="btn_' + i + '"><a href="' + i + '" class="page-link">' + i + '</a></li>';
			}
			
			$('.pagination').append(paging);
			
			$('.page-item').removeClass("active");
			$('.NaN' + actionForm.find("input[name='pageNum']").val()).addClass("active");
		},
		error : function() {
				
			alert('AJAX 요청 실패!');
		}
	});
}
</script>

<%@ include file="../include/mypage_footer.jsp"%>