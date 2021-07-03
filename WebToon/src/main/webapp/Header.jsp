<%@page import="model.T_MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- MemberDTO 객체 생성, session에 저장되어 있으므로 session.getAttribute -->
<%
/*  T_MemberDTO member = (MemberDTO)session.getAttribute("member");*/

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Purple Buzz HTML Template with Bootstrap 5 Beta 1</title>
  
    <meta charset="UTF-8">
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
<!--
    
TemplateMo 561 Purple Buzz

https://templatemo.com/tm-561-purple-buzz

-->

    <style>
        #join{width:500px; margin-left:auto; margin-right:auto;}
        #join>ul li{list-style: none; height:40px;}
    </style>

</head>
<body>

	<!-- Header -->
        <nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">
            <div class="container d-flex justify-content-between align-items-center">
                <a class="navbar-brand h1" href="Main.html">
                    <i class='bx bx-buildings bx-sm text-dark'></i>
                    <span class="text-dark h4">Purple</span> <span class="text-primary h4">Buzz</span>
                </a>
                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
    
                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
                    <div class="flex-fill mx-xl-5 mb-2">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-xl-5 text-center text-dark">
                            
                            <li class="nav-item">
                                <!-- <a class="nav-link btn-outline-primary rounded-pill px-3" href="Info.html">공지사항</a> -->
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Main.html">홈</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Predict.html">승격예측</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Consulting.html">컨설팅</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Service.html">고객센터</a>
                            </li>
                            <li class="nav-item">
                                <!-- <a class="nav-link btn-outline-primary rounded-pill px-3" href="Login.html">로그인</a> -->
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Info.html">공지사항</a>
                            </li>
                        </ul>
                    </div>
                    
                    
                    <!-- 오른쪽 상단 아이콘 -->
                    <div class="navbar align-self-center d-flex">
                    
                    	<%-- <%
						if (member != null) { //로그인 됐을 때

							if (member.getEmail().equals("admin")) { //아이디가 관리자일때
							%> <a href="select.jsp">회원삭제</a> <%
							
 							} else {
 							%> <!-- 다른 계정인 경우 --> <a href="update.jsp">개인정보수정</a> <%
 							}
		 				%> <a href="logout.jsp">로그아웃</a> <%
		
						} else {
 						%> <a href="#menu">로그인</a> <%
 						}
						%>  --%>
                    
                    
                        <!-- 종모양 i태그 -->
                        <!-- <a class="nav-link" href="#"><i class='bx bx-bell bx-sm bx-tada-hover text-primary'></i></a> -->

                        
                        <!-- 로그인 전, 실패엔 안나옴 / 로그인 성공하면 회원수정 아이콘 나오기 -->
                        <a class="nav-link" href="#"><i class='bx bx-cog bx-sm text-primary'></i>회원수정</a>
                        
                        <!-- 로그인 전에는 Login.html으로 연결 / 로그인 성공시 회원정보수정 Mem_update.jsp로 이동 -->

                        <a class="nav-link" href="Mem_Update.jsp"><i class='bx bx-cog bx-sm text-primary'></i>회원수정</a>

                        <a class="nav-link"href = "Login.html"><i class='bx bx-user-circle bx-sm text-primary'></i></a>
                    </div>
                    
                </div>
            </div>
        </nav>
        <!-- Close Header -->
        

</body>
</html>