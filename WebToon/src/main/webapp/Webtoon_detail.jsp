<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
.thumb, .mean {
	display: flex;
	justify-content: center;
}

#writer {
	display: flex;
	justify-content: center;
}

#container {
	width: 100%;
}

#content {
	width: 100%;
	padding-right: 300px;
	padding-left: 300px;
}

.list_table {
	padding-bottom: 50px;
}

hr {
	border: none;
	border-top: 3px dotted blue;
	color: #fff;
	background-color: #fff;
	height: 1px;
	width: 100%;
}

/* 내용 body쪽 길이 */
.container.py-5 {
	height: 1300px;
}

<
style> /* 테이블 넓이 조절 */ table.list_table {
	width: 100%;
}

.infoform {
	float: right;
}

th {
	background-color: #eeeeee;
	text-align: center;
}

td {
	text-align: center;
}

.py-5 {
	height: 800px;
}

.list_table.donation_btn {
	color: white;
	box-shadow: 200px 0 0 0 rgba(66, 50, 194, 1) inset;
	transition: all 0.9s, color 0.3s;
}

/* 마우스 올리면 나오는 효과*/
.list_table .donation_btn:hover {
	color: white;
	box-shadow: 200px 0 0 0 rgba(66, 50, 194, 1) inset;
	transition: all 0.9s, color 0.3s;
}

.list_table .insert_webtoon:hover {
	color: white;
	box-shadow: 200px 0 0 0 rgba(66, 50, 194, 1) inset;
	transition: all 0.9s, color 0.3s;
}
</style>

