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
<script src="assets/js/jquery.min.js"></script>
	
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

        <form action ="JoinCon" method = "post">
			<div class="login-input-wrap">	
				<input type="text" name="member_id" placeholder="아이디 입력" id="input_id">
				<!-- <input  class="join-button-wrap button" type="button" value="중복확인" onclick="idCheck()" style="background-color: #4232c2;" > <span id="sp"></span>  -->
			</div>
			
			<div class = "join-input-wrap-button">
				<input  class="join-button-wrap-button" type="button" value="ID 중복확인" onclick="IdCheck()"> 
				<span id="sp"></span>
			</div>

			<div class="login-input-wrap password-wrap">	
				<input type="password" name="pw" placeholder="비밀번호 입력">
			</div>

			<!-- <div class="login-input-wrap password-wrap">	
				<input type="password" name="pw_confirm" placeholder="비밀번호 재입력"></input>
			</div> -->

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
				<input class ="join-button-wrap-button" type="submit" value="회원가입" class="button fit">
			</div>
        </form>
		</section>
		<!-- End 회원가입 -->
		
	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>


	<script>
	
	// 회원가입 아이디 중복 체크
	function IdCheck() { /* onclick = idCheck() 라고 써둠 -> 함수로 만들어야함 */
		var input = document.getElementById("input_id"); /* 태그만 가져온 것 -> 실질적인 값도 가져와야함 */
		//altert(input.value) /* input 태그의 값을 가져올 때 // html,text는 innerHTML innerTEXT */

		// ajax 활용(버튼에 onclick 속성 줌 ->함수 )
		$.ajax({
			type : "post", //데이터 전송방식 : get or post
			data : {
				'member_id' : input.value
			}, // 서버로 보낼 데이터(사용자가 적은 이메일) -> {key(from 태그의 name값) : value}
			url : "IdCheckCon", // 데이터를 보낼 서버 페이지
			dataType : "text", // 응답 데이터의 타입 지정
			// 요청에 성공 시 실행할 함수 정의 -> 가능 True / False
			success : function(data) { //data : 응답할 때 보내줄 값(true,false) 가지고 있음
				// alert(data); // 알림창
				var sp = document.getElementById("sp") // id가 sp인 span 태그 요소 가져옴 
				if (data == "true") {
					//응답받은 텍스트가 true라면(아이디가 있음 ->불가능)
					sp.innerHTML = "불가능한 ID입니다.";
				} else {
					sp.innerHTML = "가능한 ID입니다.";

				}
			},
			// 요청에 실패시 실행할 함수 정의
			error : function() {
				alert("요청 실패!")
			}
		});
	}
	
	
	
	</script>

</body>
</html>