<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="./assets/css/Login.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <!-- Load Require CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font CSS -->
    <link href="assets/css/boxicon.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
    <!-- Load Tempalte CSS -->
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/custom.css">

    <link rel="stylesheet" href="./assets/css/Login.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>

	<style>
	.login-button-wrap input{
		width: 465px;
		height :48px;
		font-size: 18px;
		background: var(--bs-primary);
		color: white;
		border: solid 1px var(--bs-purple);
		}
	</style>
  <script>

    /* 로그인 체크 */
	function login_check() {
		var id = document.getElementById("member_id"); /* 태그만 가져온 것 -> 실질적인 값도 가져와야함 */
		var pw = document.getElementById("pw");
		//altert(input.value) /* input 태그의 값을 가져올 때 // html,text는 innerHTML innerTEXT */

		// ajax 활용(버튼에 onclick 속성 줌 ->함수 ) 
		$.ajax({
			type : "post", //데이터 전송방식 
			// 서버로 보낼 데이터(사용자가 적은 이메일) -> {key(from 태그의 name값) : value}
			data : { 'member_id' : id.value, 'pw' : pw.value },
			url : "LoginCon", // 데이터를 보낼 서버 페이지
			dataType : "text", // 응답 데이터의 타입 지정
			// 요청에 성공 시 실행할 함수 정의 -> 가능 True / False
			success : function(jdata) { //data : 응답할 때 보내줄 값(true,false) 가지고 있음
				if(jdata=='0') {
				    alert('아이디 또는 비밀번호를 잘못 입력하셨습니다.'); // 알림창
				    location.href = "Login.jsp";
				} else {
					location.href = "Service.jsp";
				}
			},
			// 요청에 실패시 실행할 함수 정의
			error : function()  {
				alert("요청 실패!");
			}
		});
    	
	}
    </script>	
</head>
<body>
	<!-- Header -->
    <%@ include file = "Header.jsp" %>
    <!-- Close Header -->
    

	<div class="main-container">
		<div class="main-wrap">
		<header>
			
			<div class="logo-wrap">
                <!-- 로고이미지 -->
				<img src="./assets/img/loginLogo_purple.png"> 
			</div>
		</header>


	<form>
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="아이디를 입력하세요." name="member_id" id = "member_id" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="비밀번호를 입력하세요." name="pw" id="pw" type="password"></input>
			</div>
			<div class="login-button-wrap">
				<!-- 로그인 버튼 -->
                <input type="button" value="로그인" onclick = "login_check()" id="input_login">
			</div>
			<div class="login-stay-sign-in">
                <span>아이디가 없다면 <span> <a href="Join.jsp">회원가입</a>

			</div>
			</section>
	</form>
	
	

	<!-- Start Footer -->
	<%@ include file = "Footer.jsp" %>
	<!-- End Footer -->


    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <!-- Load jQuery require for isotope -->
    <script src="assets/js/jquery.min.js"></script>
    <!-- Isotope -->
    <script src="assets/js/isotope.pkgd.js"></script>
    <!-- Page Script -->
    <script>
        $(window).load(function() {
            // init Isotope
            var $projects = $('.projects').isotope({
                itemSelector: '.project',
                layoutMode: 'fitRows'
            });
            $(".filter-btn").click(function() {
                var data_filter = $(this).attr("data-filter");
                $projects.isotope({
                    filter: data_filter
                });
                $(".filter-btn").removeClass("active");
                $(".filter-btn").removeClass("shadow");
                $(this).addClass("active");
                $(this).addClass("shadow");
                return false;
            });
        });
   </script>
   
 
    
    <!-- Templatemo -->
    <script src="assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="assets/js/custom.js"></script>
		</div>
	</div>
	
</body>
</html>