</head>
<body>
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

	<!-- Header -->
	<%@ include file="Header.jsp"%>


	<!-- Start Banner Hero -->
	<section class="bg-light">
		<div class="container py-4">
			<div class="row align-items-center justify-content-between">
				<div class="contact-header col-lg-4">
					<h1 class="h2 pb-3 text-primary">웹툰 승격 확률 예측</h1>
					<h4 class="h4 regular-400">고객센터를 통해 궁금증을 해결하세요!</h4>
					<p class="light-300">코로나19의 확산을 방지하고 지원 전문가의 건강을 지키기 위해 지원팀의
						규모를 축소하여 운영하게 되었습니다. 도움이 필요한 제품과 관련하여 전화로 문의하는 데 문제가 있는 경우 관리자
						이메일을 참조하세요.</p>
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

		<div id="content">
			<div class="thumb">
				<img id="thum" src="<%=thum%>" width="150" height="150"
					title="thumbnail" alt=""><span class="mask"></span>

			</div>
			<div id=writer>
				<h4>
					작가 : <b id="artist"><%=artist%></b>
				</h4>
			</div>
			<div class="mean">
				<h3>
					평균 확률 :
					<%
				float mean = (Float.parseFloat(vol1) + Float.parseFloat(vol2) + Float.parseFloat(vol3) + Float.parseFloat(vol4)
						+ Float.parseFloat(vol5)) / 5;
				%>
					<%=mean%>%
				</h3>
			</div>


			<!-- 5회차 상세 확률 -->

			<div id="main_list" style="padding-top: 30px; padding-bottom: 50px;">
				<h3 class="worksingle-heading h3 pb-3 light-300 typo-space-line">5회차
					확률</h3>
				<div class="search_list" style="padding-top: 40px;">
					<!-- 테이블 -->
					<form name="search_form" method="POST" action="">
						<table class="list_table" class="table table-striped"
							style="width: 100%; text-align: center;">
							<colgroup style="text-align: center;">
								<col style="width: 9%;">
								<col style="width: 15%;">

								<col style="width: 6%;">
								<col style="width: 7%;">
								<col style="width: 7%;">
								<col style="width: 6%;">
								<col style="width: 5%;">
								<col style="width: 10%;">

								<col style="width: 10%">
								<col style="width: 10%;">
								<col style="width: 10%;">
								<col style="width: 8%";>

							</colgroup>

							<thead>
								<tr style="height: 50px; text-align: center">
									<th scope="col">
										<div class="wrap">웹툰제목</div>
									</th>
									<th scope="col">
										<div class="wrap">회차 제목</div>
									</th>

									<th scope="col">
										<div class="wrap">조회수</div>
									</th>
									<th scope="col">
										<div class="wrap">회차별 별점</div>
									</th>
									<th scope="col">
										<div class="wrap">
											별점 참여<br> 인원 수
										</div>
									</th>
									<th scope="col">
										<div class="wrap">좋아요 수</div>
									</th>
									<th scope="col">
										<div class="wrap">댓글 수</div>
									</th>
									<th scope="col">
										<div class="wrap">
											조회수 대비<br>별점참여<br>(별점참여/조회수X1000)
										</div>
									</th>
									<th scope="col">
										<div class="wrap">
											조회수 대비<br>좋아요<br>(좋아요/조회수X1000)
										</div>
									</th>
									<th scope="col">
										<div class="wrap">
											댓글수 대비<br>긍정댓글
										</div>
									</th>
									<th scope="col">
										<div class="wrap">
											댓글수 대비<br>부정댓글
										</div>
									</th>
									<th scope="col">
										<div class="wrap">
											정식연재<br>확률
										</div>
									</th>
								</tr>

							</thead>
							<tbody>
								<!-- 여기에 글이 들어감 -->
								<tr style="height: 50px;">
									<td id="title" rowspan="5"><%=title%></td>
									<td id="vol1_title"><%=vol1_title%></td>
									<td id="view1"><%=view1%></td>
									<td id="star1"><%=star1%></td>
									<td id="star_in1"><%=star_in1%></td>
									<td id="like1"><%=like1%></td>
									<td id="comment1"><%=comment1%></td>
									<td id="view_star1"><%=view_star1%></td>
									<td id="view_like1"><%=view_like1%></td>
									<td id="comment_pos1"><%=comment_pos1%>%</td>
									<td id="comment_neg1"><%=comment_neg1%>%</td>
									<td id="vol1"><%=vol1%>%</td>
								</tr>
								<tr style="height: 50px;">
									<td id="vol2_title"><%=vol2_title%></td>
									<td id="view2"><%=view2%></td>
									<td id="star2"><%=star2%></td>
									<td id="star_in2"><%=star_in2%></td>
									<td id="like2"><%=like2%></td>
									<td id="comment2"><%=comment2%></td>
									<td id="view_star2"><%=view_star2%></td>
									<td id="view_like2"><%=view_like2%></td>
									<td id="comment_pos2"><%=comment_pos2%>%</td>
									<td id="comment_neg2"><%=comment_neg2%>%</td>
									<td id="vol2"><%=vol2%>%</td>
								</tr>
								<tr style="height: 50px;">
									<td id="vol3_title"><%=vol3_title%></td>
									<td id="view3"><%=view3%></td>
									<td id="star3"><%=star3%></td>
									<td id="star_in3"><%=star_in3%></td>
									<td id="like3"><%=like3%></td>
									<td id="comment3"><%=comment3%></td>
									<td id="view_star3"><%=view_star3%></td>
									<td id="view_like3"><%=view_like3%></td>
									<td id="comment_pos3"><%=comment_pos3%>%</td>
									<td id="comment_neg3"><%=comment_neg3%>%</td>
									<td id="vol3"><%=vol3%>%</td>
								</tr>
								<tr style="height: 50px;">
									<td id="vol4_title"><%=vol4_title%></td>
									<td id="view4"><%=view4%></td>
									<td id="star4"><%=star4%></td>
									<td id="star_in4"><%=star_in4%></td>
									<td id="like4"><%=like4%></td>
									<td id="comment4"><%=comment4%></td>
									<td id="view_star4"><%=view_star4%></td>
									<td id="view_like4"><%=view_like4%></td>
									<td id="comment_pos4"><%=comment_pos4%>%</td>
									<td id="comment_neg4"><%=comment_neg4%>%</td>
									<td id="vol4"><%=vol4%>%</td>
								</tr>
								<tr style="height: 50px;">
									<td id="vol5_title"><%=vol5_title%></td>
									<td id="view5"><%=view5%></td>
									<td id="star5"><%=star5%></td>
									<td id="star_in5"><%=star_in5%></td>
									<td id="like5"><%=like5%></td>
									<td id="comment5"><%=comment5%></td>
									<td id="view_star5"><%=view_star5%></td>
									<td id="view_like5"><%=view_like5%></td>
									<td id="comment_pos5"><%=comment_pos5%>%</td>
									<td id="comment_neg5"><%=comment_neg5%>%</td>
									<td id="vol5"><%=vol5%>%</td>
								</tr>
								<tr style="height: 50px;">
									<td colspan="12"><input class="insert_webtoon"
										type="submit" value="결과 등록" onclick="insert_webtoon();"
										style="width: 75px; height: 40px;"></td>
								</tr>
							</tbody>
							<!-- 리스트 끝 -->
						</table>
					</form>
				</div>
				<!-- START 후원 -->
				<div class="search_list" style="padding-top: 100px;">
					<h3 class="worksingle-heading h3 pb-3 light-300 typo-space-line">후원하기</h3>
					<!-- 리스트 -->
					<form name="search_form" method="POST" action="DonateCon">
						<table class="list_table" class="table table-striped"
							style="width: 100%; text-align: center; width: 100%;">
							<!-- <caption class="search_blind">공지사항 리스트</caption> -->
							<colgroup>
								<col style="width: 40px;">
								<col style="width: 250px;">
								<col style="width: 70px;">
								<col style="width: 80px;">
								<col style="width: 100px;">
								<col style="width: 30px;">
							</colgroup>
							<thead>
								<tr style="height: 50px;">
									<th scope="col">
										<div class="wrap">작가</div>
									</th>
									<th scope="col">
										<div class="wrap">후원금액</div>
									</th>
									<th scope="col">
										<div class="wrap">후원메세지</div>
									</th>
									<th scope="col">
										<div class="wrap"></div>
									</th>
								</tr>
							</thead>
							<tbody>
								<!-- 여기에 글이 들어감 -->
								<tr style="height: 50px;">
									<td><input class="donaiton_input" type="text"
										name=donee_id placeholder="작가 이름"></td>
									<td><input class="donaiton_input" type="text" name=money
										placeholder="후원 금액"></td>
									<td><input class="donaiton_input_message" type="text"
										name=donate_content placeholder="후원 메세지"></td>
									<!-- 후원버튼 -->
									<td><input type="submit" value="후원" class="donation_btn"
										style="width: 75px; height: 40px;"></td>
								</tr>
							</tbody>

							<!-- 리스트 끝 -->
						</table>
					</form>

				</div>
				<!-- End 후원하기  -->

			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@ include file="Footer.jsp"%>
