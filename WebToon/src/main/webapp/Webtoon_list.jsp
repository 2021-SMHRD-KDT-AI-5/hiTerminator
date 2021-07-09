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
        #container{width: 100%;}
        #search{ width:700px;margin-left:auto; margin-right:auto;}
        #search>input{width:600px; height:40px; margin-top:40px; margin-bottom:10px;}
        #content{width:100%;padding-right: 300px;padding-left: 300px; height: 1000px;}
        #tab_menu>ul>li{display:inline-block; text-align:center;}
        .site_menu{width:978px; margin-left: auto; margin-right: auto;}
        .site_menu>li{width:130px; margin-top: 10px; margin-bottom:10px;}
        a{text-decoration: none; color:gray;}
        .genre_menu>li{display:inline-block; width:90px; border:1px solid lightgray; height:30px}
        /* display:inline-block; 제거 */
        .img_list>li{width:235px; height:110px; display:inline-block;  font-size:15px;} 
        .img_list>li>.thumb{display:inline; float:left; background-color:yellow;}
        .img_list>li>dl{width:70px; float:left; margin: 2px 0 0 7px;}
        .img_list>li>dl>dt>a{color:black; font-weight:bold;}
        .img_list>li>dl>dd{height:25px; margin:0px}
        .rating_type{height:25px;}
        .more{width: 90px; height:25px; background-color:#4232c2; text-align:center;}
        .more>a{color:white;}

        li{margin: 10px;}

        /* 상세웹툰 추가 */
        .main-thumb{padding-top: 50px;}
        .comicinfo{float: left; width:100%}

        hr {
        border: none;
        border-top: 3px dotted blue;
        color: #fff;
        background-color: #fff;
        height: 1px;
        width: 100%;
}
        /* 후원 css 추가 */
        .list_table{width: 100%;}
        th{text-align: center; height: 40px;}
        td{text-align: center; height: 40px;}
        .donation_btn:hover{color:white; box-shadow: 200px 0 0 0 rgba(66, 50, 194, 1) inset;
            transition: all 0.9s, color 0.3s;}
        body > section > div.search_list > form > table > tbody > tr > td:nth-child(4) > input{width: 75px; height: 40px;}    
        .donaiton_input{height: 40px;}
        .donaiton_input_message{width: 400px; height: 40px;}
        /* 내용 body쪽 길이 */
        .container.py-5{height: 1300px;}

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
                                <h1 class="h2 pb-3 text-primary">웹툰 승격 확률 예측</h1>
                                <h4 class="h4 regular-400">고객센터를 통해 궁금증을 해결하세요!</h4>
                                <p class="light-300">코로나19의 확산을 방지하고 지원 전문가의 건강을 지키기 위해 지원팀의 규모를 축소하여
                                    운영하게 되었습니다. 도움이 필요한 제품과 관련하여 전화로 문의하는 데 문제가 있는 경우 
                                    관리자 이메일을 참조하세요.</p>
                                <!-- <p class="light-300">
                                    Vector illustration is from <a rel="nofollow" href="https://storyset.com/" target="_blank">StorySet</a>.
                                    Incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.
                                </p> -->
                            </div>
                            <div class="contact-img col-lg-5 align-items-end col-md-4">
                                <img src="./assets/img/up.png" style="width: 400px; height: 400px;">
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Banner Hero -->


            <!-- Start 웹툰 승격페이지 -->

            <div id="container">
                <div id="search">
                    <input type="text" placeholder="검색어 입력">
                    <button>검색</button>
                </div>
                <div id="content">
                    <!-- <div id="first">
                        <ul>
                            <li>
                                <ul>
                                    <li><a onclick="" href="">제목</a></li>
                                    <li><a onclick="" href="">제목</a></li>
                                    <li><a onclick="" href="">제목</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div> -->
                            <div id="tab_menu">
                                <ul class="site_menu">
                                    <li><a onclick="" href="">네이버</a></li>
                                    <li><a onclick="" href="">다음</a></li>
                                    <li><a onclick="" href="">사이트or장르</a></li>
                                    <li><a onclick="" href="">사이트or장르</a></li>
                                    <li><a onclick="" href="">사이트or장르</a></li>
                                    <li><a onclick="" href="">사이트or장르</a></li>
                                </ul>
                                <ul class="genre_menu">
                                    <li><a onclick="" href="">일상</a></li>
                                    <li><a onclick="" href="">개그</a></li>
                                    <li><a onclick="" href="">판타지</a></li>
                                    <li><a onclick="" href="">액션</a></li>
                                    <li><a onclick="" href="">드라마</a></li>
                                    <li><a onclick="" href="">순정</a></li>
                                    <li><a onclick="" href="">감성</a></li>
                                    <li><a onclick="" href="">스릴러</a></li>
                                    <li><a onclick="" href="">시대극</a></li>
                                    <li><a onclick="" href="">스포츠</a></li>
                                </ul>
                            </div>
                    <div id="main_list">
                        <ul class="img_list">
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">제목</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">작가</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star">확률</span>
                                        <!-- <span class="star"><em style="width:98.22%">점수</em></span> -->
                                        <strong>70%</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">제목</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">작가</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">평점</em></span>
                                        <strong>9.82</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">제목</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">작가</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">평점</em></span>
                                        <strong>9.82</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">제목</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">작가</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">평점</em></span>
                                        <strong>9.82</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">제목</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">작가</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">평점</em></span>
                                        <strong>9.82</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- End 웹툰 승격페이지 -->
    
    

	<!-- Start Footer -->
	<%@ include file = "Footer.jsp" %>
	

</body>
</html>