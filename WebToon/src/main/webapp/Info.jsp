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


</head>
<body>

	<!-- Header -->
	<%@ include file = "Header.jsp" %>
	
	
	    <!-- Start Banner Hero -->
    <section class="bg-light">
        <div class="container py-4">
            <div class="row align-items-center justify-content-between">
                <div class="contact-header col-lg-4">
                    <h1 class="h2 pb-3 text-primary">공지사항</h1>
                    <!-- <h3 class="h4 regular-400">000 공지사항 페이지 입니다.</h3> -->
                    <!-- <p class="light-300">
                        Vector illustration is from <a rel="nofollow" href="https://storyset.com/" target="_blank">StorySet</a>.
                        Incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.
                        여기는 뭘 적어야지..?
                    </p> -->
                </div>
                <div class="contact-img col-lg-5 align-items-end col-md-4">
                    <img src="./assets/img/notice.png" width="250" height="250">
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Hero -->
	

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
            <div class="col-lg-8 ">
                <!-- <form class="contact-form row" method="post" action="#" role="form"> -->
                <form name = "infoform" method="post" action="#" role="form">   

                    <!-- 공지사항 검색옵션 -->
                    <select name="infoselect" title="공지사항 검색 항목" class="select_class" style="width:90px;">
                        <option value="all">전체</option>
                        <option value="title">제목</option>
                        <option value="user_name">작성자</option>
                    </select>

                    <!-- 공지사항 검색창 -->
                    <label for="info_search">
                        <span style="display: none;">검색</span>
                    </label>
                    <input type="text" id="info_search" name="search" vlaue class="inputi" style="width: 175px;">
                    
                    <!-- 공지사항 검색 버튼 이미지 -->
                    <a href="Consulting.html">
                        <img src="/assets/img/Search.png" alt="검색"style="width:27px;" >
                    </a>
                    </form>
                    </div>
                    <!-- End 검색 목록 -->
            
            
            <div class="search_list">
                <!-- 리스트 -->
                <form name="search_form" method="POST" action="">
                    <table class="list_table" summary="이 표는 커뮤니티_공지사항 게시판 리스트로 번호, 제목, 작성자, 작성일, 파일, 조회수 등 의 정보를 담고 있으며, 표 상단에 제공하는 검색박스를 이용하실 수 있습니다.">
                        <caption class="search_blind">공지사항 리스트</caption>
                        <colgroup>
                            <col style="width:40px;">
                            <col style="width:400px;">
                            <col style="width:70px;">
                            <col style="width:80px;">
                            <col style="width:60px;">
                            <col style="width:30px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">
                                    <div class="wrap">번호</div>
                                </th>
                                <th scope="col">
                                    <div class="wrap">제목</div>
                                </th>
                                <th scope="col">
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
                            <tr>
                                <td>번호</td>
                                <td>제목</td>
                                <td>작성자</td>
                                <td>작성일</td>
                                <td>조회수</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>공지글</td>
                                <td>관리자</td>
                                <td>2021-07-03</td>
                                <td>10</td>
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