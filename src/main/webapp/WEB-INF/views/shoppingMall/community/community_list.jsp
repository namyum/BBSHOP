<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="../include/community_header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.min.js"></script>

<style>
body {
	font-size: 17px;
	font-weight: bold;
}

th, td {
	color: black;
	text-align: center;
}

a {
	color: #777777;
}
</style>

<!-- ================================게시판========================== -->
<section id="tabs" class="project-tab">
	<div class="container" style="margin: auto;">
		<div class="row">
			<div class="col-md-12">
				<nav style="width: 1200px; transform: translateX(-25px);">
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist"
						style="margin-top: 120px;">
						<a class="nav-item nav-link active" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="true"> <img
							src="resources/community/img/kbo_main.png" width="70" height="70"
							class="img-fluid rounded"></a> <a
							class="nav-item nav-link link" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="false"> <img
							src="resources/community/img/lgtwins_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/lottegiants_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/hanwhaeagles_main.png" width="80"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/kiatigers_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/doosanbears_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/ncdinos_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/samsunglions_main.png" width="75"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/kiwoomheroes_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/skwyverns_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/ktwiz_main.png" width="70"
							height="70" class="img-fluid rounded">
						</a>
					</div>
				</nav>
				<div>
					<div style="text-align: right; padding: 30px 0; width: auto;">
						<input type="button" onclick="location.href='/community_form.do'"
							value="글쓰기" />
					</div>
				</div>
				<div class="tab-content" id="nav-tabContent" style="width: auto;">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<table class="table table-bordered" cellspacing="0">
							<thead>
								<tr>
									<th style="width: 50px;">번호</th>
									<th style="width: 500px; text-align: left;">제목</th>
									<th style="width: 100px;">글쓴이</th>
									<th style="width: 150px;">날짜</th>
									<th style="width: 50px;">조회</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="board">
									<tr>
										<td><c:out value="${board.BOARD_NUM}" /></td>
										<td style="text-align: left;"><a
											href="/community_detail.do?BOARD_NUM=<c:out value="${board.BOARD_NUM}"/>"><c:out
													value="${board.TITLE}" /></a></td>
										<td><c:out value="${board.WRITER}" /></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${board.REGDATE}" /></td>
										<td><c:out value="${board.HIT}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>



					<div style="display: flex; float: right;">
						<!-- 페이지 출력 - script 항상 같이 따라가야함 -->
						<div style="padding-right: 250px;">
							<nav class="cat_page mx-auto"
								aria-label="Page navigation example">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li class="page-item page-item-left"><a class="page-link"
											href="${pageMaker.startPage-1}"><i
												class="fa fa-chevron-left" aria-hidden="true"></i> </a></li>
									</c:if>

									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<li
											class="page-item ${pageMaker.pagingvo.PAGENUM == num ? 'active':''}"><a
											class="page-link" href="${num}">${num}</a></li>
									</c:forEach>

									<c:if test="${pageMaker.next}">
										<li class="page-item page-item-right"><a
											class="page-link" href="${pageMaker.endPage+1}"><i
												class="fa fa-chevron-right" aria-hidden="true"></i> </a></li>
									</c:if>
								</ul>
							</nav>
						</div>

						<!-- 검색 조건과 키워드-->
						<div class="single-element-widget">
							<div class="default-select" id="default-select">
								<form id="searchForm" action="/community_list.do">
									<select name="TYPE">
										<option value=""
											<c:out value="${pageMaker.pagingvo.TYPE == null? 'selected':''}"/>>--</option>
										<option value="T"
											<c:out value="${pageMaker.pagingvo.TYPE == null? 'selected':''}"/>>제목</option>
										<option value="C"
											<c:out value="${pageMaker.pagingvo.TYPE == null? 'selected':''}"/>>내용</option>
										<option value="N"
											<c:out value="${pageMaker.pagingvo.TYPE == null? 'selected':''}"/>>닉네임</option>
										<option value="TC"
											<c:out value="${pageMaker.pagingvo.TYPE == null? 'selected':''}"/>>제목or내용</option>
									</select> <input type="text" name="KEYWORD"
										value='<c:out value="${pageMaker.pagingvo.KEYWORD}"/>' /> <input
										type="hidden" name="PAGENUM"
										value='<c:out value="${pageMaker.pagingvo.PAGENUM}"/>' /> <input
										type="hidden" name="AMOUNT"
										value='<c:out value="${pageMaker.pagingvo.AMOUNT}"/>' />
									<button class="btn btn-defaault">검색</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 페이징 처리 -->
<form id='actionForm' action="/community_list.do">
	<input type='hidden' name='PAGENUM'
		value='${pageMaker.pagingvo.PAGENUM }'> <input type='hidden'
		name='AMOUNT' value='${pageMaker.pagingvo.AMOUNT }'> <input
		type='hidden' name='TYPE'
		value='<c:out value="${pageMaker.pagingvo.TYPE }"/>'> <input
		type='hidden' name='KEYWORD'
		value='<c:out value="${pageMaker.pagingvo.KEYWORD }"/>'>
</form>

<script type="text/javascript">
	$(document).ready(function() {
		var actionForm = $("#actionForm");
		$(".page-item a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='PAGENUM']").val($(this).attr("href"));
			actionForm.submit();
		});
		//검색처리 이벤트
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}
			if (!searchForm.find("input[name='KEYWORD']").val()) {
				alert("키워드를 선택하세요");
				return false;
			}
			searchForm.find("input[name='PAGENUM']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
	});
</script>

<%@ include file="../include/community_footer.jsp"%>
