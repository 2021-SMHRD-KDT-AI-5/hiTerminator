<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Purple Buzz - Consulting Page</title>
    <meta charset="UTF-8">
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
	
	<!-- 컨설팅 헤더 -->
    <!-- <section>
        <div class="container py-4">
            <div class="row align-items-center justify-content-between">
                <h1 class="h2 pb-3 text-primary">컨설팅</h1>
            </div>
            <div class="contact-img col-lg-5 align-items-end col-md-4">
                <img src="./assets/img/meeting.png" width="250" height="250">
            </div>
        </div>
    </section> -->
    

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


            <!-- <div class="col-md-4 pt-sm-0 pt-3 px-xl-3">
                <div class="pricing-table card bg-secondary h-100 card-rounded shadow-sm border-0 py-5">
                    <div class="pricing-table-body card-body text-center text-white align-self-center p-md-0">
                        <i class="pricing-table-icon display-3 bx bx-package text-white py-3"></i>
                        <h2 class="pricing-table-heading h5 semi-bold-600">Standard Plan</h2>
                        <p>$120/Year</p>
                        <ul class="pricing-table-list text-start text-dark px-4 list-unstyled light-300">
                            <li class="text-white"><i class="bx bxs-circle me-2"></i>25 to 99 Users</li>
                            <li class="text-white"><i class="bx bxs-circle me-2"></i>10 TB space</li>
                            <li class="text-white"><i class="bx bxs-circle me-2"></i>Source Files</li>
                            <li class="text-white"><i class="bx bxs-circle me-2"></i>Live Chat</li>
                        </ul>
                        <div class="pricing-table-footer pt-5 pb-2">
                            <a href="#" class="btn rounded-pill px-4 btn-outline-light light-300">Get Now</a>
                        </div>
                    </div>
                </div>
            </div> -->


            

        </div>
    </div>
    <!-- End Content -->





    <!-- Start Pricing Horizontal Section -->
    <section class="bg-light pt-sm-0 py-5">
        <div class="container py-5">

            <h1 class="h2 semi-bold-600 text-center mt-2">컨설팅 메뉴판</h1>
            <p class="text-center pb-5 light-300">컨설팅에 상세 가격이 나와있음</p>

            <!-- Start Pricing Horizontal -->
            <div class="pricing-horizontal row col-10 m-auto d-flex shadow-sm rounded overflow-hidden bg-white">
                <div class="pricing-horizontal-icon col-md-3 text-center bg-secondary text-light py-4">
                    <i class="display-1 bx bx-package pt-4"></i>
                    <h5 class="h5 semi-bold-600 pb-4 light-300">이벤트 기간</h5>
                </div>
                <div class="pricing-horizontal-body offset-lg-1 col-md-5 col-lg-4 d-flex align-items-center pl-5 pt-lg-0 pt-4">
                    <ul class="text-left px-4 list-unstyled mb-0 light-300">
                        <li><i class="bx bxs-circle me-2"></i>5 Users</li>
                        <li><i class="bx bxs-circle me-2"></i>2 TB space</li>
                        <li><i class="bx bxs-circle me-2"></i>Community Forums</li>
                    </ul>
                </div>
                <div class="pricing-horizontal-tag col-md-4 text-center pt-3 d-flex align-items-center">
                    <div class="w-100 light-300">
                        <p>$0</p>
                        <a href="#" class="btn rounded-pill px-4 btn-outline-primary mb-3">Get Now</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing Horizontal -->

            <!-- Start Pricing Horizontal -->
            <div class="pricing-horizontal row col-10 m-auto d-flex shadow-sm rounded overflow-hidden my-5 bg-white">
                <div class="pricing-horizontal-icon col-md-3 text-center bg-secondary text-light py-4">
                    <i class="display-1 bx bx-package pt-4"></i>
                    <h5 class="h5 semi-bold-600 pb-4 light-300">그냥 평소에</h5>
                </div>
                <div class="pricing-horizontal-body offset-lg-1 col-md-5 col-lg-4 d-flex align-items-center pl-5 pt-lg-0 pt-4">
                    <ul class="text-left px-4 list-unstyled mb-0 light-300">
                        <li><i class="bx bxs-circle me-2"></i>25 to 99 Users</li>
                        <li><i class="bx bxs-circle me-2"></i>10 TB space</li>
                        <li><i class="bx bxs-circle me-2"></i>Live Chat</li>
                    </ul>
                </div>
                <div class="pricing-horizontal-tag col-md-4 text-center pt-3 d-flex align-items-center">
                    <div class="w-100 light-300">
                        <p>$120/Year</p>
                        <a href="#" class="btn rounded-pill px-4 btn-outline-primary mb-3">Get Now</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing Horizontal -->

            <!-- Start Pricing Horizontal -->
            <div class="pricing-horizontal row col-10 m-auto d-flex shadow-sm rounded overflow-hidden bg-white">
                <div class="pricing-horizontal-icon col-md-3 text-center bg-secondary text-light py-4">
                    <i class="display-1 bx bx-package pt-4"></i>
                    <h5 class="h5 semi-bold-600 pb-4 light-300">성수기</h5>
                </div>
                <div class="pricing-horizontal-body offset-lg-1 col-md-5 col-lg-4 d-flex align-items-center pl-5 pt-lg-0 pt-4">
                    <ul class="text-left px-4 list-unstyled mb-0 light-300">
                        <li><i class="bx bxs-circle me-2"></i>100 users or more</li>
                        <li><i class="bx bxs-circle me-2"></i>80 TB space</li>
                        <li><i class="bx bxs-circle me-2"></i>Full Access</li>
                        <li><i class="bx bxs-circle me-2"></i>Customizations</li>
                    </ul>
                </div>
                <div class="pricing-horizontal-tag col-md-4 text-center pt-3 d-flex align-items-center">
                    <div class="w-100 light-300">
                        <p>$840/Year</p>
                        <a href="#" class="btn rounded-pill px-4 btn-outline-primary mb-3">Get Now</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing Horizontal -->

        </div>
    </section>
    <!--End Pricing Horizontal Section-->

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
                <form class="contact-form row" method="post" action="#" role="form">

                    <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingname" name="inputname" placeholder="Name">
                            <label for="floatingname light-300">회원 아이디</label>
                        </div>
                    </div><!-- End Input Name -->

                    <!-- <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingemail" name="inputemail" placeholder="Email">
                            <label for="floatingemail light-300">이메일</label>
                        </div>
                    </div> -->
                    <!-- End Input Email -->

                    <!-- <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input list = "question" class="form-control form-control-lg light-300" id="floatingquestion" name="inputquestion" placeholder="object" list = "Question">
                                <datalist id = "question">
                                    <option value = "Romance">로맨스</option>
                                    <option value = "Action">액션</option>
                                    <option value = "Comic">코믹</option>
                                    <option value = "fear">공포</option>
                                    <option value = "other">기타</option>
                                </datalist> 
                            </input>
                            <label for="floatingphone light-300">장르</label>
                        </div>
                    </div> -->
                    <!-- End Input Phone -->

                    <div class="col-lg-6 mb-4">
                        <div class="form-floating">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingcompany" name="inputcompany" placeholder="date">
                            <label for="floatingcompany light-300">등록 일자</label>
                        </div>
                    </div><!-- End Input Company Name -->

                    <div class="col-12">
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control form-control-lg light-300" id="floatingsubject" name="inputsubject" placeholder="Subject">
                            <label for="floatingsubject light-300">작품 제목</label>
                        </div>
                    </div><!-- End Input Subject -->

                    <!-- <div class="col-12">
                        <div class="form-floating mb-3">
                            <textarea class="form-control light-300" rows="8" placeholder="Message" id="floatingtextarea"></textarea>
                            <label for="floatingtextarea light-300">컨설팅 받고 싶은 내용</label>
                        </div>
                    </div> -->
                    <!-- End Textarea Message -->

                    <div class="filebox"> 
                        <input class="upload-name" value="파일선택" disabled="disabled"> 
                        <label for="ex_filename">업로드</label> <input type="file" id="ex_filename" class="upload-hidden"> 
                    </div>

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
	
	
	
	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>

</body>
</html>