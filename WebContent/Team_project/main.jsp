<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<!-- main.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
		
	});
</script>
</head>
<body>
	<input type="image" src="../images/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
	<div class="main">
		<jsp:include page="safety/etc/project_nav.jsp"></jsp:include>
		
		
		<div class="customer">
			<h2>메인 창이에요</h2>
		</div>
		<div class="boardBack">
			<br /> <br /> <br /> <br />
			<div class="under_bar">
				<div class="ub">
					<img src="../images/chat.png" alt="chat" />
					<h3>후원가이드</h3>
					<p>후원이 처음이세요?</p>
					<a href=""> <img src="../images/next1.png" alt=">" />
					</a>
				</div>
				<div class="ub">
					<img src="../images/inquiry.png" alt="inquiry" />
					<h3>1:1문의</h3>
					<p>원하는 답변이 없나요?</p>
					<a href="inquiry.jsp"> <img src="../images/next1.png" alt=">" />
					</a>
				</div>

				<div class="ub">
					<img src="../images/call.png" alt="call" />
					<h3>전화문의</h3>
					<p>010-9953-5444</p>
					<!-- <br />(평일 오전9시30분 ~ 오후 6시 30분) -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="safety/etc/project_footer.jsp"></jsp:include>

</body>
</html>