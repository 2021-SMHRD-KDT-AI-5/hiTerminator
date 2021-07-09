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
        #container{height:1000px; margin-left: 450px; margin-right: 450px auto; width:1020px;}
        #search{ width:100%;margin-left:auto; margin-righ t:auto;}
        /* #search>input{width:600px; height:40px; margin-top:40px; margin-bottom:10px;} */
        
        #content{width:990px; margin-left: auto; margin-right: auto;}
        #tab_menu>ul>li{display:inline-block; text-align:center;}
        .site_menu{width:978px; margin-left: auto; margin-right: auto;}
        .site_menu>li{width:130px; margin-top: 10px; margin-bottom:10px;}
        a{text-decoration: none; color:gray;}
        .genre_menu>li{display:inline-block; width:90px; border:1px solid lightgray; height:30px}
        .img_list>li{width:235px; height:110px; display:inline-block; font-size:15px;}
        .img_list>li>.thumb{display:inline; float:left; background-color:yellow;}
        .img_list>li>dl{width:70px; float:left; margin: 2px 0 0 7px;}
        .img_list>li>dl>dt>a{color:black; font-weight:bold;}
        .img_list>li>dl>dd{height:25px; margin:0px}
        .rating_type{height:25px;}
        .more{width: 90px; height:25px; background-color:#4232c2; text-align:center;}
        .more>a{color:white;}

        .webtoon_input{width:600px; height:40px; margin-top:40px; margin-bottom:10px;}
        .webtoon_btn{width: 100px; height: 40px ;}
    </style>
</head>
<body>

	<!-- Header -->
	<%@ include file="Header.jsp"%>


	<!-- Start Banner Hero -->
	<section class="bg-light">
		<div class="container py-4">
			<div class="row align-items-center justify-content-between">
				<div class="contact-header col-lg-4">
					<h1 class="h2 pb-3 text-primary">웹툰 승격 확률 예측</h1>
					<h4 class="h4 regular-400">고객센터를 통해 궁금증을 해결하세요!</h4>
					<p class="light-300">코로나19의 확산을 방지하고 지원 전문가의 건강을 지키기 위해 지원팀의
						규모를 축소하여 운영하게 되었습니다. 도움이 필요한 제품과 관련하여 전화로 문의하는 데 문제가 있는 경우 관리자
						이메일을 참조하세요.</p>
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

	<section class="container py-5">

		<!-- <h1 class="col-12 col-xl-8 h2 text-left text-primary pt-3">승격 확률 예측하기</h1> -->
		<h2 class="col-12 col-xl-8 h4 text-left regular-400">웹툰 URL을
			입력해주세요</h2>
		<p class="col-12 col-xl-8 text-left text-muted pb-5 light-300">As
			a precautionary health measure for our support specialists in light
			of COVID-19, we're operating with a limited team. If you need help
			with a product whose support you had trouble reaching over the phone,
			consult its product-specific Help Center.</p>

	</section>

	<!-- Start 웹툰 url 입력 -->


	<div id="container">
		<div id="search">
			웹툰 URL <input class="webtoon_input" type="text"
				placeholder="URL을 입력하세요" style="text-align: center"> <input
				class="webtoon_btn" type="submit" value="클릭">

		</div>
		<div>
			<img src="./assets/img/ex_url.PNG" style="height: 100%; width: 100%;">
		</div>
	</div>

	<!-- End 웹툰 url 입력 -->


	<!-- Start Footer -->
	<%@ include file="Footer.jsp"%>


</body>
</html>