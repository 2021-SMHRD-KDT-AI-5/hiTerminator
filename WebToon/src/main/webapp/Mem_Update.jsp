<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
        #container{margin:0 310px; width:1300px; position:relative; height: 800px; padding-top: 10px;}
        #left_side{width:210px; float:left; text-align:left;}
        #container ul{list-style: none; padding:0;}
        .tit{padding:10px; color:#6610f2; font-weight:bold; border-bottom: 3px solid #6610f2;}
        #left_side>ul>li{ margin:7px;}
        #left_side>ul>li>a{text-decoration:none; color: gray;}
        #main{ width:1090px; float:left;}
        #main h1{font-size:20px; font-weight:500; padding:10px; margin:0;}
        #main p{display:inline-block; width:120px; font-size:13px; text-align:center; color:gray;}
        #main ul li:first-child{border-top: 1px solid gray; border-bottom:1px dashed lightgray;}
        #main ul li{padding:17px 15px 5px 15px; border-bottom:1px dashed lightgray;}
        .submit_btn{background-color:#6610f2; width: 80px; height:30px; margin-top:15px; border:0px; color:white; font-size:13px;}
        footer{clear:left;}
    </style>

</head>
<body>

	<!-- Header -->
	<%@ include file = "Header.jsp" %>
	
	<!-- Start  회원정보수정 -->
	    <div id="container">
        <div id="left_side">
            <p class="tit">마이페이지</p>
            <ul>
                <li><a href="" target="_self">관심웹툰</a></li>
                <li><a href="" target="_self">결제/후원내역</a></li>
                <li><a href="" target="_self">컨설팅</a></li>
                <li><a href="" target="_self">회원정보 수정</a></li>
            </ul>
            
        </div>
        <div id="main"><h1>회원정보수정</h1>
            <ul>
                <form action="Mem_UpdateCon" method="post">
                    <!-- <li>접속한 Email : < % =member.getEmail() %></li> -->
                    <li><p>이름</p><input type="text" name="name" placeholder="수정할 이름 입력" style="width: 500px; margin: 0 auto;"></li>
                    <li><p>비밀번호</p><input type="password" name="pw" placeholder="수정할 비밀번호 입력" style="width: 500px; margin: 0 auto;"></li>
                   <!--  <li><p>비밀번호 확인</p><input type="password" name="pw_confirm" placeholder="수정할 비밀번호 확인" style="width: 500px; margin: 0 auto;"></li> -->
                    <li><p>전화번호</p><input type="text" name="tel" placeholder="수정할 전화번호 입력" style="width: 500px; margin: 0 auto;"></li>
                    <li><p>이메일</p><input type="text" name="email" placeholder="수정할 이메일 입력" style="width: 500px; margin: 0 auto;"></li>
                    <li><p>작가</p>YES<input type="checkbox" name="artist" value="Y" style="width: 200px; margin: 0 auto;">
                                    NO<input type="checkbox" name="artist" value="N" style="width: 200px; margin: 0 auto;"></li>
                    <li><p>작품 등록하기</p><input type="text" name="webtoon_link" placeholder="등록할 작품 주소 입력" style="width: 500px; margin: 0 auto;"></li>
                    <div id="btn_section">
                        <input type="submit" value="수정완료" class="submit_btn">
                        <input type="button" value="수정취소" class="submitCancel_btn">   
                    </div>
                </form>
            </ul>
        </div>
    </div>
    <!-- end 회원정보수정 -->
	
	
	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>

</body>
</html>