<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>

<style>
.goods {
	width: 50px;
	height: 30px;
}

.visit {
	text-align: center;
}

.order_details_table {
	padding: 0px 30px 0px 30px;
	background: white;
}

.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th,
	.table>thead>tr>td, .table>thead>tr>th {
	padding: 20px;
	line-height: 1.42857143;
	vertical-align: top;
	border-top: 1px solid #ddd;
}

.modal-dialog, .mdl_od {
	width: 80%;
	height: 50%;
	margin: 0;
	padding: 0;
}

.modal-content, .mdl_od {
	height: auto;
	min-height: auto;
}

.modal, .modal-center {
	position: absolute;
	left: 180px;
}

@media screen and (min-width: 768px) {
	.modal.modal-center:before {
		display: inline-block;
		vertical-align: middle;
		content: "";
		height: 60%;
	}
}

.modal-dialog, .modal-center {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}
</style>

<div class="container">
	<div class="order_details_table" style="margin-top: 10px">
		<h3 class="mb-30 title_color">주문 / 배송</h3>
		<h5 align="left">내 주문의 상태를 조회하고 취소할 수 있습니다.</h5>
		<h5 align="right">내 주문 : ${pageMaker.total }건</h5>
		
		<!-- 검색 필터 체크박스 -->
		<div class="col-md-2 form-group p_star">
			<div class="switch-wrap justify-content-between">
				<span>결제 완료</span>
				<div class="confirm-checkbox" style="display: inline-block; border: 2px solid #a4aaa7;">
					<input type="checkbox" id="addr1" name="num" value="1"> <label
						for="addr1" class="addr_chk"></label>
				</div>
			</div>
		</div>
		<div class="col-md-2 form-group p_star">
			<div class="switch-wrap justify-content-between">
				<span>주문 취소</span>
				<div class="confirm-checkbox" style="display: inline-block; border: 2px solid #a4aaa7;">
					<input type="checkbox" id="addr2" name="num" value="2"> <label
						for="addr2" class="addr_chk"></label>
				</div>
			</div>
		</div>
		<div class="col-md-2 form-group p_star">
			<div class="switch-wrap justify-content-between">
				<span>배송중</span>
				<div class="confirm-checkbox" style="display: inline-block; border: 2px solid #a4aaa7;">
					<input type="checkbox" id="addr3" name="num" value="3"> <label
						for="addr3" class="addr_chk"></label>
				</div>
			</div>
		</div>
		
		<!-- 끝 -->
		<table class="table table-hover">
			<thead>
				<tr style="background: #b5dab6;">
					<th scope="col" style="width: 10%; font-weight: bold;">주문번호</th>
					<th scope="col" style="width: 10%; font-weight: bold;">주문일자</th>
					<th scope="col" style="font-weight: bold;">주문목록</th>
					<th scope="col" style="width: 10%; font-weight: bold;">결제금액</th>
					<th scope="col" style="width: 10%; font-weight: bold;">주문상태</th>
					<th scope="col" style="width: 15%; font-weight: bold;">배송현황</th>
					<th scope="col" style="width: 15%; font-weight: bold;">주문취소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderVO" items="${orders_list }" varStatus="status">
					<tr>
						<td style="text-align: center;">
							<h5>
								<c:out value="${orderVO.order_num }" default="null" />
							</h5>
						</td>
						<td>
							<h5>
								<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
									value="${orderVO.or_date }" />
							</h5>
						</td>
						<td><h5>
								<a href="<c:out value='${orderVO.items }'/>" data-toggle="modal"
									data-target="#modal_order_detail" style="color: #222222;"
									onclick="showModal('${status.index}');"> <c:out
										value='${orderVO.items }' /></a>
							</h5></td>
						<td>
							<h5>
								￦
								<c:out value="${orderVO.pymntamnt }" default="null" />
							</h5>
						</td>
						<td>
							<h5>
								<c:choose>
									<c:when test="${orderVO.stts == 0 }">
			       						결제완료
			    					</c:when>
									<c:when test="${orderVO.stts == 1 }">
			       						배송준비중
			   						</c:when>
									<c:when test="${orderVO.stts == 2 }">
										배송중
								    </c:when>
									<c:when test="${orderVO.stts == 3 }">
										배송완료
								    </c:when>
									<c:when test="${orderVO.stts == 4 }">
										<span style="color: red;">주문취소</span>
									</c:when>
								</c:choose>
							</h5>
						</td>
						<td>
							<button type="button" id="see_order"
								class="genric-btn default radius">
								<span>배송 조회</span>
							</button>
						</td>
						<td><c:choose>
								<c:when test="${orderVO.stts == 0}">
									<button type="button" id="cancel_order"
										class="genric-btn danger radius"
										onClick="fn_cancel_order('${orderVO.order_num}')">
										<span>주문 취소</span>
									</button>
								</c:when>
								<c:otherwise>
									<button type="button" id="cancel_order"
										class="genric-btn danger radius" style="visibility: hidden;">
										<span>주문 취소</span>
									</button>
								</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="text-center">
			<ul class="pagination">
				<!-- 페이지 목록 버튼 -->
				<c:forEach var="num" begin="${pageMaker.startPage}"
					end="${pageMaker.endPage}">
					<li
						class="page-item  ${pageMaker.pagingVO.pageNum == num ? 'active' : ''}">
						<a href="${num}" class="page-link">${num}</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 페이징 버튼 처리를 위한 히든 폼 -->
		<form id="actionForm" action="order_status.do">
			<input type="hidden" name="pageNum"
				value="${pageMaker.pagingVO.pageNum }"> <input type="hidden"
				name="amount" value="${pageMaker.pagingVO.amount }">
		</form>
	</div>
