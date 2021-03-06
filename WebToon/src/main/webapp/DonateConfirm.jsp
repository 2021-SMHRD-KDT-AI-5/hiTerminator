<%@page import="model.DonateDTO"%>
<%@page import="model.DonateDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
<%
	DonateDAO dao = new DonateDAO();
	ArrayList<DonateDTO> list = new ArrayList<DonateDTO>();
	list = dao.showDonate();
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

    <style>
        #container{margin:0 310px; width:1300px; position:relative; padding-top:10px;}
        #container #left_side{width:210px; height:500px; float:left; text-align:left;}
        #container #left_side>ul{list-style: none; padding:0;}
        #container .tit{padding:10px; color:#6610f2; font-weight:bold; border-bottom: 3px solid #6610f2;}
        #container #left_side>ul>li{margin:7px;}
        #container #left_side>ul>li>a{text-decoration:none; color: gray;}
        #container #main{width:1090px; height:500px; float:left;}
        #container #main h1{font-size:20px; font-weight:500; padding:10px; margin:0; border-bottom:1px solid gray;}
        #container #main .tb_list{margin:30px 0 0 30px; color:gray; font-size:14px; text-align:center;}
        #container #main .tb_list th{font-weight: normal; background-color:rgb(232, 232, 232);}
        #container #main .tb_list tr{border-bottom:1px solid gray; height:30px;}
        #container #paginate{width:1090px; float:left; height:20px; text-align:center; font-size:14px; margin-top:12px;}
        #container #paginate a{text-decoration: none; color:gray; padding:4px;}
        footer{clear:left;}
    </style>

</head>
<body>

	<!-- Header -->
	<%@ include file = "Header.jsp" %>


	<!-- Start ?????? ?????? ?????? -->
	
	<div id="container">
        <div id="left_side">
            <p class="tit">???????????????</p>
			<ul>
                <li><a href="Webtoon_Favorite.jsp" target="_self">????????????</a></li>
                <li><a href="DonateConfirm.jsp" target="_self">??????/????????????</a></li>
                <li><a href="Consulting_1.jsp" target="_self">?????????</a></li>
                <li><a href="Mem_Update.jsp" target="_self">???????????? ??????</a></li>
            </ul>
        </div>
        <div id="main"><h1>????????????</h1>
        	<form>
            <table class="tb_list">
                <colgroup>
                    <col width="200" />
                    <col width="200" />
                    <col width="200" />
                    <col width="450" />
                </colgroup>
                <thead>
                    <tr>
                        <th>????????????</th>
                        <th>??????</th>
                        <th>????????????</th>
                        <th>???????????????</th>
                    </tr>
                </thead>
                <tbody>
                  <% for(int i=0; i<list.size(); i++){ %>
                  	<tr>
                  		<td><%=list.get(i).getDonate_date() %></td>
                  		<td><%=list.get(i).getArtist_id() %></td>
                  		<td><%=list.get(i).getMoney() %></td>
                  		<td><%=list.get(i).getDonate_content() %></td> 
                  	</tr>
                  <%} %>
                </tbody>
            </table>
            </form>
            <div id="paginate">
                <a href="">1</a>
                <a href="">2</a>
                <a href="">3</a>
                <a href="">4</a>
                <a href="">5</a>
                <a href="">??????></a>
            </div>
        </div>
    </div>


	<!-- End ?????? ?????? ?????? -->

	<!-- Footer -->
	<%@ include file = "Footer.jsp" %>


</body>
</html>