<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ include file="../include/community_header.jsp" %>

<style>
	body{
		font-size:17px;
		font-weight:bold;
	}
	
	th, td{
		color:black;
		text-align:center;
	}
	
	a{
		color:#777777;
	}
</style>

	<!-- ================================게시판========================== -->
	<section id="tabs" class="project-tab">
		<div class="container" style="margin:auto;">
			<div class="row">
				<div class="col-md-12">
					<nav style="width:1200px; transform:translateX(-25px);">
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist"
							style="margin-top: 120px;">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true"> 
								<img src="resources/community/img/kbo_main.png" width="70" height="70"
								class="img-fluid rounded"></a>
							<a class="nav-item nav-link link" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="false"> <img
								src="resources/community/img/lgtwins_main.png" width="70" height="70"
								class="img-fluid rounded"></a> <a class="nav-item nav-link"
								id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
								role="tab" aria-controls="nav-contact" aria-selected="false">
								<img src="resources/community/img/lottegiants_main.png" width="80"
								height="70" class="img-fluid rounded">
							</a> <a class="nav-item nav-link" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false"> <img
								src="resources/community/img/hanwhaeagles_main.png" width="80" height="70"
								class="img-fluid rounded"></a> <a class="nav-item nav-link"
								id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
								role="tab" aria-controls="nav-contact" aria-selected="false">
								<img src="resources/community/img/kiatigers_main.png" width="80"
								height="70" class="img-fluid rounded">
							</a> <a class="nav-item nav-link" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false"> <img
								src="resources/community/img/doosanbears_main.png" width="70" height="70"
								class="img-fluid rounded"></a> <a class="nav-item nav-link"
								id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
								role="tab" aria-controls="nav-contact" aria-selected="false">
								<img src="resources/community/img/ncdinos_main.png" width="80" height="70"
								class="img-fluid rounded">
							</a> <a class="nav-item nav-link" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false"> <img
								src="resources/community/img/samsunglions_main.png" width="75" height="70"
								class="img-fluid rounded"></a> <a class="nav-item nav-link"
								id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
								role="tab" aria-controls="nav-contact" aria-selected="false">
								<img src="resources/community/img/kiwoomheroes_main.png" width="80"
								height="70" class="img-fluid rounded">
							</a> <a class="nav-item nav-link" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false"> <img
								src="resources/community/img/skwyverns_main.png" width="70" height="70"
								class="img-fluid rounded"></a> <a class="nav-item nav-link"
								id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
								role="tab" aria-controls="nav-contact" aria-selected="false">
								<img src="resources/community/img/ktwiz_main.png" width="70" height="70"
								class="img-fluid rounded">
							</a>
						</div>
					</nav>
					<div><div style="text-align: right; padding:30px 0;width:auto;">
						<input type="button" onclick="location.href='/community_form'" value="글쓰기"/>
						</div>
					</div>
					<div class="tab-content" id="nav-tabContent" style="width:auto;">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table table-bordered" cellspacing="0">
								<thead>
									<tr>
										<th style="width:50px;">번호</th>
										<th style="width:500px; text-align:left;">제목</th>
										<th style="width:100px;">글쓴이</th>
										<th style="width:150px;">날짜</th>
										<th style="width:50px;">조회</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>10</td>
										<td style="text-align:left;"><a href="/community_detail">엘지 넘잘해요</a></td>
										<td>엔젤지수</td>
										<td>2019/07/10</td>
										<td>5</td>
									</tr>
									<tr>
										<td>9</td>
										<td style="text-align:left;"><a href="/community_detail">윌슨 잘생겼어요</a></td>
										<td>윌슨여친</td>
										<td>2019/06/10</td>
										<td>35</td>
									</tr>
									<tr>
										<td>8</td>
										<td style="text-align:left;"><a href="/community_detail">정우영 잘생겼어요</a></td>
										<td>우영짱짱</td>
										<td>2019/07/02</td>
										<td>59</td>
									</tr>
									<tr>
										<td>7</td>
										<td style="text-align:left;"><a href="/community_detail">유강남 귀여워요</a></td>
										<td>강남강남</td>
										<td>2019/04/18</td>
										<td>27</td>
									</tr>
									<tr>
										<td>6</td>
										<td style="text-align:left;"><a href="/community_detail">이천웅 잘생겼어요</a></td>
										<td>처눙처눙</td>
										<td>2019/01/10</td>
										<td>32</td>
									</tr>
									<tr>
										<td>5</td>
										<td style="text-align:left;"><a href="/community_detail">엘지 넘잘해요</a></td>
										<td>엔젤지수</td>
										<td>2019/07/10</td>
										<td>5</td>
									</tr>
									<tr>
										<td>4</td>
										<td style="text-align:left;"><a href="/community_detail">윌슨 잘생겼어요</a></td>
										<td>윌슨여친</td>
										<td>2019/06/10</td>
										<td>35</td>
									</tr>
									<tr>
										<td>3</td>
										<td style="text-align:left;"><a href="/community_detail">정우영 잘생겼어요</a></td>
										<td>우영짱짱</td>
										<td>2019/07/02</td>
										<td>59</td>
									</tr>
									<tr>
										<td>2</td>
										<td style="text-align:left;"><a href="/community_detail">유강남 귀여워요</a></td>
										<td>강남강남</td>
										<td>2019/04/18</td>
										<td>27</td>
									</tr>
									<tr>
										<td>1</td>
										<td style="text-align:left;"><a href="/community_detail">이천웅 잘생겼어요</a></td>
										<td>처눙처눙</td>
										<td>2019/01/10</td>
										<td>32</td>
									</tr>
								</tbody>
							</table>
						</div>


						
							<div style="display: flex; float:right;">
								<!-- 페이지 출력 - script 항상 같이 따라가야함 -->
								<div style="padding-right:250px;">
									<nav class="cat_page mx-auto"
										aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item page-item-left"><a
												class="page-link" href="#"> <i
													class="fa fa-chevron-left" aria-hidden="true"></i>
											</a></li>
											<li class="page-item active"><a class="page-link"
												href="#">01</a></li>
											<li class="page-item"><a class="page-link" href="#">02</a>
											</li>
											<li class="page-item"><a class="page-link" href="#">03</a>
											</li>
											<li class="page-item"><a class="page-link" href="#">04</a>
											</li>
											<li class="page-item"><a class="page-link" href="#">05</a>
											</li>
											<li class="page-item page-item-right"><a
												class="page-link" href="#"> <i
													class="fa fa-chevron-right" aria-hidden="true"></i>
											</a></li>
										</ul>
									</nav>
								</div>

								<!-- select -->
								<div>
									<div class="single-element-widget">
										<div class="default-select" id="default-select">
											<select>
												<option value="1">English</option>
												<option value="1">Spanish</option>
												<option value="1">Arabic</option>
												<option value="1">Portuguise</option>
												<option value="1">Bengali</option>
											</select> <input type="text" placeholder="">
											<button>검색</button>
										</div>
									</div>
								</div>

							</div>

						



					</div>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="../include/community_footer.jsp" %>
