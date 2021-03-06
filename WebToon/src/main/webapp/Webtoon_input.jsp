<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Purple Buzz HTML Template with Bootstrap 5 Beta 1</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">
<!-- Load Require CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<!-- Font CSS -->
<link href="assets/css/boxicon.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap"
	rel="stylesheet">
<!-- Load Tempalte CSS -->
<link rel="stylesheet" href="assets/css/templatemo.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="assets/css/custom.css">
<!--
    
TemplateMo 561 Purple Buzz

https://templatemo.com/tm-561-purple-buzz

-->

<style>

#container {
	height: 1000px;
	margin-left: 450px;
	margin-right: 450px auto;
	width: 1020px;
}

#search {
	width: 100%;
	margin-left: auto;
	margin-righ t: auto;
}
/* #search>input{width:600px; height:40px; margin-top:40px; margin-bottom:10px;} */
#content {
	width: 990px;
	margin-left: auto;
	margin-right: auto;
}

#tab_menu>ul>li {
	display: inline-block;
	text-align: center;
}

.site_menu {
	width: 978px;
	margin-left: auto;
	margin-right: auto;
}

.site_menu>li {
	width: 130px;
	margin-top: 10px;
	margin-bottom: 10px;
}

a {
	text-decoration: none;
	color: gray;
}

.genre_menu>li {
	display: inline-block;
	width: 90px;
	border: 1px solid lightgray;
	height: 30px
}

.img_list>li {
	width: 235px;
	height: 110px;
	display: inline-block;
	font-size: 15px;
}

.img_list>li>.thumb {
	display: inline;
	float: left;
	background-color: yellow;
}

.img_list>li>dl {
	width: 70px;
	float: left;
	margin: 2px 0 0 7px;
}

.img_list>li>dl>dt>a {
	color: black;
	font-weight: bold;
}

.img_list>li>dl>dd {
	height: 25px;
	margin: 0px
}

.rating_type {
	height: 25px;
}

.more {
	width: 90px;
	height: 25px;
	background-color: #4232c2;
	text-align: center;
}

.more>a {
	color: white;
}

.webtoon_input {
	width: 600px;
	height: 40px;
	margin-top: 40px;
	margin-bottom: 10px;
}

.webtoon_btn {
	width: 100px;
	height: 40px;
}

.webtoon_container {
	width: 100%;
	height: 1800px;
	text-align: center;
}

.webtoon_container ul li{
	font-size:14px;
}

.webtoon_comment {
	text-align: center;
	display: inline-block;
	width: 100%;
	padding-top: 50px;
}

.webtoon_url {
	text-align: center;
	display: inline-block;
	width: 100%;
}

.webtoon_sub_container {
	text-align: center;
}

