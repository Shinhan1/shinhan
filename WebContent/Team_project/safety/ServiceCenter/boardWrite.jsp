<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<!-- inquiry.jsp -->
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
	
	.header {
		height: 71px;
		border-bottom: 1px solid #8C8C8C;
	}
	
	#logo {
		height: 70px;
		width: 150px;
		margin-left: 10px;
		float: left;
		margin-right: 60px;
	}
	
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
	
	.hide_menu {
		position: absolute;
		top: 88px;
		left: 230px;
		background-color: white;
		display: none;
	}
	
	.hide_menu ul {
		float: left;
		list-style: none;
	}
	
	.hide_menu li a {
		text-decoration: none;
		color: black;
	}
	
	.navi:hover .hide_menu {
		display: block;
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
	
	/* 맨 하단 div */
	.footer {
		width: 1903px; height : 190px;
		background-color: #EAEAEA;
		height: 190px;
	}
	
	.inner {
		padding: 20px 135px 20px 360px;
	}
	
	.footer_top input {
		margin-right: 20px;
	}
	
	.fb {
		border-right: 1px solid #BDBDBD;
		padding-right: 20px;
		padding-left: 20px;
		text-align: center;
		display: inline;
		float: left;
	}
	
	.fb:first-child {
		margin-left: -60px;
	}
	
	.fb:last-child {
		border-right: none;
	}
	
	.fb a {
		text-decoration: none;
		color: black;
	}
	
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
	
	.fb_mi:first-child {
		margin-left: -60px;
	}
	
	.fb_mi:last-child {
		border-right: none;
	}
	
	.footer_bottom p {
		font-size: 12px;
		color: #A6A6A6;
	}
	
	body {
		margin: 0;
	}
	
	.m {
		width: 1903px;
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
		height: 1100px;
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
		margin-bottom: 15px;
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
		background-color: #555555;
		border: 1px solid #555555;
		color: white;
	}
	
	.table_email {
		width: 410px;
		border: 1px solid #D5D5D5;
		margin-bottom: 10px;
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
		padding-top: 20px;
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
		$("#domain").val($("#email_sel option:selected").val());
		$("#email_sel").change(function(){
			$("#domain").val($("#email_sel option:selected").val());
		});
		
	});
	
	function submitForm(obj) {
		var flag = confirm("등록하시겠습니까?");
		
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
							<form action="boardWrite_Ok.jsp" name="frm">
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<select id="inquiry_area" name="inquiry_area">
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
											<td><input type="text" name="title" id="title" class="table_input" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20"></textarea></td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td class="ta">
												<div class="table_email_main"></div>
													<div class="table_email">
														<input type="text" name="email" id="email" class="table_input" />
														<span>@</span>
														<input type="text" name="domain" id="domain" class="table_input" />
														<select name="email_sel" id="email_sel">
															<option value="naver.com">naver.com</option>
															<option value="daum.com">daum.com</option>
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
										<input type="button" value="등록" onclick="submitForm(this)" class="table_Bt second" />
									</div>
								</div>
							</form>	
						</div>
						</div>
						
					</div>
				</div>
			</div>
		
			<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>