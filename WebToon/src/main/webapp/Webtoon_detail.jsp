<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <style>
        #container{width: 100%;}
        #content{width:100%;padding-right: 300px;padding-left: 300px;}

        .list_table{padding-bottom: 50px;}

        hr {
        border: none;
        border-top: 3px dotted blue;
        color: #fff;
        background-color: #fff;
        height: 1px;
        width: 100%;
}

        /* 내용 body쪽 길이 */
        .container.py-5{height: 1300px;}

        
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


    <div id="container">

        <div id="content" >

            <!-- 5회차 상세 확률 -->

            <div id="main_list" style="padding-top: 30px; padding-bottom: 30px;">
                <h3 class="worksingle-heading h3 pb-3 light-300 typo-space-line">5회차 확률</h3>
                <div class="search_list" style="padding-top: 40px;">
                    <!-- 테이블 -->
                    <form name="search_form" method="POST" action="">
                        <table class="list_table" class="table table-striped" style="width: 100%;">
                            <colgroup style="text-align: center;">
                                <col style="width:10%;">
                                <col style="width:15%;">

                                <col style="width:7%;">
                                <col style="width:7%;">
                                <col style="width:7%;">
                                <col style="width:7%;">
                                <col style="width:7%;">
                                <col style="width:7%;">

                                <col style="width: 7%">
                                <col style="width: 7%;">
                                <col style="width: 7%;">
                                <col style="width: 7%";>
                                
                            </colgroup>
                            <thead>
                                <tr  style="height: 50px;">
                                    <th scope="col" >
                                        <div class="wrap">웹툰제목</div>
                                    </th>
                                    <th scope="col" >
                                        <div class="wrap">회차 제목</div>
                                    </th>

                                    <th scope="col">
                                        <div class="wrap">조회수</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">회차별 별점</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">별점 참여<br> 인원 수</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">좋아요 수</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">댓글 수</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">조회수 대비<br>별점참여</div>
                                    </th>

                                    <th scope="col" >
                                        <div class="wrap">조회수 대비 <br>별점참여</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">조회수 대비 <br>좋아요</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">댓글수 대비 <br>긍정댓글</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">댓글수 대비 <br>부정댓글</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">확률<div>
                                    </th>
                                </tr>
                                
                            </thead>
                            <tbody>
                                <!-- 여기에 글이 들어감 -->
                                <tr style="height: 50px;">
                                    <td rowspan="5">웹툰 제목 블라블라</td>
                                    <td>1회차 제목</td>
                                    <td>9.8714</td>
                                    <td>34.688</td>
                                    <td>0.9569</td>
                                    <td>0.86</td>
                                    <td>7.2088</td>
                                    <td>9.8714</td>
                                    <td>34.688</td>
                                    <td>0.9569</td>
                                    <td>0.86</td>
                                    <td>0.87</td>
                                    <td>0.88</td>
                                </tr>
                                <tr style="height: 50px;">
                                    <td>2회차 제목 블라블라</td>
                                    <td>7.2088</td>
                                    <td>9.8714</td>
                                    <td>34.688</td>
                                    <td>0.9569</td>
                                    <td>0.86</td>
                                    <td>7.2088</td>
                                    <td>9.8714</td>
                                    <td>34.688</td>
                                    <td>0.9569</td>
                                    <td>0.86</td>
                                    <td>0.88</td>
                                </tr>
                            </tbody>
                            <!-- 리스트 끝 -->
                        </table>
                    </form>
            </div>
            <div>
                <h3 class="worksingle-heading h3 pb-3 light-300 typo-space-line">Word Cloud</h3>
            </div>
        </div>
    </div>
	
	



	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>

</body>
</html>