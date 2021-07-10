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
                            <%
                            String artist = request.getParameter("artist");
                            String thum = request.getParameter("thum");
                            String title = request.getParameter("title");
                            String vol1_title = request.getParameter("vol1_title");
                            String vol2_title = request.getParameter("vol2_title");
                            String vol3_title = request.getParameter("vol3_title");
                            String vol4_title = request.getParameter("vol4_title");
                            String vol5_title = request.getParameter("vol5_title");
                            
                            String view1 = request.getParameter("view1");
                            String view2 = request.getParameter("view2");
                            String view3 = request.getParameter("view3");
                            String view4 = request.getParameter("view4");
                            String view5 = request.getParameter("view5");
                       	    
                            String star1 = request.getParameter("star1");
                            String star2 = request.getParameter("star2");
                            String star3 = request.getParameter("star3");
                            String star4 = request.getParameter("star4");
                            String star5 = request.getParameter("star5");
                       	    
                            String star_in1 = request.getParameter("star_in1");
                            String star_in2 = request.getParameter("star_in2");
                            String star_in3 = request.getParameter("star_in3");
                            String star_in4 = request.getParameter("star_in4");
                            String star_in5 = request.getParameter("star_in5");
                       	    
                            String like1 = request.getParameter("like1");
                            String like2 = request.getParameter("like2");
                            String like3 = request.getParameter("like3");
                            String like4 = request.getParameter("like4");
                            String like5 = request.getParameter("like5");
                       	    
                            String comment1 = request.getParameter("comment1");
                            String comment2 = request.getParameter("comment2");
                            String comment3 = request.getParameter("comment3");
                            String comment4 = request.getParameter("comment4");
                            String comment5 = request.getParameter("comment5");
                            
                            String view_star1 = request.getParameter("view_star1");
                            String view_star2 = request.getParameter("view_star2");
                            String view_star3 = request.getParameter("view_star3");
                            String view_star4 = request.getParameter("view_star4");
                            String view_star5 = request.getParameter("view_star5");
       			    	    
                            String view_like1 = request.getParameter("view_like1");
                            String view_like2 = request.getParameter("view_like2");
                            String view_like3 = request.getParameter("view_like3");
                            String view_like4 = request.getParameter("view_like4");
                            String view_like5 = request.getParameter("view_like5");
       			    	    
                            String comment_pos1 = request.getParameter("comment_pos1");
                            String comment_pos2 = request.getParameter("comment_pos2");
                            String comment_pos3 = request.getParameter("comment_pos3");
                            String comment_pos4 = request.getParameter("comment_pos4");
                            String comment_pos5 = request.getParameter("comment_pos5");
       			    	    
                            String comment_neg1 = request.getParameter("comment_neg1");
                            String comment_neg2 = request.getParameter("comment_neg2");
                            String comment_neg3 = request.getParameter("comment_neg3");
                            String comment_neg4 = request.getParameter("comment_neg4");
                            String comment_neg5 = request.getParameter("comment_neg5");
                            
                            String vol1 = request.getParameter("vol1");
                            String vol2 = request.getParameter("vol2");
                            String vol3 = request.getParameter("vol3");
                            String vol4 = request.getParameter("vol4");
                            String vol5 = request.getParameter("vol5");
                            %>
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
                                    <th scope="col" >
                                        <div class="wrap">조회수 대비 <br>별점참여<br>(별점참여/조회수X1000)</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">조회수 대비 <br>좋아요<br>(좋아요/조회수X1000)</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">댓글수 대비 <br>긍정댓글</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">댓글수 대비 <br>부정댓글</div>
                                    </th>
                                    <th scope="col">
                                        <div class="wrap">정식연재 확률<div>
                                    </th>
                                </tr>
                                
                            </thead>
                            <tbody>
                                <!-- 여기에 글이 들어감 -->
                                <tr style="height: 50px;">
                                    <td rowspan="5"><%=title %></td>
                                    <td><%=vol1_title %></td>
                                    <td><%=view1 %></td>
                                    <td><%=star1 %></td>
                                    <td><%=star_in1 %></td>
                                    <td><%=like1 %></td>
                                    <td><%=comment1 %></td>
                                    <td><%=view_star1 %></td>
                                    <td><%=view_like1 %></td>
                                    <td><%=comment_pos1 %>%</td>
                                    <td><%=comment_neg1 %>%</td>
                                    <td><%=vol1 %>%</td>
                                </tr>
                                <tr style="height: 50px;">
                                    <td><%=vol2_title %></td>
                                    <td><%=view2 %></td>
                                    <td><%=star2 %></td>
                                    <td><%=star_in2 %></td>
                                    <td><%=like2 %></td>
                                    <td><%=comment2 %></td>
                                    <td><%=view_star2 %></td>
                                    <td><%=view_like2 %></td>
                                    <td><%=comment_pos2 %>%</td>
                                    <td><%=comment_neg2 %>%</td>
                                    <td><%=vol2 %>%</td>
                                </tr>
                                <tr style="height: 50px;">
                                    <td><%=vol3_title %></td>
                                    <td><%=view3 %></td>
                                    <td><%=star3 %></td>
                                    <td><%=star_in3 %></td>
                                    <td><%=like3 %></td>
                                    <td><%=comment3 %></td>
                                    <td><%=view_star3 %></td>
                                    <td><%=view_like3 %></td>
                                    <td><%=comment_pos3 %>%</td>
                                    <td><%=comment_neg3 %>%</td>
                                    <td><%=vol3 %>%</td>
                                </tr>
                                <tr style="height: 50px;">
                                    <td><%=vol4_title %></td>
                                    <td><%=view4 %></td>
                                    <td><%=star4 %></td>
                                    <td><%=star_in4 %></td>
                                    <td><%=like4 %></td>
                                    <td><%=comment4 %></td>
                                    <td><%=view_star4 %></td>
                                    <td><%=view_like4 %></td>
                                    <td><%=comment_pos4 %>%</td>
                                    <td><%=comment_neg4 %>%</td>
                                    <td><%=vol4 %>%</td>
                                </tr>
                                <tr style="height: 50px;">
                                    <td><%=vol5_title %></td>
                                    <td><%=view5 %></td>
                                    <td><%=star5 %></td>
                                    <td><%=star_in5 %></td>
                                    <td><%=like5 %></td>
                                    <td><%=comment5 %></td>
                                    <td><%=view_star5 %></td>
                                    <td><%=view_like5 %></td>
                                    <td><%=comment_pos5 %>%</td>
                                    <td><%=comment_neg5 %>%</td>
                                    <td><%=vol5 %>%</td>
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