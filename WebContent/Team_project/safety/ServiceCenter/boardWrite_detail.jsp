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
		// 선택한 bno의 데이터 가져오기
		vo = dao.getData(bno);
	} else {
		response.sendRedirect("inquriy.jsp");
	}
	
	// DB에 저장되는 email 형식은 ****@****.com
	// 이런식으로 되어있기 때문에 @를 기준으로 앞 뒤를 따서 email, domain 선언
	String email_domain = vo.getQa_email();
	int pos = email_domain.indexOf('@');
	String email = email_domain.substring(0, pos);
	String domain = email_domain.substring(pos+1, email_domain.length());
	
	
%>


<html>
<head>
<meta charset="UTF-8">
<title>수정/삭제하기</title>
<!-- boardWrite_detail.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<style type="text/css">
@charset "UTF-8";
	/* 오른쪽 하단 후원하기 버튼 */
	#donaBtn {
		position: fixed;
		bottom: 50px;
		right: 50px;
		opacity: 0.7;
		width: 180px;
		height: 100px;
	}
	
	.header {
		height: 71px;
		border-bottom: 1px solid #8C8C8C;
	}
	/* 로고 css */
	#logo {
		height: 70px;
		width: 150px;
		margin-left: 10px;
		float: left;
		margin-right: 60px;
	}
	/* nav바 */
	.navi_li {
		margin: 20px 0 0 0;
		display: inline;
		float: left;
	}
	
	/* nav바 */
	.nav {
		padding: 60px 60px 23px 60px;
		text-decoration: none;
		font-size: 20px;
		color: black;
	}
	/* nav바 밑 서브메뉴들 */
	.hide_menu {
		position: absolute;
		top: 88px;
		left: 230px;
		background-color: white;
		display: none;
	}
	/* nav바 밑 서브메뉴들 */
	.hide_menu ul {
		float: left;
		list-style: none;
	}
	/* nav바 밑 서브메뉴들 */
	.hide_menu li a {
		text-decoration: none;
		color: black;
	}
	/* nav바에 마우스를 올렸을 때  */
	.navi:hover .hide_menu {
		display: block;
	}
	/* nav바 밑 서브메뉴들 */
	#hm_ul2 {
		margin-left: 60px;
	}
	
	#hm_ul3 {
		margin-left: 60px;
	}
	
	#hm_ul4 {
		margin-left: 20px;
		padding-right: 30px;
	}
	
	/* 후원가이드 1:1문의 전화문의 */
	.under_bar {
		height: 160px;
	}
	/* 후원가이드 1:1문의 전화문의 */
	.under_bar div {
		border: 1px solid #BDBDBD;
		padding: 20px;
		margin-top: 50px;
		margin-right: 40px;
		width: 25%;
		height: 60px;
		float: left;
	}
	/* 후원가이드 1:1문의 전화문의 */
	.under_bar div img {
		float: left;
		padding-right: 20px;
	}
	/* 후원가이드 1:1문의 전화문의 */
	.under_bar div p {
		font-size: 13px;
	}
	/* 후원가이드 1:1문의 전화문의 */
	.under_bar div h3 {
		margin: 0;
	}
	/* 후원가이드 1:1문의 전화문의 */
	.under_bar div a img {
		float: right;
		margin-top: -50px;
		margin-right: -30px;
	}
	/* 맨 위 nav와 맨 밑 footer를 제외한 전체 div */
	.main {
		height: 1350px;
		background-color: #F6F6F6;
	}
	
	/* 맨 아래 div */
	.footer {
		width: 1903px; height : 190px;
		background-color: #EAEAEA;
		height: 190px;
	}
	/* 맨 아래 div */
	.inner {
		padding: 20px 135px 20px 360px;
	}
	/* 맨 하단 div */
	.footer_top input {
		margin-right: 20px;
	}
	/* 맨 하단 div */
	.fb {
		border-right: 1px solid #BDBDBD;
		padding-right: 20px;
		padding-left: 20px;
		text-align: center;
		display: inline;
		float: left;
	}
	/* 맨 하단 div */
	.fb:first-child {
		margin-left: -60px;
	}
	/* 맨 하단 div */
	.fb:last-child {
		border-right: none;
	}
	/* 맨 하단 div */
	.fb a {
		text-decoration: none;
		color: black;
	}
	/* 맨 하단 div */
	.fb_mi {
		border-right: 1px solid #BDBDBD;
		padding-right: 20px;
		padding-left: 20px;
		text-align: center;
		display: inline;
		float: left;
		font-size: 12px;
		color: #4C4C4C;
	}
	/* 맨 하단 div */
	.fb_mi:first-child {
		margin-left: -60px;
	}
	/* 맨 하단 div */
	.fb_mi:last-child {
		border-right: none;
	}
	/* 맨 하단 div */
	.footer_bottom p {
		font-size: 12px;
		color: #A6A6A6;
	}
	
	body {
		margin: 0;
	}
	/* 전체 div */
	.m {
		width: 1903px;
	}
	
	/* 본 내용 사진 div */
	.customer {
		background-image: url(../image/pencil.gif);
		background-size: 100% 100%;
		height: 170px;
		padding-top: 100px;
		text-align: center;
	}
	/* 메인 div  */
	.boardBack {
		margin: -200px 0 0 360px;
		width: 1200px;
		height: 800px;
	}
	
	/* 메인 div 왼쪽 메뉴들 */
	.boardBack_left {
		opacity: 0.9;
		margin: 0;
		width: 150px;
		height: 800px;
		float: left;
		padding-top: 20px;
	}
	/* 메인 div 왼쪽 메뉴 프로필 */
	.profile {
		text-align: center;
	}
	/* 메인 div 왼쪽 메뉴들 */
	.boardBack_left img {
		margin: 0 auto;
	}
	
	/* 내용 좌측 div ul */
	.in_nav {
		margin-top: 37px;
	}
	/* 내용 좌측 div ul */
	.in_nav li span {
		display: block;
		height: 50px;
		line-height: 50px;
		border-top: 1px solid #e5e5e5;
		border-bottom: 1px solid #e5e5e5;
	}
	/* 내용 좌측 div ul */
	.in_nav li {
		list-style: none;
	}
	/* 내용 좌측 div ul */
	.in_nav li a {
		text-decoration: none;
		color: black;
	}
	/* 내용 좌측 div ul */
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
	/* 수정/삭제하기에서 이메일 input */
	#email, #domain {
		width: 130px;
		height: 20px;
		border: none;
	}
	/* 내용 좌측 div ul */
	.in_nav_span.seven {
		background-color: white;
		color: red;
		box-shadow: -5px 5px 10px -5px rgba(0,0,0,.15);
	}
	/* 메인 div의 오른쪽 div의 h2 Safety재단 문의방법 */
	.bb_right_title {
		border-right: 1px solid #D5D5D5;
		width: 150px;
		height: 150px;
		float: left;
		color: #926d49;
	}
	
	/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
	.info_faq {
		float: left;
		width: 20%;
		padding: 10px 10px 10px 40px;
	}
	/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
	.info_faq h4 {
		color: #926d49;
	}
	/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
	.info_faq img {
		float: left;
		padding-right: 20px;
		margin-top: 15px;
	}
	/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
	.info_faq a img {
		float: right;
		margin-top: -60px;
		margin-right: -30px;
	}
	/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
	.info_faq p {
		font-size: 13px;
	}
	/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
	.info_faq a {
		text-decoration: none;
		color: #3DB7CC;
	}
	/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
	.in_nav_span {
		font-size: 14px;
		padding-left: 10px;
		box-sizing: border-box;
	}
	/* 문의 테이블 */
	.inquiry_Table {
		width: 100%;
		border-collapse: collapse;
		border-top: 1px solid #D5D5D5;
		margin-bottom: 20px;
	}
	/* 문의 테이블 */
	.inquiry_Table tr {
		border-bottom: 1px solid #D5D5D5;
	}
	/* 문의 테이블 */
	.inquiry_Table th {
		width: 200px;
		box-sizing: border-box;
		text-align: left;
		padding: 26px 0 26px 25px;
	}
	/* 문의 테이블 */
	.inquriy_Table td {
		padding: 10px 0;
	}
	/* 문의 테이블 */
	.table_input {
		height: 40px;
		width: 550px;
		padding: 20px;
		box-sizing: border-box;
		border: 1px solid #D5D5D5;
	}
	/* 문의 테이블 */
	textarea {
		padding: 20px;
		width: 550px;
		height: 230px;
		box-sizing: border-box;
		border: 1px solid #D5D5D5;
	}
	/* 문의 테이블 */
	.table_button {
		text-align: center;
	}
	/* 문의 테이블 */
	.table_Bt {
		width: 150px;
		height: 55px;
		font-size: 17px;
	}
	/* 문의 테이블 */
	.table_Bt.first {
		background-color: white;
		border: 1px solid #D5D5D5;
	}
	/* 문의 테이블 */
	.table_Bt.second {
		background-color: #747474;
		border: 1px solid #747474;
		color: white;
	}
	/* 문의 테이블 */
	.table_Bt.third {
		background-color: #4C4C4C;
		border: 1px solid #4C4C4C;
		color: white;
	}
	/* 문의 테이블 */
	.table_email {
		width: 410px;
		border: 1px solid #D5D5D5;
		margin-bottom: 10px;
	}
	/* 문의 테이블 */
	#email_sel {
		border: none;
		height: 40px;
	}
	/* 문의 테이블 */
	#inquiry_area {
		width: 150px;
		height: 40px;
		border: 1px solid #D5D5D5;
		box-sizing: border-box;
		padding-left: 15px;
	}
	/* 문의 테이블 */
	.ta {
		padding-top: 20px;
	}
	/* 문의 테이블 */
	input:focus {outline:none;}
	textarea:focus {outline:none;}
	select:focus {outline:none;}
	/* 문의 테이블 */
	.email_ul {
		padding: 0 20px;
		font-size: 14px;
	}
	/* 문의 테이블 */
	#YN_email {
		zoom: 1.5;
		text-align: left;
		position: relative;
		top: 3px;
	}
	/* 문의 테이블 */
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
		
		//- index 값으로 주기
		//$("#selBox option:eq(0)").attr("selected", "selected");

		//- value 값으로 주기
		<%-- $("#domain").val("<%= domain %>").attr("selected", "selected"); --%>
		
		
		$("#inquiry_area").val('<%= vo.getQa_inquiry() %>').attr("selected", "selected");
		$("#email_sel").val(domain).attr("selected", "selected");
		$("#email_sel").change(function(){
			$("#domain").val($("#email_sel option:selected").val());
		});
		

		
		$(".table_Bt.third").on('click', function(){
			var flag = confirm("정말 삭제하시겠습니까?");
			
			
		});
		
	});
	
	function modifyData(obj){
		var flag = confirm("정말 수정하시겠습니까?");
		
		if(flag) {
			obj.form.submit();
			
		}
		
	}
	
	
	
	
