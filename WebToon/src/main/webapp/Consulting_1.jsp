<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Consulting_messageDAO"%>
<%@page import="model.Consulting_messageDTO"%>
<%@page import="java.util.ArrayList"%>

<% T_MemberDTO member_c = (T_MemberDTO)session.getAttribute("member"); 

	Consulting_messageDAO dao = new Consulting_messageDAO();
	ArrayList<Consulting_messageDTO> list = new ArrayList<Consulting_messageDTO>();
	
	if(member_c != null){
		list = dao.showMessage(member_c.getMember_id());	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Purple Buzz - Consulting Page</title>
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
    /* 테이블 넓이 조절 */
    table.list_table{width: 100%;}
    .infoform{float: right;}
    th{ text-align: center;}
    td{text-align: center;}
    .col-lg-8{width: 100%;}
</style>



</head>
<body>

	<!-- Header -->
    <%@ include file = "Header.jsp" %>

	<!-- Start 컨설팅 -->

<!-- Start pricing -->
    <div class="container-lg py-5">
        <div class="col-md-12 m-auto text-center py-5">
            <h1 class="pricing-header h2 semi-bold-600">컨설팅이용 방법</h1>
            <p class="pricing-footer">
                이용방법에 대한 간단한 설명
            </p>
        </div>


        <div class="row px-lg-3">


            <div class="col-md-4 pb-5 pt-sm-0 mt-5 px-xl-3">
                <div class="pricing-table card h-100 shadow-sm border-0 py-5">
                    <div class="pricing-table-body card-body rounded-pill text-center align-self-center p-md-0">
                        <img src="/assets/img/comicbook.png" width="100" height="100">
                        <p></p>
                        <!-- <i class="pricing-table-icon display-3 bx bx-package text-secondary"></i> -->
                        <h2 class="pricing-table-heading h5 semi-bold-600">Step 1</h2>
                        <p>컨설팅 받을 웹툰 등록</p>
                        <ul class="pricing-table-body text-start text-dark px-4 list-unstyled light-300">
                            <li><i class="bx bxs-circle me-2"></i>5 Users</li>
                            <li><i class="bx bxs-circle me-2"></i>2 TB space</li>
                            <li><i class="bx bxs-circle me-2"></i>Community Forums</li>
                            <li><i class="bx bxs-circle me-2"></i>Email Support</li>
                        </ul>

                        <!-- get now 버튼을 누르면 등록 페이지로 스크롤 내려가게 하고싶음 -->
                        <div class="pricing-table-footer pt-5">
                            <a href="#" class="btn rounded-pill px-4 btn-outline-primary light-300">Get Now</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 pb-5 pt-sm-0 mt-5 px-xl-3">
                <div class="pricing-table card h-100 shadow-sm border-0 py-5">
                    <div class="pricing-table-body card-body rounded-pill text-center align-self-center p-md-0">
                        <img src="/assets/img/checklist.png" width="100" height="100">
                        <p></p>
                        <!-- <i class="pricing-table-icon display-3 bx bx-package text-secondary"></img> -->
                        <h2 class="pricing-table-heading h5 semi-bold-600">Step 2</h2>
                        <p>전문가의 웹툰 평가</p>
                        <ul class="pricing-table-body text-start text-dark px-4 list-unstyled light-300">
                            <li><i class="bx bxs-circle me-2"></i>5 Users</li>
                            <li><i class="bx bxs-circle me-2"></i>2 TB space</li>
                            <li><i class="bx bxs-circle me-2"></i>Community Forums</li>
                            <li><i class="bx bxs-circle me-2"></i>Email Support</li>
                        </ul>
                        <div class="pricing-table-footer pt-5">
                            <a href="#" class="btn rounded-pill px-4 btn-outline-primary light-300">Get Now</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 pb-5 pt-sm-0 mt-5 px-xl-3">
                <div class="pricing-table card h-100 shadow-sm border-0 py-5">
                    <div class="pricing-table-body card-body rounded-pill text-center align-self-center p-md-0">
                        <img src="/assets/img/care.png" width="100" height="100">
                        <p></p>
                        <!-- <i class="pricing-table-icon display-3 bx bx-package text-secondary"></i> -->
                        <h2 class="pricing-table-heading h5 semi-bold-600">Step 3</h2>
                        <p>선발 웹툰 컨설팅</p>
                        <ul class="pricing-table-body text-start text-dark px-4 list-unstyled light-300">
                            <li><i class="bx bxs-circle me-2"></i>5 Users</li>
                            <li><i class="bx bxs-circle me-2"></i>2 TB space</li>
                            <li><i class="bx bxs-circle me-2"></i>Community Forums</li>
                            <li><i class="bx bxs-circle me-2"></i>Email Support</li>
                        </ul>
                        <div class="pricing-table-footer pt-5">
                            <a href="#" class="btn rounded-pill px-4 btn-outline-primary light-300">Get Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Content -->

    <!-- Start Pricing Horizontal Section -->
    <section class="bg-light pt-sm-0 py-5">
        <div class="container py-5">

            <h1 class="h2 semi-bold-600 text-center mt-2">컨설팅 리스트</h1>
            <!-- <p class="text-center pb-5 light-300">??</p> -->
            <br><br>
            
            <!-- Start Contact Form -->
            <div class="col-lg-8 " style="padding-top: 10px; text-align: right;">
                <!-- <form class="contact-form row" method="post" action="#" role="form"> -->
                <form class = "infoform" name = "infoform" method="post" action="#" role="form" style="display: inline-block;">   

                    <!-- 공지사항 검색옵션 -->
                    <select name="infoselect" title="컨설팅 검색 항목" class="select_class" style="width:150px; height: 40px;">
                        <option value="all">전체</option>
                        <option value="title">회원ID</option>
                        <option value="user_name">작품제목</option>
                    </select>

                    <!-- 공지사항 검색창 -->
                    <label for="info_search">
                        <span style="display: none;">검색</span>
                    </label>
                    <input type="text" id="info_search" name="search" vlaue class="inputi" style="width: 400px; height: 35px;">
                    
                    <!-- 컨설팅 검색 버튼 이미지 -->
                    <a href="Consulting.html">
                        <img src="assets/img/Search.png" alt="검색"style="width:30px; margin :10px;" >
                    </a>
                </form>
            </div>
                    <!-- End 검색 목록 -->
            
            <br><br>

            <div class="search_list" style="padding-top: 40px; text-align: center;">
                <!-- 리스트 -->
                <form name="search_form" method="POST" action="" style="display: inline-block;">
                    <table class="list_table" class="table table-striped">
                        <!-- <caption class="search_blind">공지사항 리스트</caption> -->
                        <colgroup>
                            <col style="width:80px;">
                            <col style="width:150px;">
                            <col style="width:250px;">
                            <col style="width:100px;">
                            <col style="width:150px;">
                            <!-- <col style="width: 30px;"> -->
                        </colgroup>
                        <thead>
                            <tr  style="height: 50px;">
                                <th scope="col" >
                                    <div class="wrap">번호</div>
                                </th>
                                <th scope="col">
                                    <div class="wrap">회원ID</div>
                                </th>
                                <th scope="col" >
                                    <div class="wrap">작품 제목</div>
                                </th>
                                <th scope="col">
                                    <div class="wrap">첨부파일</div>
                                </th>
                                <th scope="col">
                                    <div class="wrap">보낸 날짜</div>
                                </th>
                            </tr>
                        </thead>    
                        <tbody>
                            <!-- 여기에 글이 들어감 -->
                            <%
								for(int i = 0; i < list.size(); i++){
							%>
							<tr>
								<th><%=i+1 %></th>
								<th><%=list.get(i).getMember_id() %></th>
								<th><%=list.get(i).getTitle() %></th>
								<th><%=list.get(i).getConsult_content() %></th>
								<th><%=list.get(i).getApply_date() %></th>
							</tr>
							<%
								}
							%>
                        </tbody>
                        <!-- 리스트 끝 -->
                    </table>
                </form>
            </div>
        </div>
    </section>
    <!--End Pricing Horizontal Section-->
    
    <!-- 메세지 확인창  -->
    <!-- <section id="message_section">
    	<div class="message_div">
    		<header class="message_header">
    			<h2> 컨설팅 지원 확인</h2>
    		</header>
    		<p></p>
    		<ul class="message_ul">
    			<li>로그인을 하세요.</li>
    			<li><a href="#" class="message_a">전체삭제하기</a></li>
    		</ul>
            <table>
				<tr>
					<th>번호</th>
					<th>보내는 사람</th>
					<th>내용</th>
					<th>첨부파일</th>
					<th>시간</th>
				</tr>
            </table>
    	</div>
    </section> -->
    
<!-- End Contact -->

    <section class="container py-5">

        <h1 class="col-12 col-xl-8 h2 text-left text-primary pt-3">Step 1</h1>
        <h2 class="col-12 col-xl-8 h4 text-left regular-400">컨설팅 받을 웹툰을 등록해 주세요!</h2>
        <p class="col-12 col-xl-8 text-left text-muted pb-5 light-300">
            --------------------------주의사항-------------------------------<br>
            ~~~~~~<br>
            ~~~~~
        </p>

        <div class="row pb-4">

            <!-- Start Contact Form -->
            <div class="col-lg-8 ">
                <form class="contact-form row" method="post" action="ConsultingCon" role="form">

                    <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingname" name="member_id" placeholder="Name">
                            <label for="floatingname light-300">회원 아이디</label>
                        </div>
                    </div><!-- End Input Name -->

                    <!-- <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingcompany" name="apply_date" placeholder="date">
                            <label for="floatingcompany light-300">등록 일자</label>
                        </div>
                    </div> -->
                    <!-- End Input Company Name -->

                    <div class="col-12">
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingsubject" name="title" placeholder="Subject">
                            <label for="floatingsubject light-300">작품 제목</label>
                         </div>
                    </div><!-- End Input Subject -->

                    <div class="col-12">
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingsubject" name="title" placeholder="Subject">
                            <label for="floatingsubject light-300">파일 업로드</label>
                         </div>
                    </div><!-- End Input Subject -->

                    
                    <!-- <div class="filebox"> 
                        <input class="upload-name" value="파일선택" name="consult_content" disabled="disabled"> 
                        <label for="ex_filename">업로드</label> <input type="file" id="ex_filename" class="upload-hidden"> 
                    </div> -->

                    <!-- 파일 업로드 -->


                    <div class="col-md-12 col-12 m-auto text-end">
                        <button type="submit" class="btn btn-secondary rounded-pill px-md-5 px-4 py-2 radius-0 text-light light-300">Send Message</button>
                    </div>

                </form>
            </div>
            <!-- End Contact Form -->


        </div>
    </section>
    <!-- End Contact -->


	<!-- End 컨설팅 -->

	<!-- Start Footer -->
	<%@ include file = "Footer.jsp" %>

</body>
</html>