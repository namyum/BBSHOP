<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" >
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Sunflower:300,500,700&amp;subset=korean" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <style>
        /*바디태그에 폰트넣기*/
        @font-face{font-family:'NanumBarunpen';font-weight:normal;src:local(NanumBarunpen);src:url("resources/shoppingMall/fonts/NanumBarunpenR.eot");src:url("resources/shoppingMall/fonts/NanumBarunpenR.woff") format("woff"), url("resources/shoppingMall/fonts/NanumBarunpenR.woff2") format("woff2")}
	@font-face{font-family:'NanumBarunpen';font-weight:bold;src:local(NanumBarunpen);src:url("resources/shoppingMall/fonts/NanumBarunpenB.eot");src:url("resources/shoppingMall/fonts/NanumBarunpenB.woff") format("woff"), url("resources/shoppingMall/fonts/NanumBarunpenB.woff2") format("woff2")}

	body{font-family:NanumBarunpen, sans-serif}
        /*
        body {
            font-family: 'Sunflower', sans-serif;
        }*/

        /* Shop,Go Cummunity 눌렀을때 뜨는 모달(로그인모달) */
        .modal {
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
		/*로그인 화면에서  회원가입 버튼을 눌렀을때 나오는 모달창*/
        .sign_up_Modal {
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
        /*아이디,비밀번호찾기 누르면 나오는 모달창*/
        .findinfo_Modal {
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
   
        /*이메일 인증눌렀을때 나오는 모달창*/
        .emailcheck_Modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1;
            /* Sit on top */
            left: 10%;
            top: 10%;
            width: 30%;
            /* Full width */
            height: 30%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
       	    background-color: rgb(0, 0, 0);
            /* Fallback color */
            background-color: #fefefe;
            /* Black w/ opacity */
        }
   		/*추가사항을 눌렀을시 나오는 모달창*/
        .moredetails_Modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 3;
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

        /* 로그인 모달의 내용*/
        .modal-content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%;
            /* Could be more or less, depending on screen size */
			
        }
        /*아이디 찾기 모달에 나오는 내용*/
        .findinfo-content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%;
            /* Could be more or less, depending on screen size */
			
			
        }
        
		/*회원가입 모달의 내용*/
        .sign_up_content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 35%;
            /* Could be more or less, depending on screen size */
        }
        /*이메일 인증 모달에 나오는 내용*/
         .emailcheck_content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 10%;
            /* Could be more or less, depending on screen size */
        }
    	/*추가사항 모달에 나오는 내용*/
        .moredetails_content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%;
            /* Could be more or less, depending on screen size */
        }
        

        /* The Close Button 스판 태그로 넣어주는 클로우즈 버튼*/
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

        /*체크박스에 넣어줄 style checked+label은 체크가 되고 라벨태그가 바로 붙었을때  밑에도 같은식 */
        input[type="checkbox"]:checked+label {
            background-position: 0 -15px;
        }

        input[type="checkbox"] {
            display: none;
        }

        input[type="checkbox"]+label {
            color: black;
        }

        input[type="checkbox"]+label span {
            display: inline-block;
            width: 19px;
            height: 19px;
            margin: -2px 10px 0 0;
            vertical-align: middle;
            background:
                url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) left top no-repeat;
            cursor: pointer;
        }

        input[type="checkbox"]:checked+label span {
            background:
                url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -19px top no-repeat;
        }

        /*동영상 내용*/
        #index-back {
            position: fixed;
            top: 0px;
            left: 0px;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            z-index: -1000;
            overflow: hidden;
        }

        /*버튼 메뉴(shop,gocommunity)의 색상. */
        .BBSHOP {
            background-color: hsla(203, 96%, 51%, 0.3);
        }

        /*모달창 투명도*/
        #loginModal {
            opacity: 0.9;
        }

        #sign_up {
            opacity: 0.9;
        }
        #findinfo{
        	opacity: 0.9;
        }
        #emailcheck{
        	opacity: 0.9;
        }
        #moredetails{
        	opacity:0.9;
        }
        
    </style>

    <script>
        function check_input() {
            var str, i, ch;
            // 아이디 체크 ----> 
            if (document.loginform.userid.value == "") {//아이디가 적혀있지 않을때
                alert("아이디를 입력하세요!!!");
                document.loginform.userid.focus(); //아이디 입력창으로 커맨드가 넘어간다.
                return;
            }
            else {
                str = document.loginform.userid.value; //아이디가 있으면 str에 아이디 값을 저장.

                for (i = 0; i < str.length; i++) { //ch에다가 하나씩 잘라서 넣어줌.
                    ch = str.substring(i, i + 1);
                    if (!((ch >= "0" && ch <= "9") || (ch >= "a" && ch <= "z")//숫자,문자가 아닐경우 특수 문자이기 때문에 다시 입력해야한다.
                        || (ch >= "A" && ch <= "Z"))) {
                        alert("특수문자가 포함, 다시 입력!!!");
                        document.loginform.userid.focus();
                        return;
                    }
                }
            } // 아이디 체크 <------

            // 패스워드 체크 ------ 아이디 체크와 같은식.>
            if (document.loginform.password.value == "") {
                alert("패스워드를 입력하세요!!!");
                document.loginform.password.focus();
                return;
            }
            else {
                str = document.loginform.password.value;

                for (i = 0; i < str.length; i++) {
                    ch = str.substring(i, i + 1);
                    if (!((ch >= "0" && ch <= "9") || (ch >= "a" && ch <= "z")
                        || (ch >= "A" && ch <= "Z"))) {
                        alert("특수문자가 포함, 다시 입력!!!");
                        document.loginform.password.focus();
                        return;
                    }
                }
            } // 패스워드 체크 <------

            loginform.submit();
        }
    </script>

