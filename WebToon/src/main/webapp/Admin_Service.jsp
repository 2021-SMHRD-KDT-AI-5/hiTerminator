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
        #container{height:1000px; margin-left: 450px; margin-right: 450px auto; width:1020px;}
        #container h1{padding:20px 0; margin-bottom:0px; color:#4232c2;}
        #container table tr{border:1px solid gray; text-align:center;}
        #container table th, td{height:40px; font-weight:normal;}
        #container table td{color:gray;}
        #container #paginate{width:1090px; float:left; height:20px; text-align:center; font-size:14px; margin-top:12px;}
        #container #paginate a{text-decoration: none; color:gray; padding:4px;}
        footer{clear:left;}
    </style>
</head>
<body>
    <!-- Header -->
    <%@ include file = "Header.jsp" %>
    <!-- Close Header -->


    <div id="container">
        <div id="main">
            <h1>고객문의 확인</h1>
            <table>
                <colgroup>
                    <col width="150" />
                    <col width="150" />
                    <col width="200" />
                    <col width="500" />
                    <col width="300" />
                    <col width="200" />
                </colgroup>
                <tr>
                    <th>분류</th>
                    <th>아이디</th>
                    <th>이메일</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>일시</th>
                </tr>
                <%for(int i=0; i<list.size(); i++){ %>
				<tr>
					<td><%=list.get(i).getMember_id() %></td>
					<td><%=list.get(i).getEmail() %></td>
					<td><%=list.get(i).getQ_ctgr() %></td>
					<td><%=list.get(i).getQ_title() %></td>
					<td><%=list.get(i).getQ_content() %></td>
					<td><%=list.get(i).getQ_date() %></td>
					<!-- 삭제기능: select.jsp 참고해서 만들 수 있어요 -->
					<%-- <td><a
						href="MessageDeleteCon?messageNum=<%=list.get(i).getNum()%>">삭제</a></td>
					<!-- 쿼리스트링으로 url에 데이터 실어보내기 --> --%>
				</tr>
				<%} %>
            </table>
        </div>
        <div id="paginate">
            <a href="">1</a>
            <a href="">2</a>
            <a href="">3</a>
            <a href="">4</a>
            <a href="">5</a>
            <a href="">다음></a>
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

</body>
</html>