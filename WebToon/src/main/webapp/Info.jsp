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
        th{background-color: #eeeeee; text-align: center;}
        td{text-align: center;}
        .py-5{height: 800px;}
    </style>
    
</head>
<body>

	<!-- Header -->
	<%@ include file = "Header.jsp" %>
	
	
        <!-- Start Choice -->
        <section class="why-us banner-bg bg-light">
            <div class="container my-4">
                <div class="row">
                    <div class="banner-img col-lg-5">
                        <img src="./assets/img/work.svg" class="rounded img-fluid" alt="">
                    </div>
                    <div class="banner-content col-lg-7 align-self-end">
                        <h2 class="h2 pb-3">Notice</h2>
                        <p class="text-muted pb-5 light-300">
                        본 사이트의 공지를 보여주는 페이지입니다.<br>
                        다른 문의사항이 있다면 <a rel="nofollow" href="Service.jsp" target="_blank">고객센터</a>로 문의해 주세요. 
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Choice -->


    <!-- Start Contact -->
    <section class="container py-5">

        <h1 class="col-12 col-xl-8 h2 text-left text-primary pt-3">공지사항</h1>
        <!-- 밑에 줄 때문에 가져옴 -->
        <h6 class="worksingle-heading h3 pb-3 light-300 typo-space-line"></h6>

        <!-- <h2 class="col-12 col-xl-8 h4 text-left regular-400">공지사항입니다. </h2>
        <p class="col-12 col-xl-8 text-left text-muted pb-5 light-300">
            설명설명설명
        </p> -->

        <div class="row pb-4">

                    <!-- Start Contact Form -->
                    <div class="col-lg-8 " style="padding-top: 10px; text-align: right;">
                        <!-- <form class="contact-form row" method="post" action="#" role="form"> -->
                        <form class = "infoform" name = "infoform" method="post" action="#" role="form">   
        
                            <!-- 공지사항 검색옵션 -->
                            <select name="infoselect" title="공지사항 검색 항목" class="select_class" style="width:150px; height: 40px;">
                                <option value="all">전체</option>
                                <option value="title">제목</option>
                                <option value="user_name">작성자</option>
                            </select>
        
                            <!-- 공지사항 검색창 -->
                            <label for="info_search">
                                <span style="display: none;">검색</span>
                            </label>
                            <input type="text" id="info_search" name="search" vlaue class="inputi" style="width: 500px; height: 40px;">
                            
                            <!-- 공지사항 검색 버튼 이미지 -->
                            <a href="Consulting.html">
                                <img src="assets/img/Search.png" alt="검색"style="width:30px; margin :10px;" >
                            </a>
                        </form>
                    </div>
                            <!-- End 검색 목록 -->
                    
                    
                    <div class="search_list" style="padding-top: 40px;">
                        <!-- 리스트 -->
                        <form name="search_form" method="POST" action="">
                            <table class="list_table" class="table table-striped"">
                                <!-- <caption class="search_blind">공지사항 리스트</caption> -->
                                <colgroup>
                                    <col style="width:40px;">
                                    <col style="width:250px;">
                                    <col style="width:70px;">
                                    <col style="width:80px;">
                                    <col style="width:100px;">
                                    <col style="width: 30px;">
                                </colgroup>
                                <thead>
                                    <tr  style="height: 50px;">
                                        <th scope="col" >
                                            <div class="wrap">번호</div>
                                        </th>
                                        <th scope="col">
                                            <div class="wrap">제목</div>
                                        </th>
                                        <th scope="col" >
                                            <div class="wrap">작성자</div>
                                        </th>
                                        <th scope="col">
                                            <div class="wrap">작성일</div>
                                        </th>
                                        <th scope="col">
                                            <div class="wrap">조회</div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                     <!-- 여기에 글이 들어감 -->
                                    <tr style="height: 50px;">
                                        <td>1</td>
                                        <td><a href="Info_1.jsp">웹툰 승격 예측 서비스란?</a></td>
                                        <td>작성자1</td>
                                        <td>2021-07-05</td>
                                        <td>조회수1</td>
                                    </tr>
                                    <tr style="height: 50px;">
                                        <td>2</td>
                                        <td><a href="Info_2.jsp">2021년도 3분기 1:1 컨설팅 모집 안내</a></td>
                                        <td>작성자2</td>
                                        <td>2021-07-06</td>
                                        <td>조회수2</td>
                                    </tr>
                                    <tr style="height: 50px;">
                                        <td>3</td>
                                        <td><a href="Info_3.jsp">후원기능 사용 방법</a></td>
                                        <td>작성자3</td>
                                        <td>2021-07-07</td>
                                        <td>조회수3</td>
                                    </tr>
                                    <tr style="height: 50px;">
                                        <td>4</td>
                                        <td><a href="Info_4.jsp">업데이트 소식</a></td>
                                        <td>작성자4</td>
                                        <td>2021-07-08</td>
                                        <td>조회수4</td>
                                    </tr>
                                </tbody>
                                <!-- 리스트 끝 -->
                            </table>
                        </form>
                    </div>
                </div>
            </section>
            <!-- End Contact -->
    


    
    	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>

</body>
</html>