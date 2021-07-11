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
        
        a{text-decoration:none; !important}

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
                                <h1 class="h2 pb-3 text-primary">정식연재 확률 예측</h1>
                                <h4 class="h4 regular-400">웹툰의 정식연재 확률을 확인해보세요.</h4>
                                <p class="light-300">
                                정식연재 확룰을 확인하는 페이지입니다.<br>
                    			다른 문제가 있다면 <a rel="nofollow" href="Service.jsp" target="_blank">고객센터</a>로 문의해 주세요.
                                </p>
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
                
                    <div id="main_list" style = "padding-top:30px; padding-left:200px; height:500px; width:100%; display:inline-block;">
                        <ul class="img_list">
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="https://shared-comic.pstatic.net/thumb/user_contents_data/challenge_comic/2020/12/07/gizmo215/thumbnail_98x79d3ca2fc8_768a_4467_a27c_18cb45de75b0_00003942.JPEG"
                                     width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">빨간맛 로맨스</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">gizmo215</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star">56.8%</span>
                                        <!-- <span class="star"><em style="width:98.22%">점수</em></span> -->
                                        <strong>56.8%</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="https://shared-comic.pstatic.net/thumb/user_contents_data/challenge_comic/2021/04/05/ari9402/thumbnail_98x792d330272_1040_49fe_be5b_a67983e4e1f4_00001418.JPEG
                                    "
                                     width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">대학원 탈출일지</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">ari9402</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">43.2%</em></span>
                                        <strong>43.2%</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="https://shared-comic.pstatic.net/thumb/user_contents_data/challenge_comic/2020/10/20/skuldness/thumbnail_98x79252b5b2b_f840_48c3_8ec5_6ebbaccbe0a4_00001416.JPEG" 
                                    width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">저승파견고용직</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">skuldness</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">52.4%</em></span>
                                        <strong>9.82</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="https://shared-comic.pstatic.net/thumb/user_contents_data/challenge_comic/2021/05/26/mado94/thumbnail_98x79407a6636_1748_48b5_8ea2_29ededb62b1b_00000445.JPEG
                                    " 
                                    width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">잘먹는 가</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">mado94</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">33.0%</em></span>
                                        <strong>33.0%</strong>
                                    </div>
                                </dd>
                                <dd class="more"><a href="Webtoon_detail.jsp">상세보기 ></a></dd>
                                </dl>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="" title=""><img onerror="this.src=''" src="https://shared-comic.pstatic.net/thumb/user_contents_data/challenge_comic/2021/03/18/chuck_ae/thumbnail_98x79b1ddf6ee_cad4_433f_ae2f_dbcb3c75a4aa_00004013.JPEG" 
                                    width="83" height="90" title="" alt=""><span class="mask"></span>
                                    </a>
                                </div>
                                <dl>
                                <dt><a href="" title="">하얀 하늘 꽃구름</a></dt>
                                <dd class="desc">
                                        <a href="#" onclick="return artistAction.viewArtist('648419', this)">chuck_ae</a>
                                </dd>
                                <dd>
                                    <div class="rating_type">
                                        <span class="star"><em style="width:98.22%">27.18%</em></span>
                                        <strong>27.18%</strong>
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