<%@page import="tim_Project_Dao.board_QA_Dao"%>
<%@page import="tim_Project_VO.board_QA_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String no = request.getParameter("bno");
	board_QA_VO vo = new board_QA_VO();
	board_QA_Dao dao = new board_QA_Dao();
	
	if (no != null) {
		int bno = Integer.parseInt(no);
		// 조회수 증가 메소드 추가
		dao.raiseHits(bno);
		
		vo = dao.getData(bno);
	} else {
		response.sendRedirect("inquriy.jsp");
	}
	
	String email_domain = vo.getQa_email();
	int pos = email_domain.indexOf('@');
	String email = email_domain.substring(0, pos);
	String domain = email_domain.substring(pos+1, email_domain.length());
	
	
%>


<html>
<head>
<meta charset="UTF-8">
<title>문의 상세보기 - 관리자 입장</title>
<!-- boardWrite_de_manager.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<style type="text/css">
@charset "UTF-8";

	#donaBtn {
		position: fixed;
		bottom: 50px;
		right: 50px;
		opacity: 0.7;
		width: 180px;
		height: 100px;
	}
	
	#cctxt {
		width: 490px;
		height: 30px;
		padding: 10px;
	}
	
	#selbt {
		margin-top: 7px;
		width: 40px;
		height: 40px;
		background-color: white;
		margin-left: -52px;
		size: 50% 50%;
		position: absolute;
	}
	
	.bb {
		text-decoration: none;
		font-size: 20px;
		color: black;
	}
	
	.bb_li {
		border: 1px solid #BDBDBD;
		border-right: hidden;
		width: 180px;
		height: 45px;
		text-align: center;
		padding-top: 20px;
		display: inline;
		float: left;
	}
	
	#bb1_li {
		border-right: 1px solid #BDBDBD;
	}
	
	
	/* 후원가이드 1:1문의 전화문의 */
	.under_bar {
		height: 160px;
	}
	
	.under_bar div {
		border: 1px solid #BDBDBD;
		padding: 20px;
		margin-top: 50px;
		margin-right: 40px;
		width: 25%;
		height: 60px;
		float: left;
	}
	
	.under_bar div img {
		float: left;
		padding-right: 20px;
	}
	
	.under_bar div p {
		font-size: 13px;
	}
	
	.under_bar div h3 {
		margin: 0;
	}
	
	.under_bar div a img {
		float: right;
		margin-top: -50px;
		margin-right: -30px;
	}
	
	.main {
		height: 1350px;
		background-color: #F6F6F6;
	}
	
	
	
	/* 본 내용 */
	.customer {
		background-image: url(../image/pencil.gif);
		background-size: 100% 100%;
		height: 170px;
		padding-top: 100px;
		text-align: center;
	}
	
	.boardBack_left {
		opacity: 0.9;
		margin: 0;
		width: 150px;
		height: 800px;
		float: left;
		padding-top: 20px;
	}
	
	.profile {
		text-align: center;
	}
	
	.boardBack_left img {
		margin: 0 auto;
	}
	
	.boardBack {
		margin: -200px 0 0 360px;
		width: 1200px;
		height: 800px;
	}
	
	/* 내용 좌측 div ul */
	.in_nav {
		margin-top: 37px;
	}
	
	.in_nav li span {
		display: block;
		height: 50px;
		line-height: 50px;
		border-top: 1px solid #e5e5e5;
		border-bottom: 1px solid #e5e5e5;
	}
	
	.in_nav li {
		list-style: none;
	}
	
	.in_nav li a {
		text-decoration: none;
		color: black;
	}
	
	.in_nav li span:last-child {
		border-bottom: none;
	}
	
	/* 내용 우측 div */
	.boardBack_right {
		background-color: white;
		width: 1050px;
		float: left;
		padding: 40px;
		box-sizing: border-box;
		box-shadow: 0px 5px 10px 0px rgba(0,0,0,.15);
	}
	
	#email, #domain {
		width: 130px;
		height: 20px;
		border: none;
	}
	
	.in_nav_span.seven {
		background-color: white;
		color: red;
		box-shadow: -5px 5px 10px -5px rgba(0,0,0,.15);
	}
	
	.bb_right_title {
		border-right: 1px solid #D5D5D5;
		width: 150px;
		height: 150px;
		float: left;
		color: #926d49;
	}
	
	/* 1:1문의에서 왼쪽 메뉴들 */
	.info_faq {
		float: left;
		width: 20%;
		padding: 10px 10px 10px 40px;
	}
	.info_faq h4 {
		color: #926d49;
	}
	
	.info_faq img {
		float: left;
		padding-right: 20px;
		margin-top: 15px;
	}
	
	.info_faq a img {
		float: right;
		margin-top: -60px;
		margin-right: -30px;
	}
	
	.info_faq p {
		font-size: 13px;
	}
	
	.info_faq a {
		text-decoration: none;
		color: #3DB7CC;
	}
	
	.in_nav_span {
		font-size: 14px;
		padding-left: 10px;
		box-sizing: border-box;
	}
	
	.inquiry_Table {
		width: 100%;
		border-collapse: collapse;
		border-top: 1px solid #D5D5D5;
		margin-bottom: 20px;
	}
	
	.inquiry_Table tr {
		border-bottom: 1px solid #D5D5D5;
	}
	
	.inquiry_Table th {
		width: 200px;
		box-sizing: border-box;
		text-align: left;
		padding: 26px 0 26px 25px;
	}
	
	.inquriy_Table td {
		padding: 10px 0;
	}
	
	.table_input {
		height: 40px;
		width: 550px;
		padding: 20px;
		box-sizing: border-box;
		border: 1px solid #D5D5D5;
	}
	
	textarea {
		padding: 20px;
		width: 550px;
		height: 230px;
		box-sizing: border-box;
		border: 1px solid #D5D5D5;
	}
	
	.table_button {
		text-align: center;
	}
	
	.table_Bt {
		width: 150px;
		height: 55px;
		font-size: 17px;
	}
	
	.table_Bt.first {
		background-color: white;
		border: 1px solid #D5D5D5;
	}
	
	.table_Bt.second {
		background-color: #747474;
		border: 1px solid #747474;
		color: white;
	}
	.table_Bt.third {
		background-color: #4C4C4C;
		border: 1px solid #4C4C4C;
		color: white;
	}
	
	.table_email {
		width: 300px;
		border: 1px solid #D5D5D5;
		background-color: #EBEBE4;
	}
	
	#email_sel {
		border: none;
		height: 40px;
	}
	
	#inquiry_area {
		width: 150px;
		height: 40px;
		border: 1px solid #D5D5D5;
		box-sizing: border-box;
		padding-left: 15px;
	}
	.ta {
		padding: 20px 0;
		
	}
	
	input:focus {outline:none;}
	textarea:focus {outline:none;}
	select:focus {outline:none;}
	
	.email_ul {
		padding: 0 20px;
		font-size: 14px;
	}
	
	#YN_email {
		zoom: 1.5;
		text-align: left;
		position: relative;
		top: 3px;
	}
	.checkbox {
		width: 200px;
	}
	
	/*
		#top {
			text-align: center;
			border-bottom: 1px solid black;
		}
		
		#contents {
			margin-left: 10px;
		}
		#button{
			margin-left: 30px;
		}
		
		#writer, #title, #email, #inquiry{margin-left:10px;} */
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	var domain = '<%= domain %>';
	$(function() {

		$('.nav').mouseover(function() {

			$(this).css("border-bottom", "2px solid red");

		});

		$('.nav').mouseout(function() {

			$(this).css("border-bottom", "none");

		});

		$('.ub').mouseover(function() {

			$(this).css("border", "1px solid red");

		});

		$('.ub').mouseout(function() {

			$(this).css("border", "1px solid #BDBDBD");

		});	
		
		
		$(".table_Bt.third").on('click', function(){
			var flag = confirm("정말 삭제하시겠습니까?");
			
			
		});
		
	});
	
	
	
	
	
	
