<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Header -->
	<%@ include file = "Header.jsp" %>

	
	<!-- Start 회원가입 -->
	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
                <!-- 로고이미지 -->
				<img src="./assets/img/joinLogo_purple.png"> 
			</div>
		</header>

		<section class="login-input-section-wrap">

        <form>
			<div class="login-input-wrap">	
				<input type="text" name="id" placeholder="아이디 입력" id="input_id">
				<!-- <input  class="join-button-wrap button" type="button" value="중복확인" onclick="idCheck()" style="background-color: #4232c2;" > <span id="sp"></span>  -->
			</div>
			
			<div class = "join-input-wrap-button">
				<input  class="join-button-wrap-button" type="button" value="중복확인" onclick="idCheck()"> <span id="sp"></span>
			</div>

			<div class="login-input-wrap password-wrap">	
				<input type="password" name="pw" placeholder="비밀번호 입력">
			</div>

			<div class="login-input-wrap password-wrap">	
				<input type="password" name="pw_confirm" placeholder="비밀번호 재입력"></input>
			</div>

			<div class="login-input-wrap password-wrap">	
				<input type="text" name="name" placeholder="성명 입력">
			</div>

			<div class="login-input-wrap password-wrap">	
				<input type="text" name="tel" placeholder="전화번호 입력">
				
			</div>

			<div class="login-input-wrap password-wrap">	
				<input type="text" name="email" placeholder="이메일 입력">
			</div>
            
			<!-- join 가입버튼 -->
			<div>	
				<input class ="join-button-wrap-button" type="submit" value="JoinUs" class="button fit">
			</div>
        </form>
		</section>
		<!-- End 회원가입 -->
		
	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>



</body>
</html>