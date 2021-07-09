<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        #container #main .tb_list{margin:30px 0 0 30px; color:gray; font-size:14px; text-align:center;}
        #container #main .tb_list th{font-weight: normal; background-color:rgb(232, 232, 232);}
        #container #main .tb_list tr{border-bottom:1px solid gray; height:30px;}
        #container #paginate{width:1090px; float:left; height:20px; text-align:center; font-size:14px; margin-top:12px;}
        #container #paginate a{text-decoration: none; color:gray; padding:4px;}
        footer{clear:left;}
    </style>

</head>
<body>

	<!-- Header -->
	<%@ include file = "Header.jsp" %>


	<!-- Start 후원 내역 확인 -->
	
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
        <div id="main"><h1>후원내역</h1>
        	<form>
            <table class="tb_list">
                <colgroup>
                    <col width="200" />
                    <col width="200" />
                    <col width="200" />
                    <col width="450" />
                </colgroup>
                <thead>
                    <tr>
                        <th>후원일자</th>
                        <th>작가</th>
                        <th>후원금액</th>
                        <th>후원메세지</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>2017.07.29</td>
                        <td>너</td>
                        <td>100만원</td>
                        <td>ㅎㅇ</td>
                    </tr>
                    <tr>
                        <td>2017.07.29</td>
                        <td>너</td>
                        <td>100만원</td>
                        <td>ㅎㅇ</td>
                    </tr>
                </tbody>
            </table>
            </form>
            <div id="paginate">
                <a href="">1</a>
                <a href="">2</a>
                <a href="">3</a>
                <a href="">4</a>
                <a href="">5</a>
                <a href="">다음></a>
            </div>
        </div>
    </div>


	<!-- End 후원 내역 확인 -->

	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>


</body>
</html>