</script>
</head>
<body>
	<input type="image" src="../image/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
			<jsp:include page="../etc/project_nav.jsp"></jsp:include>
			
			<br /><br /><br />
			<hr />
			
		<div class="main">
			<div class="customer">
			</div>
			<div class="boardBack">
				<jsp:include page="backBoard_left.jsp"></jsp:include>
		
				<div class="boardBack_right">
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="right_inner">
							<form action="boardWrite_modify.jsp" name="frm">
								<input type="hidden" name="bno" value="<%= vo.getQa_bno() %>" />
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<input type="text" name="inquiry_area" id="inquiry_area" value="<%= vo.getQa_inquiry() %>" disabled />
												<!-- <select id="inquiry_area" name="inquiry_area" >
													<option value="전체">전체</option>
													<option value="후원신청">후원신청</option>
													<option value="후원자정보">후원자정보</option>
													<option value="결제정보">결제정보</option>
													<option value="기부금영수증">기부금영수증</option>
													<option value="해외결연후원">해외결연후원</option>
													<option value="기타">기타</option>
												</select> -->
											</td>
										</tr>
										<tr>
											<th><span>제목</span></th>
											<td><input type="text" name="title" id="title" class="table_input" value="<%= vo.getQa_title() %>" disabled /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20" disabled><%= vo.getQa_contents() %></textarea></td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td class="ta">
												<div class="table_email">
													<input type="text" name="email" id="email" class="table_input" value="<%= email %>" disabled />
													<span>@</span>
													<input type="text" name="domain" id="domain" class="table_input" value="<%= domain %>" disabled />
												</div>
													
											</td>
										</tr>
										<tr>
											<th><span>답변</span></th>
											<td class="ta">
												<!-- 답변 // 즉, 댓글 -->
												<div class="re_board">
													<textarea name="re" id="re" cols="60" rows="0">
													</textarea>
												</div>
											</td>
										</tr>
									</table>
									<div class="table_button" >
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='inquiry.jsp'" />
										<a href="boardWrite_detail.jsp?bno=<%= vo.getQa_bno() %>">
											<input type="button" value="수정" class="table_Bt second" />
										</a>
									</div>
								
								</form>	
							</div>
						</div>		<!-- boardBack_right end -->
						
					</div>
				</div>
			</div>
		
			<jsp:include page="../etc/project_footer.jsp"></jsp:include>
		

</body>
</html>