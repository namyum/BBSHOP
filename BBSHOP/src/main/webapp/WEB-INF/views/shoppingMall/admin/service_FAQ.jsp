<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Material Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/demo/demo.css" rel="stylesheet" />
  
<style>
@font-face{font-family:'NanumBarunpen';font-weight:normal;src:local(NanumBarunpen);src:url("font/NanumBarunpenR.eot");src:url("font/NanumBarunpenR.woff") format("woff"), url("font/NanumBarunpenR.woff2") format("woff2")}
@font-face{font-family:'NanumBarunpen';font-weight:bold;src:local(NanumBarunpen);src:url("font/NanumBarunpenB.eot");src:url("font/NanumBarunpenB.woff") format("woff"), url("font/NanumBarunpenB.woff2") format("woff2")}

body{font-family:NanumBarunpen, sans-serif}
.input-group.no-border {
	margin-left: 50px;
}


 .info_modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1;
            /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            background-color: rgb(0, 0, 0);
            /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4);
            /* Black w/ opacity */
        }
   .info_modal_content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%;
            height:70%;
            /* Could be more or less, depending on screen size */
			
        }
    #info_modal {
            opacity: 0.9;
        }
    .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
    .close:hover,
    .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
.pagination {
	margin-left: 300px;
}

</style>
</head>