</body>
<script>
	function insert_webtoon() {
		var title = "<%=title%>";
		var artist = "<%=artist%>";
		var thum = "<%=thum%>";
		
		var vol1_title = "<%=vol1_title %>";
		var vol2_title = "<%=vol2_title %>";
		var vol3_title = "<%=vol3_title %>";
		var vol4_title = "<%=vol4_title %>";
		var vol5_title = "<%=vol5_title %>";

		var view1 = "<%=view1 %>";
		var view2 = "<%=view2 %>";
		var view3 = "<%=view3 %>";
		var view4 = "<%=view4 %>";
		var view5 = "<%=view5 %>";

		var star1 = "<%=star1 %>";
		var star2 = "<%=star2 %>";
		var star3 = "<%=star3 %>";
		var star4 = "<%=star4 %>";
		var star5 = "<%=star5 %>";

		var star_in1 = "<%=star_in1 %>";
		var star_in2 = "<%=star_in2 %>";
		var star_in3 = "<%=star_in3 %>";
		var star_in4 = "<%=star_in4 %>";
		var star_in5 = "<%=star_in5 %>";

		var like1 = "<%=like1 %>";
		var like2 = "<%=like2 %>";
		var like3 = "<%=like3 %>";
		var like4 = "<%=like4 %>";
		var like5 = "<%=like5 %>";

		var comment1 = "<%=comment1 %>";
		var comment2 = "<%=comment2 %>";
		var comment3 = "<%=comment3 %>";
		var comment4 = "<%=comment4 %>";
		var comment5 = "<%=comment5 %>";

		var view_star1 = "<%=view_star1 %>";
		var view_star2 = "<%=view_star2 %>";
		var view_star3 = "<%=view_star3 %>";
		var view_star4 = "<%=view_star4 %>";
		var view_star5 = "<%=view_star5%>";

		var view_like1 = "<%=view_like1 %>";
		var view_like2 = "<%=view_like2 %>";
		var view_like3 = "<%=view_like3 %>";
		var view_like4 = "<%=view_like4 %>";
		var view_like5 = "<%=view_like5 %>";

		var comment_pos1 = "<%=comment_pos1 %>";
		var comment_pos2 = "<%=comment_pos2 %>";
		var comment_pos3 = "<%=comment_pos3 %>";
		var comment_pos4 = "<%=comment_pos4 %>";
		var comment_pos5 = "<%=comment_pos5 %>";

		var comment_neg1 = "<%=comment_neg1 %>";
		var comment_neg2 = "<%=comment_neg2 %>";
		var comment_neg3 = "<%=comment_neg3 %>";
		var comment_neg4 = "<%=comment_neg4 %>";
		var comment_neg5 = "<%=comment_neg5 %>";

		var vol1 = "<%=vol1 %>";
		var vol2 = "<%=vol2 %>";
		var vol3 = "<%=vol3 %>";
		var vol4 = "<%=vol4 %>";
		var vol5 = "<%=vol5%>";
		$.ajax({
			type : "post", //데이터 전송방식 : get or post
			data : {
					"title":title,
					"artist":artist,
					"thum":thum,
					
					"vol1_title":vol1_title,
					"vol2_title":vol2_title,
					"vol3_title":vol3_title,
					"vol4_title":vol4_title,
					"vol5_title":vol5_title,
					
					"view1":view1,
					"view2":view2,
					"view3":view3,
					"view4":view4,
					"view5":view5,
					
					"star1":star1,
					"star2":star2,
					"star3":star3,
					"star4":star4,
					"star5":star5,
					
					"star_in1":star_in1,
					"star_in2":star_in2,
					"star_in3":star_in3,
					"star_in4":star_in4,
					"star_in5":star_in5,
					
					"like1":like1,
					"like2":like2,
					"like3":like3,
					"like4":like4,
					"like5":like5,
					
					"comment1":comment1,
					"comment2":comment2,
					"comment3":comment3,
					"comment4":comment4,
					"comment5":comment5,
					
					"view_star1":view_star1,
					"view_star2":view_star2,
					"view_star3":view_star3,
					"view_star4":view_star4,
					"view_star5":view_star5,
					
					"view_star1":view_star1,
					"view_like2":view_star2,
					"view_like3":view_star3,
					"view_like4":view_star4,
					"view_like5":view_star5,
					
					"comment_pos1":comment_pos1,
					"comment_pos2":comment_pos2,
					"comment_pos3":comment_pos3,
					"comment_pos4":comment_pos4,
					"comment_pos5":comment_pos5,
					
					"comment_neg1":comment_neg1,
					"comment_neg2":comment_neg2,
					"comment_neg3":comment_neg3,
					"comment_neg4":comment_neg4,
					"comment_neg5":comment_neg5,
					
					"vol1":vol1,
					"vol2":vol2,
					"vol3":vol3,
					"vol4":vol4,
					"vol5":vol5
			}, // 서버로 보낼 데이터(사용자가 적은 이메일) -> {key(from 태그의 name값) : value}
			url : "Insert_WebtoonCon", // 데이터를 보낼 서버 페이지
			dataType : "text", // 응답 데이터의 타입 지정
			// 요청에 성공 시 실행할 함수 정의 -> 가능 True / False
			success : function(data) { //data : 응답할 때 보내줄 값(true,false) 가지고 있음
				console.log("성공")
			},
			// 요청에 실패시 실행할 함수 정의
			error : function() {
				alert("요청 실패!")
			}
		});
	}
</script>
</html>