</head>

<body>
    <!-- Index Background Video -->
    <video id="index-back" preload="auto" loop autoplay muted>
        <source src="resources/shoppingMall/img/indexmedia.mp4" type="video/mp4">
        <source src="resources/shoppingMall/img/indexmedia.ogg" type="video/ogg">
    </video>


    <div id="index">

        <!-- <button id="loginBtn">Login</button>-->

        <table cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td width="100%" height="700" align="center" valign="middle">
                        <table width="700" cellpadding="0" cellspacing="0" height="100">
                            <tbody>
                                <tr align = center>
                                        <!--<img style ="background-color:rgba(255, 255, 255, 0); border: none " src ="../bitbaseball/bbslogo.png">-->
                                        <br><br><br><br><br><br>
                                </tr>
                                <tr>

                                    <td style="text-align: center" class="BBSHOP" width="1000" height="100">
                                       
										<!-- 여기서 버튼을 누르면 로그인 창이 뜬다. -->>
										<button id="goShop"
                                            style="background-color: rgba(255, 255, 255, 0); border: none ; border-width: 2000px "  >
                                            <p align="center">
                                                <font color="white"> <span style="font-size: 24pt;">SHOP</span></font>
                                                <br> <br>
                                                <font color="white"><span style="font-size: 14pt;">Go Shop</span></font>

                                            </p>
                                        </button>
                                    </td>

                                    <td width="1500"></td>
                                    <td style="text-align: center" class="BBSHOP" width="1000" height="120">
                                        <button id="goCommunity"
                                            style="background-color: rgba(255, 255, 255, 0); border: none">
                                            <p align="center">
                                                <font color="white"> <span style="font-size: 22pt;">COMMUNITY</span>
                                                </font><br> <br>
                                                <font color="white"><span style="font-size: 12pt;">Go Community</span>
                                                </font>

                                            </p>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>

            </tbody>
        </table>


		<!-- 이부분 부터 로그인 모달이 띄어지는 부분이다. -->
        <div id="loginModal" class="modal">
			<!-- 로그인 모달의 내용 -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <h2 align="center">로 그 인</h2>
                <div class="modal-body" style="padding: 40px 50px;">
                    <form name="loginform" role="form" action="/shopping_main" method="post">
                        <div class="form-group">
                            <label for="userid">ID</label> <input type="text" class="form-control" id="userid"
                                name="userid" placeholder="ID를 입력하세요...">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label> <input type="text" class="form-control" id="password"
                                name="password" placeholder="Password를 입력하세요...">
                        </div>
                        <div class="checkbox">
                            <input type="checkbox" id="login_checkbox" checked /> <label
                                for="login_checkbox"><span></span>ID 저장</label>
                            <input type="checkbox" id="login_maintain_checkbox" checked /> <label
                                for="login_maintain_checkbox"><span></span>로그인 상태 유지</label>
                        </div>
                        <input type="button" value="로그인" class="btn btn-info btn-block" onclick="check_input()">
                        <Br>
                    </form>
                    <input type="button" value="비회원 로그인" class="btn btn-info btn-block">
                    <!--여기에 비회원 로그인할 컨트롤러 설정을 해야함.-->
                    <br>
                    <div style=" float:left;  margin-right:40px">
                        <Button id="sign_up_btn" class="btn btn-info btn-block">회원가입</Button> </div>

                    <div style=" float:left;"><Button id="find_info_btn" class="btn btn-info btn-block">아이디/비밀번호
                            찾기</Button></div>

                </div>


            </div>
        </div>
        <div id="findinfo" class="findinfo_Modal">
        	<!-- 아이디 /비밀번호 찾기 -->
        	<div class="findinfo-content">
        		<span class="close">&times;</span>
        		<h2 align=center>아이디 찾기</h2>
        		<form>
        			<div class=form-group>
        			<label for="findinfo_name">이름</label><br>
        			
        			<input type="text" class="form-control" id="findinfo_name" placeholder="가입시 기입한 이름을 적어주세요"><br>
        			</div>
        			<div class=form-group>
        			<label for="findinfo_phone">휴대전화</label><br>
        			<input type="text" class="form-control" id="findinfo_phone" placeholder="가입시 기입한 휴대전화 번호를 -를 제외하고 적어주세요."><br>
					</div>
        			<br>
        			<input type="submit" class="btn btn-info btn-block" value="확인">
              	</form>
           	</div>
		</div>        	
        
        <div id="sign_up" class="sign_up_Modal">
            <!-- 회원가입 모달창 -->
            <div class="sign_up_content">
                <span class="close">&times;</span>
                <h2 align="center">회 원 가 입</h2>
                <div class="sign_up_body" style="padding: 40px 50px;">

                    <form action="insertMember.me" method=post>
                        <table width=100% cellspacing=0 cellpadding=0 align=center>
                            <div class=form_singup_group>
                                <tr>
                                    <td>
                                        <label for="sign_id">ID(Email)</label><BR>

                                        <input type="text" class="form-control" id="sign_id" name="userid"
                                            placeholder="Email을 입력하세요">
                            </div>
                            </td>
                            <td><br>
                                <input type="button" class="btn btn-info btn-block" name="emailbtn" value="Email인증"
                                     style="margin-left:10px" onclick="emailAvailCheck()">

                            </td>

                            </tr>

                            <tr>
                                <td>
                                    <label for="sign_pwd">Password</label><BR>
                                    <input type="password" class="form-control" id="sign_pwd" name="password"
                                        placeholder="암호를 입력하세요">
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <label for="sign_pwd_check">Password Check</label><BR>
                                    <input type="password" class="form-control" id="sign_pwd_check"
                                        name="password_check" placeholder="암호를 다시 입력하세요">
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <label for="sign_name">Name</label><BR>
                                    <input type="text" class="form-control" id="sign_name" name="name"
                                        placeholder="이름을 입력하세요">
                                </td>

                            </tr>

                            <tr>
                                <td>
                                    <label for="sign_phone">Phone</label><BR>
                                    <input type="text" class="form-control" id="sign_phone" name="phone"
                                        placeholder="-제외한 번호를 적어주세요 ex)01012345678">
                                </td>
                                <td>
                                    <br>
                                    <input type="button" class="btn btn-info btn-block" name=phonebtn value="번호인증"
                                        onclick="checkPhone()" style="margin-left:10px">
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <label for="sign_birth">Birth</label><BR>
                                    <input type="text" class="form-control" id="sign_birth" name="birth"
                                        placeholder="생년월일을 적어주세요 ex)190701">
                                </td>

                            </tr>

                            <tr>
                                <td>
                                    <label for="sign_nickname">Nickname</label><BR>
                                    <input type="text" class="form-control" id="sign_nickname" name="nickname"
                                        placeholder="닉네임을 적어주세요">
                                </td>
                            </tr>
                </div>
                </table>
                <br>
                <input type="submit" class="btn btn-info btn-block" id="sign_btn" name="sign" value="회원가입">
                
                </form>
                
                <br>
                <button id="moredetails_btn" class="btn btn-info btn-block">추가사항 입력</button>


            </div>
        </div>

    </div>

		<div id="emailcheck" class="emailcheck_Modal">
			<div class="emailcheck_content">
				<span class="close">&times;</span>
				
				<div class="emailcheck_body" style="padding: 40px 50px;">
				
					<h2 align=center>이메일 인증</h2>
					<form>
						<div class="form-group">
					    <label for="auth">인증키</label>
                    	<input type="text" class="form-control" id="authkey" placeholder="인증키를 적어주세요"></div>
					<br>
						<input type="submit" id="authkey_submit" value="인증" class="btn btn-info btn-block">
					</form>
				</div>
			</div>
		</div>

		<div id="moredetails" class="moredetails_Modal">
        <div class="moredetails_content">
            <span class="close">&times;</span>
            <h2 align="center">추 가 사 항</h2>
            <div class="moredetail_body" style="padding: 40px 50px;">

                <form action="insertMember.me" method=post>
                    <table width=100% cellspacing=0 cellpadding=0 align=center>
                        <div class=form_moredetails_group>
                            <tr>
                                <td>
                                    <label for="team">선호 구단</label>
                                </td>
                                <td>
                                    <select>
                                        <option value="엘지">LG</option>
                                        <option value="키움">Kiwoom</option>
                                        <option value="기아">Kia</option>
                                        <option value="한화">Hanwha</option>
                                        <option value="롯데">Lotte</option>
                                        <option value="삼성">Samsung</option>
                                        <option value="엔씨">NC</option>
                                        <option value="두산">Doosan</option>
                                        <option value="케이티">KT</option>
                                        <option value="에스케이">SK</option>

                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="position">포지션</label></td>
                                <td>

                                    <div class="checkbox">
                                        <input type="checkbox" id="1루수"/> <label for="1루수"><span></span>1루수</label>
                                        <input type="checkbox" id="2루수" /> <label for="2루수"><span></span>2루수</label>
                                        <input type="checkbox" id="3루수" /> <label for="3루수"><span></span>3루수</label>
                                        <input type="checkbox" id="유격수" /> <label for="유격수"><span></span>유격수</label>
                                        <input type="checkbox" id="투수" /> <label for="투수"><span></span>&nbsp;투수 </label>
                                        <input type="checkbox" id="포수" /> <label for="포수"><span></span>&nbsp;포수 </label>
                                        <input type="checkbox" id="외야수" /> <label for="외야수"><span></span>외야수</label>

                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td width="20%">
                                    <label for="hand">좌/우</label>
                                </td>
                                <td>
                                    <div class="checkbox">
                                        <input type="checkbox" id="left_checkbox" /> <label
                                            for="left_checkbox"><span></span>좌투(오른손 착용)</label>
                                        <input type="checkbox" id="right_checkbox" /> <label
                                            for="right_checkbox"><span></span>우투(왼손 착용)</label>
                                    </div>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <label for="brand">브랜드</label></td>
                                <td>

                                    <div class="checkbox">
                                        <input type="checkbox" id="mizuno" /> <label
                                            for="mizuno"><span></span>Mizuno</label>
                                        <input type="checkbox" id="zett" /> <label for="zett"><span></span>Zett</label>
                                        <input type="checkbox" id="wilson" /> <label
                                            for="wilson"><span></span>Wilson</label>
                                        <input type="checkbox" id="ssk" /> <label for="ssk"><span></span>SSK</label>
                                        <input type="checkbox" id="hatakeyama" /> <label
                                            for="hatakeyama"><span></span>Hatakeyama </label>
                                        <input type="checkbox" id="belgard" /> <label for="belgard"><span></span>Belgard
                                        </label>
                                        <input type="checkbox" id="rawilings" /> <label
                                            for="rawilings"><span></span>Rawilings</label>
                                        <input type="checkbox" id="adidas" /> <label
                                            for="adidas"><span></span>Adidas</label>
                                        <input type="checkbox" id="nike" /> <label for="nike"><span></span>Nike</label>
                                        <input type="checkbox" id="morimoto" /> <label
                                            for="morimoto"><span></span>Morimoto</label>
                                        <input type="checkbox" id="descente" /> <label
                                            for="descente"><span></span>Descente</label>
                                        <input type="checkbox" id="brett" /> <label for="brett"><span></span>Brett
                                        </label>
                                        <input type="checkbox" id="bmc" /> <label for="bmc"><span></span>B M C </label>
                                        <input type="checkbox" id="franklin" /> <label
                                            for="franklin"><span></span>Franklin</label>
                                        <input type="checkbox" id="storm/volt" /> <label
                                            for="storm/volt"><span></span>Storm/volt</label>
                                        <input type="checkbox" id="underarmour" /> <label
                                            for="underarmour"><span></span>UnderArmour</label>
                                        <input type="checkbox" id="fila/reebok" /> <label
                                            for="fila/reebok"><span></span>FILA/Reebok</label>
                                        <input type="checkbox" id="diamond" /> <label
                                            for="diamond"><span></span>Diamond</label>
                                        <input type="checkbox" id="asics" /> <label for="asics"><span></span>Asics
                                        </label>
                                        <input type="checkbox" id="tpx/easton" /> <label
                                            for="tpx/easton"><span></span>TPX/Easton </label>
                                    </div>

                                </td>
                            </tr>
                        </div>
                    </table>
                    <br>
                    <input type="submit" class="btn btn-info btn-block" id="sign_submit_btn" name="sign" value="회원가입">
                </form>
            </div>
        </div>
    </div>
	<!-- 이부분이 이메일 양식을 체크 하는부분 -->
    <script type="text/javascript">
        var emailAvailCheck = function () {
            var userid = $('input[id=sign_id]').val();
            var emailcheck_Modal = document.getElementById('emailcheck');
            alert(userid);
            if (userid == '') {
                alert("메일 주소를 정확히 입력 해 주십시오");
                return false;
            }
            var useridarr = userid.split('@');
            if (useridarr.length < 2) {
                alert("메일 주소를 정확히 입력 해 주십시오");
                return false;
            }

            if (useridarr[0] == '' || useridarr[1] == '') {
                alert("메일 주소를 정확히 입력 해 주십시오");
                return false;
            }
            alert("이메일을 보냈습니다.");
            emailcheck_Modal.style.display="block";
        }
        var emailSendAuth = function () {
            var userid = $('input[id=sign_id]').val();
            if (userid == '') {
                alert("메일 주소를 정확히 입력 해 주십시오");
                return false;
            }
            var useridex = userid.split('@');
            if (useridex.length < 2) {
                alert("메일 주소를 정확히 입력 해 주십시오");
                return false;
            }

            if (useridex[0] == '' || useridex[1] == '') {
                alert("메일 주소를 정확히 입력 해 주십시오");
                return false;
            }

        }
    </script>

    <script>
        var modal = document.getElementById('loginModal');  //id가 loginModal인것을 찾아서 modal변수에 넣어준다.
        var modal_sign_up = document.getElementById('sign_up');
        var moredetails = document.getElementById('moredetails');
        var findinfo = document.getElementById('findinfo');

        var span1 = document.getElementsByClassName("close")[0];	//스판태그의 이벤트를 주기위해 사용.
        var span2 = document.getElementsByClassName("close")[1];
        var span3 = document.getElementsByClassName("close")[2];
        var span4 = document.getElementsByClassName("close")[3];
        var span5 = document.getElementsByClassName("close")[4];
        //SHOP, COMMUNITY 눌렀을시.
        $('#goShop, #goCommunity').click(function () {
            modal.style.display = "block"; //modal.style.display = none 일시엔 보여지지 않지만 block으로 바꾸면 내용이보인다.

        })
        //회원가입 눌렀을때
        $('#sign_up_btn').click(function () {
            modal.style.display = "none";
            modal_sign_up.style.display = "block";

        })
        //추가사항 눌렀을때
        $('#moredetails_btn').click(function () {
            modal_sign_up.style.display = "none";
            moredetails.style.display = "block";
        })
		//아이디 비밀번호 찾기 눌렀을때
        $('#find_info_btn').click(function(){
        	modal.style.display="none";
        	findinfo.style.display="block";
        })
        
        //X버튼 눌렀을때 모달창 끄기.
        span1.onclick = function () {
            modal.style.display = "none";
        }
        span2.onclick = function () {
            modal_sign_up.style.display = "none";
        }

        span3.onclick = function () {
            emailcheck.style.display = "none";
        }
       
        span4.onclick = function () {
            moredetails.style.display = "none";
        } 
        span5.onclick = function () {
            findinfo.style.display = "none";
        }

        window.onclick = function (event) {
            if (event.target == modal) { //스크립트가 시작될때의 이벤트를 만들어준다.
                modal.style.display = "none";
            } else if (event.target == modal_sign_up) {
                modal_sign_up.style.display = "none";
            }
            else if (event.target == moredetails) {
                moredetails.style.display = "none";
            }
            else if(event.target==emailcheck){
            	emailcheck.style.display="none";
            }
            else if(event.target==findinfo){
            	findinfo.style.display="none";
            }
        }


    </script>
</body>

</html>