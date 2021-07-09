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
        #container h1{padding:20px 0; margin-bottom:0px; color:#4232c2;}
        #container table tr{border:1px solid gray; text-align:center;}
        #container table th, td{height:40px; font-weight:normal;}
        #container table td{color:gray;}
        #container table td>a{color:gray;}
        #container #paginate{width:1090px; float:left; height:20px; text-align:center; font-size:14px; margin-top:12px;}
        #container #paginate a{color:gray; padding:4px;}
        #container .btnDelete{background-color:#4232c2; color:white;}
        
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
                	<col width="50" />
                	<col width="50" />
                    <col width="100" />
                    <col width="200" />
                    <col width="100" />
                    <col width="200" />
                    <col width="200" />
                </colgroup>
                <tr>
                	<th><input type="checkbox" name="checkAll" onclick="checkAll();"></th>
                	<th>번호</th>
                    <th>아이디</th>
                    <th>이메일</th>
                    <th>분류</th>
                    <th>제목</th>
                    <th>일시</th>
                </tr>
                <%for(int i=0; i<list.size(); i++){ %>
				<tr>
					<td><input type="checkbox" name="check" value="<%= list.get(i).getQ_no()%>"></td>
					<td><%=list.get(i).getQ_no() %></td>
					<td><%=list.get(i).getMember_id() %></td>
					<td><a href=""><%=list.get(i).getEmail() %></a></td>
					<td><%=list.get(i).getQ_ctgr() %></td>
					<td><a href="Ser_MessageDetailCon?num=<%=list.get(i).getQ_no() %>"><%=list.get(i).getQ_title() %></a></td>
					<td><%=list.get(i).getQ_date() %></td>
					<!-- 삭제기능: select.jsp 참고해서 만들 수 있어요 -->
					<%-- <td><a
						href="Ser_MessageDeleteCon?messageNum=<%=list.get(i).getMember_id()%>">삭제</a></td>
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
        <input type="button" value="삭제" class="btnDelete" onclick="deleteValue();">
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
        
        $(function(){
        	var chkObj = document.getElementsByName("check");
        	var rowCnt = chkObj.length;
        	
        	$("input[name='checkAll']").click(function(){
            	var chk_listArr=$("input[name='check']");
            	for (var i=0; i<chk_listArr.length; i++){
            		chk_listArr[i].checked=this.checked;
            	}
            });
            
            $("input[name='check']").click(function(){
            	if($("input[name='check']:checked").length == rowCnt){
            		$("input[name='checkAll']")[0].checked=true;
            	}else{
            		$("input[name='checkAll']")[0].checked=false;
            	}
            });
        });
        
        function deleteValue(){
        	var url="Ser_MessageDeleteCon"; // Controller로 보내고자하는 URL
        	var valueArr = new Array();
        	var list = $("input[name='check']");
        	for(var i=0; i<list.length; i++){
        		if(list[i].checked){ // 선택되어 있으면 배열에 값을 저장함.
        			valueArr.push(list[i].value);
        		}
        	}
        
	        if(valueArr.Length==0){
	        	alert("선택된 글이 없습니다.");
	        }else{
	        	var chk=confirm("정말 삭제하시겠습니까?");
	        	$.ajax({
	        		url:url,
	        		type:'POST',
	        		traditional:true,
	        		data:{
	        			valueArr : valueArr
	        		},
	        		success:function(jdata){
	        			if(jdata==1){
	        				//location.replace("Admin_Service")
	        				location.href = "Admin_Service.jsp"
	        				
	        			}
	        			else{
	        				alert("삭제 실패");
	        			}
	        		}
	        		
	        	});
        		}
        }
        
        
        
        
        
    </script>
    <!-- Templatemo -->
    <script src="assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="assets/js/custom.js"></script>

</body>
</html>