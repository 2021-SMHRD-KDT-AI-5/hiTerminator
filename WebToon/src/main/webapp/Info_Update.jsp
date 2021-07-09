<%@page import="model.T_MemberDTO"%>
<%@page import="model.Ser_MessageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Ser_MessageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% /* T_MemberDTO member=(T_MemberDTO)session.getAttribute("member");//member 라는 이름으로 불러와 주면 됩니다  */
	
	Ser_MessageDAO dao = new Ser_MessageDAO();
	ArrayList<Ser_MessageDTO> list = new ArrayList<Ser_MessageDTO>();
	list = dao.showMessage();

	/* if(member!=null){// if 안 쓸 경우 member가 null이면 오류나니 member가 null이 아닐경우만 실행
		list = dao.showMessage();
	} */
%>
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
        #container{height:1000px; margin-left: 430px; margin-right: 450px auto;}
        #container #noticeBox{margin-top:100px;}
        #container #noticeBox #subject{width:300px; color:gray;}
        #container #noticeBox #contentBox{width:900px; height:500px;}
        
        footer{clear:left;}
    </style>
</head>
<body>
    <!-- Header -->
    <%@ include file = "Header.jsp" %>
    <!-- Close Header -->


    <div id="container">
        <div id="noticeBox">
            <form action="InfoUpdateCon" method="post">
                <div class="col-12">
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control form-control-lg light-300" placeholder="Subject" name="inputSubject" id="subject">
                            <label for="floatingsubject light-300">제목</label>
                        </div>
                    </div><!-- End Input Subject -->
                <div class="col-12">
                        <div class="form-floating mb-3">
                            <textarea class="form-control light-300" rows="8" placeholder="Message" name="inputContent" id="contentBox"></textarea>
                            <label for="floatingtextarea light-300">내용</label>
                        </div>
                    </div><!-- End Textarea Message -->
                <input type="submit" class="notice_submit" name="notice_submit">
            </form>
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
	
		<script>
		$(function() {           
	
	    	$("#test").focus(function(){
	      	$(this).css("color","#000000");
	    });
	    $("#test").blur(function(){
	    $(this).css("color","#99CCCC");
	  		});
	   
		});
		</script>

</body>
</html>