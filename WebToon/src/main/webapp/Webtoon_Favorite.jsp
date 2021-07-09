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
<!--
    
TemplateMo 561 Purple Buzz

https://templatemo.com/tm-561-purple-buzz

-->
    <style>
        #container{margin:0 310px; width:1300px; position:relative; padding-top:10px}
        #container #left_side{width:210px; height:500px; float:left; text-align:left;}
        #container #left_side>ul{list-style: none; padding:0;}
        #container .tit{padding:10px; color:#6610f2; font-weight:bold; border-bottom: 3px solid #6610f2;}
        #container #left_side>ul>li{margin:7px;}
        #container #left_side>ul>li>a{text-decoration:none; color: gray;}
        #container #main{ width:1090px; height:500px; float:left;}
        #container #main h1{font-size:20px; font-weight:500; padding:10px; margin:0; border-bottom:1px solid gray;}
        #container #main .img_list{margin-top:30px; margin-bottom:0; padding-left:0;}
        #container #main .img_list>li{width:1090px; height:96px; display:inline-block; font-size:15px; border-bottom: 1px solid gray; position:relative;}
        #container #main .img_list>li>.thumb{height:90px; display:inline; float:left; background-color:yellow; margin-top:3px 0px;}
        #container #main .img_list>li>dl{width:70px; float:left; margin: 2px 0 0 7px;}
        #container #main .img_list>li>dl>dt>a{color:black; font-weight:bold;}
        #container #main .img_list>li>dl>dd{height:25px; margin:0px}
        #container #main .rating_type{height:25px;}
        #container #main .img_list>li a{text-decoration: none; color:gray;}
        #container #main .more{width: 90px; height:25px; text-align:center; border:1px solid lightgray;}
        #container #main .info{right:120px; bottom:10px; position:absolute;}
        #container #main .enjoy{right:20px; bottom:10px; position:absolute;}
        
        #container #paginate{width:1090px; float:left; height:20px; text-align:center; font-size:14px; margin-top:12px;}
        #container #paginate a{text-decoration: none; color:gray; padding:4px;}
        footer{clear:left;}
    </style>
</head>
<body>
    <!-- Header -->
    <%@ include file = "Header.jsp" %>
    <!-- Close Header -->


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
        <div id="main"><h1>관심웹툰</h1>
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
                    <a href="" class="more info">상세정보 ></a>
                    <a href="" class="more enjoy">보러가기 ></a>
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
                            <span class="star">확률</span>
                            <!-- <span class="star"><em style="width:98.22%">점수</em></span> -->
                            <strong>70%</strong>
                        </div>
                    </dd>
                    <a href="" class="more info">상세정보 ></a>
                    <a href="" class="more enjoy">보러가기 ></a>
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
                            <span class="star">확률</span>
                            <!-- <span class="star"><em style="width:98.22%">점수</em></span> -->
                            <strong>70%</strong>
                        </div>
                    </dd>
                    <a href="" class="more info">상세정보 ></a>
                    <a href="" class="more enjoy">보러가기 ></a>
                    </dl>
                </li>
            </ul>
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


    <!-- Start Footer -->
	<%@ include file = "Footer.jsp" %>
	<!-- End Footer -->


    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <!-- Load jQuery require for isotope -->
    <script src="assets/js/jquery.min.js"></script>
    <!-- Isotope -->
    <script src="assets/js/isotope.pkgd.js"></script>
    <!-- Page Script -->
    <script>
        $(window).load(function() {
            // init Isotope
            var $projects = $('.projects').isotope({
                itemSelector: '.project',
                layoutMode: 'fitRows'
            });
            $(".filter-btn").click(function() {
                var data_filter = $(this).attr("data-filter");
                $projects.isotope({
                    filter: data_filter
                });
                $(".filter-btn").removeClass("active");
                $(".filter-btn").removeClass("shadow");
                $(this).addClass("active");
                $(this).addClass("shadow");
                return false;
            });
        });
    </script>
    <!-- Templatemo -->
    <script src="assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="assets/js/custom.js"></script>

</body>
</html>