</div>

<script>
	var order_num = '';
	var order_item = '';
	var order_date = '';
	var order_name = '';
	var order_msg = '';
	var receiver = '';

	function fn_cancel_order(order_num) {

		var answer = confirm("주문을 취소하시겠습니까?");

		if (answer == true) {

			alert("주문이 취소되었습니다.");

			var formObj = document.createElement("form");
			var i_order_num = document.createElement("input");

			i_order_num.name = "order_num";
			i_order_num.value = order_num;

			formObj.appendChild(i_order_num);
			document.body.appendChild(formObj);

			formObj.method = "post";
			formObj.action = "/order_cancel.do";

			formObj.submit();
		}
	}

	function showModal(order_idx) {

		var list = new Array();

		<c:forEach items="${orders_list}" var="orderVO" varStatus="status">
		if ('${status.index}' == order_idx) {

			list.push('${orderVO.order_num}');
			list.push('${orderVO.items}');
			list
					.push('<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${orderVO.or_date }" />');
			list.push('${orderVO.name}')
			list.push('${orderVO.or_msg}')
			list.push('${orderVO.receiver}');
		}
		</c:forEach>

		order_num = list[0];
		order_item = list[1];
		order_date = list[2];
		order_name = list[3];
		order_msg = list[4];
		receiver = list[5];
	}

	$(document).ready(function() {

		var actionForm = $("#actionForm");

		// 페이징 버튼 처리
		$(".page-item a").on("click", function(e) {

			e.preventDefault();

			actionForm.find("input[name='pageNum']").val($(this).attr("href"));

			actionForm.submit();
		});

		// 주문 목록 모달 처리
		$('#modal_order_detail').on('show.bs.modal', function(event) {

			$('#mdl_or_num').val(order_num);
			$('#or_date').val(order_date);
			$('#goods').html(order_item);
			$('#orderer').val(order_name);
			$('#order_notes').html(order_msg);
			$('#receiver').val(receiver);
		});

	});
</script>

<%@ include file="../include/mypage_footer.jsp"%>