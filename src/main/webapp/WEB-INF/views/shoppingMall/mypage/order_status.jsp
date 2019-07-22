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
		<h5 align="right">내 주문 : 10건</h5>
		<table class="table table-hover">
			<thead>
				<tr style="background: #b5dab6;">
					<th scope="col" style="width: 10%; font-weight: bold;">주문번호</th>
					<th scope="col" style="width: 10%; font-weight: bold;">주문일자</th>
					<th scope="col" style="font-weight: bold;">주문목록</th>
					<th scope="col" style="width: 15%; font-weight: bold;">결제금액</th>
					<th scope="col" style="width: 15%; font-weight: bold;">배송현황</th>
					<th scope="col" style="width: 15%; font-weight: bold;">주문취소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderVO" items="${orders_list }">
					<tr>
						<td>
							<h5>
								<c:out value="${orderVO.order_num }" default="null" />
							</h5>
						</td>
						<td>
							<h5><fmt:formatDate pattern="yyyy-MM-dd" value="${orderVO.or_date }" /></h5></td>
						<td><h5>
								<a href="<c:out value='${orderVO.items }'/>" data-toggle="modal" data-target="#modal_order_detail" 
								style="color: #222222;"><c:out value='${orderVO.items }' /></a>
							</h5></td>
						<td>
							<h5>￦ <c:out value="${orderVO.pymntamnt }" default="null" /></h5>
						</td>
						<td><button type="button" class="genric-btn default radius"
								data-toggle="modal" data-target="#myModal">
								<span>조회</span>
							</button></td>
						<td><button type="button" class="genric-btn danger radius"
								onclick="alert('구매가 취소되었습니다.');">
								<span>취소</span>
							</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
			</ul>
		</div>
	</div>
</div>

<%@ include file="../include/mypage_footer.jsp"%>