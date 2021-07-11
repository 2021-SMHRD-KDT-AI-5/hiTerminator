<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <% T_MemberDTO member=(T_MemberDTO)session.getAttribute("member");//member 라는 이름으로 불러와 주면 됩니다 
%> --%>
<!DOCTYPE html>
<html>
<head>
	<title>Purple Buzz HTML Template with Bootstrap 5 Beta 1</title>
    <meta charset="utf-8">
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

    <style>
        #container{margin:0 310px; width:1300px; position:relative; padding-top:10px;}
        #container #left_side{width:210px; height:500px; float:left; text-align:left;}
        #container #left_side>ul{list-style: none; padding:0;}
        #container .tit{padding:10px; color:#6610f2; font-weight:bold; border-bottom: 3px solid #6610f2;}
        #container #left_side>ul>li{margin:7px;}
        #container #left_side>ul>li>a{text-decoration:none; color: gray;}
        #container #main{width:1090px; height:500px; float:left;}
        #container #main h1{font-size:20px; font-weight:500; padding:10px; margin:0; border-bottom:1px solid gray;}
    	#container #main h1 span{font-weight:bold; color:#6610f2;}
    	#container #main #btn_section{margin:25px 0 0 15px;}
    	#container #main a{text-decoration:none; color:black; font-size:16px; border:1px solid lightgray; padding:5px;}
    	#container #main table th,td{padding:15px 0 0 15px;}
    </style>

</head>
<body>
	<!-- Header -->
    <%@ include file = "Header.jsp" %>
    <!-- Close Header -->


	<!-- Start 후원 내역 확인 -->
	
	<div id="container">
        <div id="left_side">
            <p class="tit">마이페이지</p>
            <ul>
                <li><a href="Webtoon_Favorite.jsp" target="_self">관심웹툰</a></li>
                <li><a href="DonateConfirm.jsp" target="_self">결제/후원내역</a></li>
                <li><a href="Consulting_1.jsp" target="_self">컨설팅</a></li>
                <li><a href="Mem_Update.jsp" target="_self">회원정보 수정</a></li>
            </ul>
        </div>
        <div id="main">
        	<h1><span><%-- <%=member.getName() % --%>터미네이터</span>님 환영합니다.</h1>
            <div id="main_table">
                <table>
                	<tr>
                		<th>이메일</th>
                		<td><%-- <%=member.getEmail() %> --%>terminator@smhrd.com</td>
                	</tr>
                	<tr>
                		<th>전화번호</th>
                		<td><%-- <%=member.getTel() %> --%>01012345678</td>
                	</tr>
                </table>
            </div>
            <div id=btn_section>
            <a href='Mem_Update.jsp'>회원정보수정</a>
            </div>
        </div>
    </div>


	<!-- End 후원 내역 확인 -->

	<!-- Start Footer -->
	<%@ include file = "Footer.jsp" %>
	<!-- End Footer -->

</body>
</html>