</script>
</head>
<body>
	<input type="image" src="../image/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
			<jsp:include page="../etc/project_nav.jsp"></jsp:include>
			
			
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
												<select id="inquiry_area" name="inquiry_area" >
													<option value="전체">전체</option>
													<option value="후원신청">후원신청</option>
													<option value="후원자정보">후원자정보</option>
													<option value="결제정보">결제정보</option>
													<option value="기부금영수증">기부금영수증</option>
													<option value="해외결연후원">해외결연후원</option>
													<option value="기타">기타</option>
												</select>
											</td>
										</tr>
										<tr>
											<th><span>제목</span></th>
											<td><input type="text" name="title" id="title" class="table_input" value="<%= vo.getQa_title() %>" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20"><%= vo.getQa_contents() %></textarea></td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td class="ta">
												<div class="table_email_main"></div>
													<div class="table_email">
														<input type="text" name="email" id="email" class="table_input" value="<%= email %>" />
														<span>@</span>
														<input type="text" name="domain" id="domain" class="table_input" value="<%= domain %>"/>
														<select name="email_sel" id="email_sel" >
															<option value="naver.com">naver.com</option>
															<option value="daum.net">daum.net</option>
															<option value="gmail.com">gmail.com</option>
															<option value="hanmail.com">hanmail.com</option>
															<option value="nate.com">nate.com</option>
															<option value="yahoo.com">yahoo.com</option>
															<option value="dreamwiz.com">dreamwiz.com</option>
															<option value="">직접 입력</option>
														</select>
													</div>
													<div class="email_check">
														<label for="YN_email" class="checkbox">
															<input type="checkbox" name="YN_email" id="YN_email" title="이메일로 답변 받음" value="Y"/>
															<!-- <i class="chk"></i> -->
															<span>이메일로 답변 받음</span>
														</label>
														<input type="hidden" name="YN_email" id="YN_email" value="Y" />
													</div>
													<div>
														<ul class="email_ul">
															<li>이메일로 답변 받길 원하시면, '이메일로 답변 받음'에 체크해주세요.
															<br />
															위에 입력하신 주소로 답변을 보내드리며, 마이페이지 > 나의 회원정보에 등록된 이메일 주소가 함께 변경됩니다. <br /><br />
															</li>
															<li>답변이 완료되면 등록된 휴대폰 번호로 답변 완료 알림을 보내드리며, 상세내용은 마이페이지>1:1문의에서 확인 가능합니다.</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>
									</table>
									<div class="table_button">
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='inquiry.jsp'" />
										<input type="button" value="수정" onclick="modifyData(this)" class="table_Bt second" />
										<a href="boardWrite_deleteOk.jsp?bno=<%= vo.getQa_bno()%>">
										<input type="button" value="삭제" class="table_Bt third" />
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