/* ????????? ????????? ????????? ??????*/
.webtoon_container #search .webtoon_btn:hover {
	color: white;
	box-shadow: 200px 0 0 0 rgba(66, 50, 194, 1) inset;
	transition: all 0.9s, color 0.3s;
}
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
					<h1 class="h2 pb-3 text-primary">???????????? ?????? ??????</h1>
					<h4 class="h4 regular-400">????????? ???????????? ???????????????!</h4>
					<p class="light-300">
					???????????? ????????? ???????????? ??????????????????.<br>
                    ?????? ????????? ????????? <a rel="nofollow" href="Service.jsp" target="_blank">????????????</a>??? ????????? ?????????. 
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


	<div class="webtoon_container">

		<div class="col-md-12 m-auto text-center py-5">
			<h1 class="pricing-header h2 semi-bold-600"
				style="padding-top: 30px;">???????????? ?????? ?????????</h1>
			<p class="pricing-footer">?????? ??????????????? ??????????????????.</p>
			<form action="http://127.0.0.1:5000/learn" method="get"
				accept-charset="UTF-8">
				<div id="search">
					<input class="webtoon_input" type="text"
						placeholder="?????? URL??? ???????????????" name="url" style="text-align: center">
					<div>
						<input class="webtoon_btn" type="submit" value="?????? ??????">
					</div>
				</div>
			</form>
		</div>

		<div class="webtoon_sub_container" style="display: inline-block;">
			<div class="row px-lg-3">

				<div class="col-md-4 pb-5 pt-sm-0 mt-5 px-xl-3">
					<div class="pricing-table card h-100 shadow-sm border-0 py-5">
						<div
							class="pricing-table-body card-body rounded-pill text-center align-self-center p-md-0">
							<img src="./assets/img//web_url.png" width="90" height="80">
							<p></p>
							<!-- <i class="pricing-table-icon display-3 bx bx-package text-secondary"></i> -->
							<h2 class="pricing-table-heading h5 semi-bold-600">Step 1</h2>
							<p>?????? ????????????</p>
							<ul
								class="pricing-table-body text-start text-dark px-4 list-unstyled light-300">
								<li><i class="bx bxs-circle me-2"></i>????????? ??????????????? ??????</li>
								<li><i class="bx bxs-circle me-2"></i>????????? ?????? ????????????</li>
							</ul>

							<!-- get now ????????? ????????? ?????? ???????????? ????????? ???????????? ???????????? -->
							<div class="pricing-table-footer pt-5">
								<a href="https://comic.naver.com/genre/bestChallenge"
									class="btn rounded-pill px-4 btn-outline-primary light-300">?????????
									???????????????</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 pb-5 pt-sm-0 mt-5 px-xl-3">

					<div class="pricing-table card h-100 shadow-sm border-0 py-5">
						<div
							class="pricing-table-body card-body rounded-pill text-center align-self-center p-md-0">
							<img src="./assets/img/drag.png" width="90" height="80">
							<p></p>
							<!-- <i class="pricing-table-icon display-3 bx bx-package text-secondary"></img> -->
							<h2 class="pricing-table-heading h5 semi-bold-600">Step 2</h2>
							<p>?????? ????????? URL ??????</p>
							<ul
								class="pricing-table-body text-start text-dark px-4 list-unstyled light-300">
								<li><i class="bx bxs-circle me-2"></i>?????? ???????????? ????????? ???????????? ??????</li>
								<li><i class="bx bxs-circle me-2"></i>URL ????????????</li>
							</ul>
							<div class="pricing-table-footer pt-5">
								<!-- <a href="#" class="btn rounded-pill px-4 btn-outline-primary light-300">Go Now</a> -->
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 pb-5 pt-sm-0 mt-5 px-xl-3">
					<div class="pricing-table card h-100 shadow-sm border-0 py-5">
						<div
							class="pricing-table-body card-body rounded-pill text-center align-self-center p-md-0">
							<img src="./assets/img/wait.png" width="90" height="80">
							<p></p>
							<!-- <i class="pricing-table-icon display-3 bx bx-package text-secondary"></i> -->
							<h2 class="pricing-table-heading h5 semi-bold-600">Step 3</h2>
							<p>?????? ??????</p>
							<ul
								class="pricing-table-body text-start text-dark px-4 list-unstyled light-300">
								<li><i class="bx bxs-circle me-2"></i>?????? ?????? ????????? ???????????? ????????????</li>
								<li><i class="bx bxs-circle me-2"></i>????????? ????????? ?????????</li>
							</ul>
							<div class="pricing-table-footer pt-5">
								<!-- <a href="#" class="btn rounded-pill px-4 btn-outline-primary light-300">Go Now</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ????????? ????????? ???????????? -->
			<div style="text-align: center; margin: auto;">
				<p>--------- ?????? ?????? ???????????? url??? ??????????????? ---------</p>
				<img src="./assets/img/ex_url.PNG"
					style="height: 700px; width: 1000px;">
			</div>
		</div>
	</div>



		<!-- Start Footer -->
		<%@ include file="Footer.jsp"%>
</body>
</html>