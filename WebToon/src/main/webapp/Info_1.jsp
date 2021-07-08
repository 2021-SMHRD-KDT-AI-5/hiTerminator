<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Purple Buzz - Info Page</title>
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

    <!-- css추가 -->
    <style>
        /* 테이블 넓이 조절 */
        table.list_table{width: 100%;}
        .infoform{float: right;}
        th,td{padding:15px;}
        table{border-collapse: collapse solid black;}
        button{width: 70px; height: 35px; margin-left: 550px;}
    </style>

</head>
<body>

	<!-- Header -->
	<%@ include file = "Header.jsp" %>


	    <!-- Start Banner Hero -->
    <section class="bg-light">
        <div class="container py-4">
            <div class="row align-items-center justify-content-between">
                <div class="contact-header col-lg-4">
                    <h1 class="h2 pb-3 text-primary">Notice</h1>
                    <!-- <h3 class="h4 regular-400">000 공지사항 페이지 입니다.</h3> -->
                    <p class="light-300">
                        본 사이트의 공지를 보여주는 페이지입니다.<br>
                        다른 문의사항이 있다면 <a rel="nofollow" href="Service.jsp" target="_blank">고객센터</a>로 문의해 주세요.
                    </p> 
                </div>
                <div class="contact-img col-lg-5 align-items-end col-md-4">
                    <img src="./assets/img/work.svg" class="rounded img-fluid" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Hero -->


    <!-- Strat 공지글 -->

    <section class="container py-5" style="height: 1000px;">

        <h1 class="col-12 col-xl-8 h2 text-left text-primary pt-3">공지사항</h1>
        <!-- 밑에 줄 때문에 가져옴 -->
        <h6 class="worksingle-heading h3 pb-3 light-300 typo-space-line"></h6>

        <hr>
        <div id="info_wrap" style="#">
            <form class="info_content">
                <input type="hidden" value="board_write" name="command">
                <table style="width: 100%;">
                    <tr>
                        <th>번호 *</th>
                        <td>1</td>
                        <th>작성자</th>
                        <td>관리자</td>
                        <th>작성일</th>
                        <td>2021-07-05</td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td>웹툰 승격 예측 서비스란?</td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td></td>
                    </tr>
                </table>
                <button><a href="Info.jsp">목록</a></button>
            </form>
        </div>
    </section>


    <!-- End 공지글 -->


	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>

</body>
</html>