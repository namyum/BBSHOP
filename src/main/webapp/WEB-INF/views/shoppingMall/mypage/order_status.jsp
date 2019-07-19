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

.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
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
		<h5 align="left" style="float: left;">내 주문의 상태를 <span>조회</span>하고 <span>취소</span>할 수 있습니다.</h5>
		<h5 align="right">내 주문 : 10건</h5>
		<div class="table-responsive">
			<table class="table table-hover" style="margin-top: 30px;">
				<thead>
					<tr style="background: #b5dab6;">
						<th scope="col" style="width: 10%; font-weight: bold;">주문번호</th>
						<th scope="col" style="width: 10%; font-weight: bold;">주문일자</th>
						<th scope="col" style="font-weight: bold;">주문목록</th>
						<th scope="col" style="width: 15%; font-weight: bold;">결제금액</th>
						<th scope="col" style="width: 15%; font-weight: bold;">배송현황</th>
						<th scope="col" style="width: 15%; font-weight: bold;">주문<span>취소</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<h5>6</h5>
						</td>
						<td>
							<h5>2019-07-09</h5>
						</td>
						<td><h5><a href="#modal_order_detail" data-toggle="modal" style="color: #222222;">야구공</a></h5></td>
						<td>
							<h5>￦ 10,000</h5>
						</td>
						<td><button type="button" class="genric-btn default radius"
								data-toggle="modal" data-target="#myModal"><span>조회</span></button></td>
						<td><button type="button" class="genric-btn danger radius" onclick="alert('구매가 취소되었습니다.');"><span>취소</span></button></td>
					</tr>
					<tr>
						<td>
							<h5>5</h5>
						</td>
						<td>
							<h5>2019-07-09</h5>
						</td>
						<td><h5><a href="#modal_order_detail" data-toggle="modal" style="color: #222222;">야구공</a></h5></td>
						<td>
							<h5>￦ 10,000</h5>
						</td>
						<td><button type="button" class="genric-btn default radius"
								data-toggle="modal" data-target="#myModal"><span>조회</span></button></td>
						<td><button type="button" class="genric-btn danger radius" onclick="alert('구매가 취소되었습니다.');"><span>취소</span></button></td>
					<tr>
						<td>
							<h5>4</h5>
						</td>
						<td>
							<h5>2019-07-09</h5>
						</td>
						<td><h5><a href="#modal_order_detail" data-toggle="modal" style="color: #222222;">야구공</a></h5></td>
						<td>
							<h5>￦ 10,000</h5>
						</td>
						<td><button type="button" class="genric-btn default radius"
								data-toggle="modal" data-target="#myModal"><span>조회</span></button></td>
						<td><button type="button" class="genric-btn danger radius" onclick="alert('구매가 취소되었습니다.');"><span>취소</span></button></td>
					</tr>
					<tr>
						<td>
							<h5>3</h5>
						</td>
						<td>
							<h5>2019-07-09</h5>
						</td>
						<td><h5><a href="#modal_order_detail" data-toggle="modal" style="color: #222222;">야구공</a></h5></td>
						<td>
							<h5>￦ 10,000</h5>
						</td>
						<td><button type="button" class="genric-btn default radius"
								data-toggle="modal" data-target="#"><span>조회</span></button></td>
						<td><button type="button" class="genric-btn danger radius" onclick="alert('구매가 취소되었습니다.');"><span>취소</span></button></td>
					</tr>
					<tr>
						<td>
							<h5>2</h5>
						</td>
						<td>
							<h5>2019-07-09</h5>
						</td>
						<td><h5><a href="#modal_order_detail" data-toggle="modal" style="color: #222222;">야구공</a></h5></td>
						<td>
							<h5>￦ 10,000</h5>
						</td>
						<td><button type="button" class="genric-btn default radius"
								data-toggle="modal" data-target="#myModal"><span>조회</span></button></td>
						<td><button type="button" class="genric-btn danger radius" onclick="alert('구매가 취소되었습니다.');"><span>취소</span></button></td>
					</tr>
					<tr>
						<td>
							<h5>1</h5>
						</td>
						<td>
							<h5>2019-07-09</h5>
						</td>
						<td><h5><a href="#modal_order_detail" data-toggle="modal" style="color: #222222;">야구공</a></h5></td>
						<td>
							<h5>￦ 10,000</h5>
						</td>
						<td><button type="button" class="genric-btn default radius"
								data-toggle="modal" data-target="#myModal"><span>조회</span></button></td>
						<td><button type="button" class="genric-btn danger radius" onclick="alert('구매가 취소되었습니다.');"><span>취소</span></button></td>
					</tr>
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
</div>

<%@ include file="../include/mypage_footer.jsp"%>