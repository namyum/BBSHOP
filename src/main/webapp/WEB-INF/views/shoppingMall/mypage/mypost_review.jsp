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
				<select id="category" onchange="getTableWithAjax(this.value);">
					<option value="전체">전체</option>
					<option value="상품 후기" selected>상품 후기</option>
					<option value="상품 QnA">상품 QnA</option>
					<option value="1:1 문의">1:1 문의</option>
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

function getTableWithAjax(sParam) {
	
	var actionForm = $("#actionForm");
		
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));

	alert(sParam);
		
	var data = {
		pageNum: $(this).attr("href"), 
		amount: 5
	};
				
	$.ajax({
		type : 'POST',
		url : '/getTableWithAjax.do',
		data : JSON.stringify(data),
		dataType : 'json',
		contentType: "application/json",
		success : function(result) {
				
			alert('AJAX 요청 성공!');
			
			console.log(result);
								
			var str = '';
			
			$.each(result, function(index, value){
					
				str += '<tr><td><h5>' + result[index].rv_num + '</h5></td><td><h5>상품 후기</h5></td><td><h5>' + result[index].title + '</h5></td><td><h5>'
				+ result[index].re_date + '</h5></td><td><h5>' + result[index].re_hit + '</h5></td></tr>';
			});
				
			$('tbody').empty();
			$('tbody').append(str);
		},
		error : function() {
				
			alert('AJAX 요청 실패!');
		}
	});
}

$(document).on("click", ".page-item a", function(e) {
	
	e.preventDefault();
	
	var actionForm = $("#actionForm");
	
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	var data = {
		pageNum: $(this).attr("href"), 
		amount: 5
	};
				
	$.ajax({
		type : 'POST',
		url : '/getTableWithAjax.do',
		data : JSON.stringify(data),
		dataType : 'json',
		contentType: "application/json",
		success : function(result) {
			
			console.log(result);
								
			var str = '';
			
			$.each(result, function(index, value){
					
				str += '<tr><td><h5>' + result[index].rv_num + '</h5></td><td><h5>상품 후기</h5></td><td><h5>' + result[index].title + '</h5></td><td><h5>'
				+ result[index].re_date + '</h5></td><td><h5>' + result[index].re_hit + '</h5></td></tr>';
			});
				
			$('tbody').empty();
			$('tbody').append(str);
			
			// 페이징 버튼 AJAX 처리
			$('.page-item').removeClass("active");
			$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
		},
		error : function() {
				
			alert('AJAX 요청 실패!');
		}
	});
}
</script>

<%@ include file="../include/mypage_footer.jsp"%>