<body>
<%@include file ="sidebar.jsp" %>
 
    <div class="main-panel">
    <!-- start Navbar -->
      <%@include file='top_nav.jsp' %>
      
      <!-- End Navbar -->
      <div class="content">
        
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">FAQ</h4>
                  <div style='float:right'>
                   <a href="addGoods">
          			    <i class="material-icons" style='color:white'>create</i></a></div>
              
                </div>
                <div class="card-body">
                  <div class="table-responsive">
						<form> 
      			  <table id='categoryList' >
							<tr style='text-align:right'>
								<td><label for="category">카테고리</label> &nbsp; &nbsp;</td>
								<td><input type='checkbox' id='FAQ_all' name='FAQ_category'>전체 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='FAQ_change_cancel' name='FAQ_category'>변경/취소 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='FAQ_all' name='FAQ_category'>교환/반품 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='FAQ_all' name='FAQ_category'>상품문의&nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='FAQ_all' name='FAQ_category'>주문조회 &nbsp;&nbsp;&nbsp;</td>
												
											
							</tr>
				  </table>
						</form>
                  	<table class="table" style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                          <th style="text-align: center"  width=4%>
                          <input type='checkbox' id='checkFAQ' name='checkFAQ'>
                        </th>
                        <th style="text-align: center"  width=4%>
                          글번호
                        </th>
                        <th  style="text-align:center" width=10%>
                          카테고리
                        </th>
                        <th style="text-align: center">
                          글제목
                        </th>
                        <th style="text-align: center">
                          등록날짜
                        </th>
					   <th style="text-align: center">
                          수정
                        </th>                
					    <th style="text-align: center">
                          삭제
                        </th>
                        
                      </thead>	
                      <tbody>
                      	<tr>
                      		<td style='text-align:center'><input type='checkbox' id='checkFAQ' name='checkFAQ'>
                      		<td style='text-align:center'> <Button id="info_FAQ" type="button" class="btn btn-link" align=center>0000001</Button></td>
                      		<td style='text-align:center'>주문조회</td>
                      		<td style='text-align:center'><Button id="info_FAQ" type="button" class="btn btn-link" align=center>주문조회 관련해서 알려드립니다 불라불라랄라블라</Button></td>
                      		<td style='text-align:center'>19.07.10</td>
                      		<td style='text-align:center'><input type='button' id='modifyFAQ' class='btn btn-info btn-sm' value='수정'></td>
                      		<td style='text-align:center'><input type='submit' class='btn btn-danger btn-sm' value='삭제'></td>
                      	</tr>
                      	<tr>
                      		<td style='text-align:center'><input type='checkbox' id='checkFAQ' name='checkFAQ'>
                      		<td style='text-align:center'> <Button id="info_FAQ" type="button" class="btn btn-link" align=center>0000002</Button></td>
                      		<td style='text-align:center'>상품문의</td>
                      		<td style='text-align:center'><Button id="info_FAQ" type="button" class="btn btn-link" align=center>상품관련해서 알려드립니다</Button></td>
                      		<td style='text-align:center'>19.07.10</td>
                      		<td style='text-align:center'><input type='button' id='modifyFAQ' class='btn btn-info btn-sm' value='수정'></td>
                      		<td style='text-align:center'><input type='submit' class='btn btn-danger btn-sm' value='삭제'></td>
                      	</tr>
                      	<tr>
                      		<td style='text-align:center'><input type='checkbox' id='checkFAQ' name='checkFAQ'>
                      		<td style='text-align:center'> <Button id="info_FAQ" type="button" class="btn btn-link" align=center>0000003</Button></td>
                      		<td style='text-align:center'>변경/취소</td>
                      		<td style='text-align:center'><Button id="info_FAQ" type="button" class="btn btn-link" align=center>변경/취소해서 알려드립니다 불라불라랄라블라</Button></td>
                      		<td style='text-align:center'>19.07.10</td>
                      		<td style='text-align:center'><input type='button' id='modifyFAQ' class='btn btn-info btn-sm' value='수정'></td>
                      		<td style='text-align:center'><input type='submit' class='btn btn-danger btn-sm' value='삭제'></td>
                      	</tr>
                      	<tr>
                      		<td style='text-align:center'><input type='checkbox' id='checkFAQ' name='checkFAQ'>
                      		<td style='text-align:center'> <Button id="info_FAQ" type="button" class="btn btn-link" align=center>0000004</Button></td>
                      		<td style='text-align:center'>교환/반품</td>
                      		<td style='text-align:center'><Button id="info_FAQ" type="button" class="btn btn-link" align=center>교환/반품 관련해서 알려드립니다 불라불라랄라블라</Button></td>
                      		<td style='text-align:center'>19.07.10</td>
                      		<td style='text-align:center'><input type='button' id='modifyFAQ' class='btn btn-info btn-sm' value='수정'></td>
                      		<td style='text-align:center'><input type='submit' class='btn btn-danger btn-sm' value='삭제'></td>
                      	</tr>
                      	
                      </tbody>
                      <table width=100%>
                      <tr>
                      	 	<td align=left><button class='btn btn-dark btn-sm'>선택 삭제</button></td>
                      
                   
                      	<td style='text-align:center'>
                      		<ul class="pagination">
										<li class="page-item disabled"><a class="page-link"
											href="#">이전</a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item"><a class="page-link" href="#">다음</a></li>
									</ul>
                      	</td>
                      		
                      	<td style='text-align:right;' width=30%>
                      <div class="input-group no-border" style="margin-left: 0px;">
							<!-- Small button group -->
							<div class="btn-group" style='float:right'>
								<button class="btn btn-default btn-sm dropdown-toggle"
									type="button" data-toggle="dropdown" aria-expanded="false">
									검색 기준 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">글러브</a></li>
									<li><a href="#">배트</a></li>
									<li><a href="#">송장번호</a></li>
								</ul>
							</div>
							<input type="text" value="" class="form-control"
								style="margin-top: 5px">
							<button type="submit"
								class="btn btn-white btn-round btn-just-icon">
								<i class="material-icons">search</i>
								<div class="ripple-container"></div>
							</button>
						</div>
                      	 
                      	</tr>
                      </table>
                  	</table>
                 
                  </div>
                </div>
              </div>
              
            </div>
            
            </div>
          </div>
        </div>
      </div>
      <div id='info_modal' class='info_modal'>
      	<div class='info_modal_content'>
			<span class='close'>&times;</span>
			<h4 align =center>글조회</h4>
			<div class='modal_body' style='padding:40px 50px;'>
			<table width=100%>
				<tr>
					<td>
						<label for='writer'>작성자</label><input type='text' class=form-control id='content_writer' name='content_writer'></td> 
				</tr>
				<tr>
					<td>
						<label for='title'>제목</label><input type='text' class=form-control id='content_title' name='content_title'></td>
				</tr>
				<tr>
					<td>
						<label for='title'>말머리</label><select name='category_team'>
														<option value='Kia'>Kia</option>
														<option value='Samsung'>Samsung</option>
														<option value='SK'>SK</option>
														<option value='KT'>KT</option>
														<option value='LG'>LG</option>
														<option value='NC'>NC</option>
														<option value='Kiwoom'>Kiwoom</option>
														<option value='Hanwha'>Hanwha</option>
														<option value='Doosan'>Doosan</option>
														<option value='Lotte'>Lotte</option>
														</select>
														</td>
				</tr>
				<tr>
					<td>
						<label for='write_date'>작성일</label>
						<input type='text' id='write_date' name='write_date' class='form-control'>
						</td>
				</tr>
				<tr>
					<td>
						<label for='write_content'>내용</label>
						<input width='70%'  type='text' id='write_content' name='write_content' class='form-control'></td>
				</tr>
				
			</table>
			</form>
			
			</div>
		</div>
	 </div>


      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="https://creative-tim.com/presentation">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
              <li>
                <a href="https://www.creative-tim.com/license">
                  Licenses
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
              <span class="badge filter badge-rose active" data-color="rose"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
          <a href="https://www.creative-tim.com/product/material-dashboard" target="_blank" class="btn btn-primary btn-block">Free Download</a>
        </li>
        <!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
        <li class="button-container">
          <a href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
            View Documentation
          </a>
        </li>
        <li class="button-container github-star">
          <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
        </li>
        <li class="header-title">Thank you for 95 shares!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
        </li>
      </ul>
    </div>
  </div>
   <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/popper.min.js"></script>
  <script src="resources/admin_bootstrap/assets/js/core/bootstrap-material-design.min.js"></script>
  <script src=".${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/arrive.min.js"></script>
 
  
  <script type="text/javascript">
    var info = document.getElementById('info_modal');
    var span = document.getElementsByClassName('close')[0];

    $('#info_FAQ').click(function(){
      info.style.display = "block";
    })

    window.onclick = function (event){
      if(event.target == info){
        info.style.display="none";
      }
    }

  </script>
  
  <script>
    $(document).ready(function() {
      $().ready(function() {
    	  
  												
  		$(".sidebar-wrapper li").eq(5).addClass('active');
        
  		$sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>
</body>

</html>
