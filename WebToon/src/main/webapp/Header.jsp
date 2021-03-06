<%@page import="model.Consulting_messageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Consulting_messageDAO"%>
<%@page import="model.T_MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<% T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Purple Buzz HTML Template with Bootstrap 5 Beta 1</title>
  
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

    <link rel="stylesheet" href="./assets/css/Login.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
<!--
    
TemplateMo 561 Purple Buzz

https://templatemo.com/tm-561-purple-buzz

-->

    <style>
        #join{width:500px; margin-left:auto; margin-right:auto;}
        #join>ul li{list-style: none; height:40px;}
    </style>

</head>
<body>

	<!-- Header -->
        <nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">
            <div class="container d-flex justify-content-between align-items-center">
                <a class="navbar-brand h1" href="Main.jsp">
                	<img src="assets/img/logo.png" style="width:150px; height:90px">
                    <!-- <i class='bx bx-buildings bx-sm text-dark'></i>
                    <span class="text-dark h4">Purple</span> <span class="text-primary h4">Buzz</span> -->
                </a>
                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
    
                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
                    <div class="flex-fill mx-xl-5 mb-2">
                        <ul class="nav navbar-nav d-flex justify-content-between mx-xl-5 text-center text-dark">
                            
                            <li class="nav-item">
                                <!-- <a class="nav-link btn-outline-primary rounded-pill px-3" href="Info.html">????????????</a> -->
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Main.jsp">???</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Webtoon_input.jsp">????????????</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Webtoon_list.jsp">????????????</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Consulting_1.jsp">?????????</a>
                            </li>
                           
                            
                            <!-- ???????????? ???????????? ???????????? ????????? ??????  -->
                            <% if(member != null){ 
                     			if(member.getMember_id().equals("admin")){
                     			%>
                     			 <li class="nav-item">
                                <a class="nav-link btn-outline-primary rounded-pill px-3" href="Admin_Service.jsp">????????????</a>
                            	</li>
                            	<li class="nav-item">
                                	<a class="nav-link btn-outline-primary rounded-pill px-3" href="Admin_info.jsp">????????????</a>
                            	</li>
                            	<%}else {%>
                            		<!-- ????????? ?????????  -->
                            		 <li class="nav-item">
                                	<a class="nav-link btn-outline-primary rounded-pill px-3" href="Service.jsp">????????????</a>
                            		</li>
                            		<li class="nav-item">
                            		<a class="nav-link btn-outline-primary rounded-pill px-3" href="Info.jsp">????????????</a>
                            		</li>
                            		<%} %>

                            		<% }else{%>
                            		<li class="nav-item">
                                	<a class="nav-link btn-outline-primary rounded-pill px-3" href="Service.jsp">????????????</a>
                            		</li>
                            		<li class="nav-item">
                            		<a class="nav-link btn-outline-primary rounded-pill px-3" href="Info.jsp">????????????</a>
                            		</li>
                            		<%} %>
                        
                        </ul>
                    </div>
                    
                    
                    <!-- ????????? ?????? ????????? -->
                    <div class="navbar align-self-center d-flex">
                    
                    
                    
                     <% if(member != null){ 
                     		if(member.getMember_id().equals("admin")){
                     			%>
                     			
                     	<a class="nav-link" href="Logout.jsp"><i class="fas fa-sign-out-alt"></i></a>
           
                     	<%}else {%>
                     		<a class="nav-link" href="Mem_Update.jsp"><i class='bx bx-cog bx-sm text-primary'></i></a>
                     		<a class="nav-link" href="Mypage_Main.jsp"><i class="fas fa-user fa-lg"></i></a>
 							<a class="nav-link" href="Logout.jsp"><i class="fas fa-sign-out-alt fa-lg"></i></a>
 							  
                     	<%} %>
                     <% }else{ %>
                        <a class="nav-link"href = "Login.jsp"><i class="fas fa-power-off fa-lg"></i></a>
                        
                     <% } %> 
                        
                    	
						
                    
                    
                        <!-- ????????? i?????? -->
                        <!-- <a class="nav-link" href="#"><i class='bx bx-bell bx-sm bx-tada-hover text-primary'></i></a> -->

                       
                        <!-- ????????? ???, ????????? ????????? / ????????? ???????????? ???????????? ????????? ????????? -->
                        
                        
                        <!-- ????????? ????????? Login.html?????? ?????? / ????????? ????????? ?????????????????? Mem_update.jsp??? ?????? -->

                      
                        
                    </div>
                    
                </div>
            </div>
        </nav>
        <!-- Close Header -->
        

</body>
</html>