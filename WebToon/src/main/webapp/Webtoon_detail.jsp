<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<style>
	     #container{width: 100%;}
        #search{ width:700px;margin-left:auto; margin-right:auto;}
        #search>input{width:600px; height:40px; margin-top:40px; margin-bottom:10px;}
        #content{width:100%;padding-right: 300px;padding-left: 300px;}
        #tab_menu>ul>li{display:inline-block; text-align:center;}
        .site_menu{width:978px; margin-left: auto; margin-right: auto;}
        .site_menu>li{width:130px; margin-top: 10px; margin-bottom:10px;}
        a{text-decoration: none; color:gray;}
        .genre_menu>li{display:inline-block; width:90px; border:1px solid lightgray; height:30px}
        /* display:inline-block; 제거 */
        .img_list>li{width:235px; height:110px; font-size:15px;} 
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
                        <h4 class="h4 regular-400"> 웹툰 승격 확률을 알아보아요</h4>
                        <p class="light-300">웹툰 전성시대를 맞아 늘어나는 많은 웹툰 작가 지망생!<br>
                        댓글 분석을 통해 정식웹툰 승격 확률을 눈으로 확인 할 수있습니다.
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


   <div id="container">

        <div id="content" >
            
            
            <!-- 5회차 상세 확률 -->

            <div id="main_list">
                <h3 class="worksingle-heading h3 pb-3 light-300 typo-space-line" style ="padding-top:30px">5회차 확률</h3>
                <br>
                <ul class="img_list">
                    <li class = "detail_list">
                        <div class="thumb">
                            <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                            </a>
                        </div>
                        <dl>
                        <dt><a href="" title="">회차 제목</a></dt>
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
                        <dd class="more"><a href="/webtoon/list.nhn?titleId=648419&amp;weekday=mon">바로가기 ></a></dd>
                        </dl>
                    </li>

                    <li class = "detail_list">
                        <div class="thumb">
                            <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                            </a>
                        </div>
                        <dl>
                        <dt><a href="" title="">회차 제목</a></dt>
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
                        <dd class="more"><a href="/webtoon/list.nhn?titleId=648419&amp;weekday=mon">바로가기 ></a></dd>
                        </dl>
                    </li>

                    <li class = "detail_list">
                        <div class="thumb">
                            <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                            </a>
                        </div>
                        <dl>
                        <dt><a href="" title="">회차 제목</a></dt>
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
                        <dd class="more"><a href="/webtoon/list.nhn?titleId=648419&amp;weekday=mon">바로가기 ></a></dd>
                        </dl>
                    </li>

                    <li class = "detail_list">
                        <div class="thumb">
                            <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                            </a>
                        </div>
                        <dl>
                        <dt><a href="" title="">회차 제목</a></dt>
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
                        <dd class="more"><a href="/webtoon/list.nhn?titleId=648419&amp;weekday=mon">바로가기 ></a></dd>
                        </dl>
                    </li>

                    <li class = "detail_list">
                        <div class="thumb">
                            <a href="" title=""><img onerror="this.src=''" src="" width="83" height="90" title="" alt=""><span class="mask"></span>
                            </a>
                        </div>
                        <dl>
                        <dt><a href="" title="">회차 제목</a></dt>
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
                        <dd class="more"><a href="/webtoon/list.nhn?titleId=648419&amp;weekday=mon">바로가기 ></a></dd>
                        </dl>
                    </li>
                </ul>
            </ㅇ>

        

        <hr>

        <!-- START 후원 -->
        
        <div class="search_list" style="padding-top: 30px; padding-bottom: 50px;">
            <h3 class="worksingle-heading h3 pb-3 light-300 typo-space-line">후원하기</h3>
            <!-- 리스트 -->
            <form name="search_form" method="POST" action="DonateCon">
                <table class="list_table" class="table table-striped" style="width: 100%; text-align: center; width: 100%;">
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
                                <div class="wrap">작가</div>
                            </th>
                            <th scope="col">
                                <div class="wrap">후원금액</div>
                            </th>
                            <th scope="col" >
                                <div class="wrap">후원메세지</div>
                            </th>
                            <th scope="col" >
                                <div class="wrap"></div>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- 여기에 글이 들어감 -->
                        <tr style="height: 50px;">
                            <td><input class = "donaiton_input" type="text" name = donee_id placeholder="작가 이름"></td>
                            <td><input class = "donaiton_input" type="text" name = money placeholder="후원 금액"></td>
                            <td><input class = "donaiton_input_message" type="text" name = donate_content placeholder="후원 메세지"></td>
                            <!-- 후원버튼 -->
                            <td><input type="submit" value="후원" class="donation_btn" style="width: 75px; height: 40px;"></td>
                        </tr>
                    </tbody>
                        
                    <!-- 리스트 끝 -->
                </table>

                    <!-- End 후원, 네이버이동 -->
            </div>
        </div>    
    </div>
	
	



	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>

</body>
</html>