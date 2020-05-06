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
	height: 1300px;
	background-color: #F6F6F6;
}

/* 맨 하단 div */
.footer {
	height: 190px;
	background-color: #EAEAEA;
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
	margin : 0;
}
.m {
	width: 1903px;
	
}


/* 본 내용 */

.customer {
	margin-top: -8px;
	background-image: url(../images/pencil.gif);
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
	
	.in_nav li a{
		text-decoration: none;
		color: black;
	}
	
	.in_nav li span:last-child {
		border-bottom: none;
	}
	
	/* 내용 우측 div */
	

	.boardBack_right {
		background-color: white;
		height: 800px;
		width: 1050px;
		float: left;
		padding: 40px;
		box-sizing: border-box;
	}
	
	#email, #domain {
		width: 130px;
	}
	
	.in_nav_span.seven{
		background-color: white;
		color: red;
	}
	
	.bb_right_title {
		border-right: 1px solid #D5D5D5;
		width: 150px;
		height: 150px;
		float: left;
	}
	
	/* 1:1문의에서 왼쪽 메뉴들 */
	.info_faq {
		float: left;
		width: 20%;
		padding: 10px 10px 10px 40px;
	}
	.info_faq img{
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
	}
	inquiry_Table tr th {
		width: 200px;
		height: 200px;
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
		obj.form.submit();
		
	}
	
	
	
</script>
</head>
<body>
	<input type="image" src="../images/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
			<jsp:include page="safety/etc/project_nav.jsp"></jsp:include>
			
			<br /><br /><br />
			<hr />
			
		<div class="main">
			<div class="customer">
			</div>
			<div class="boardBack">
				<div class="boardBack_left">
					<div class="profile">
						<img src="../images/user1.png" alt="" />
						<p>신한 님</p>
						<p>2020L0407</p>
					</div>
					<div class="inner_nav">
						<ul class="in_nav">
							<li><a href="#"><span class="in_nav_span one">나의 후원내역</span></a></li>
							<li><a href="#"><span class="in_nav_span two">마이페이지</span></a></li>
							<li><a href="#"><span class="in_nav_span three">나의 해외결연</span></a></li>
							<li><a href="#"><span class="in_nav_span four">후원 자료실</span></a></li>
							<li><a href="#"><span class="in_nav_span five">나의 회원정보</span></a></li>
							<li><a href="#"><span class="in_nav_span six">FAQ</span></a></li>
							<li><a href="inquiry.jsp"><span class="in_nav_span seven">1:1 문의</span></a></li>
							<li><a href="#"><span class="in_nav_span eight">기부금영수증</span></a></li>
						</ul>
					</div>
				
				</div>
		
				<div class="boardBack_right">
						<h1>1:1 문의</h1>
						<div class="bb_right_title">
							<h2>Safety재단<br />문의방법</h2>
						</div>
						<div class="bb_right_info">
							<div class="info_faq">
								<img src="../images/chat1.png" alt="chat" />
								<h3>후원가이드</h3>
								<p>1:1 문의를 하기 전 원하는 <br />
								내용을 쉽게 찾을 수 있어요!</p>
								<a href="">바로가기 ></a>
								<a href=""> <img src="../images/next1.png" alt=">" />
								</a>
							</div>
							<div class="info_faq">
								<img src="../images/inquiry1.png" alt="inquiry" />
								<h3>1:1문의</h3>
								<p>FAQ에 답변이 없으세요? <br />1:1문의를 통해 문의해주세요</p>
								<a href="inquiry.jsp">바로가기 ></a>
								<a href="inquiry.jsp"> 
									<img src="../images/next1.png" alt=">" />
								</a>
							</div>
							<div class="info_faq">
								<img src="../images/call1.png" alt="call" />
								<h3>전화문의</h3>
								<h4>010-9953-5444</h4>
								<p>대표전화로 연락 주세요. <br />(평일 오전 9시~오후 6시)</p>
							</div>
						</div>

						<div class="right_inner">
							<form action="writeOk.jsp" name="frm">
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<select id="inquiry_area">
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
											<td><input type="text" name="title" id="title" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td id="ta"><textarea name="ct" id="ct" cols="60" rows="20"></textarea></td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td>
												<div class="table_email">
													<input type="text" name="email" id="email" />
													<span>@</span>
													<input type="text" name="domain" id="domain" />
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
											</td>
										</tr>
									</table>
									<div class="table_button">
										<input type="button" value="취소" class="table_Bt first" />
										<input type="button" value="등록" onclick="submitForm(this)" class="table_Bt second" />
									</div>
								</div>
							</form>	
						</div>
						</div>
						
					</div>
				</div>
			</div>
		
			<jsp:include page="safety/etc/project_footer.jsp"></jsp:include>

</body>
</html>