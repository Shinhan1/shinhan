<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<!-- customer_center.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/customer_center.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {

	$('.smb').mouseover(function() {

		$(this).css("border", "1px solid red");

	});

	$('.smb').mouseout(function() {

		$(this).css("border", "1px solid #BDBDBD");

	});	
	
});
</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
		<div class="main">
			
			<div class="subMenu">
				<div class="subMenu_bar">
				<a href="question_answer.jsp">Q & A</a>
				<a href="help.jsp?fno=personal_infor">개인정보처리방침</a>
				<a href="help.jsp?fno=access">이용약관</a>
				</div>
			</div>
			
			<div class="customer">
				<div class="main_div">
				<h2>Q & A</h2>
				<h3>궁금한 점이 있다면 여기서 확인해주세요!</h3>
				<div>
				<div class="QA">
					<h4>자주 묻는 질문<br />FAQ</h4>
					<jsp:include page="FAQ_table.jsp"></jsp:include>
				</div>
				<div class="img">
					<a href="question_answer.jsp">
					<img src="../image/next.png" alt="다음" />
					</a>
				</div>
				</div>
			
				<div class="under_bar">
					<div class="ub">
						<img src="../image/chat.png" alt="chat" />
						<h3>후원가이드</h3>
						<p>후원이 처음이세요?</p>
						<a href=""> <img src="../image/next1.png" alt=">" />
						</a>
	
					</div>
					<div class="ub">
						<img src="../image/inquiry.png" alt="inquiry" />
						<h3>1:1문의</h3>
						<p>원하는 답변이 없나요?</p>
						<a href="inquiry.jsp"> <img src="../image/next1.png" alt=">" />
						</a>
					</div>
					<div class="ub">
						<img src="../image/call.png" alt="call" />
						<h3>전화문의</h3>
						<p>010-9953-5444</p>
						<!-- <br />(평일 오전9시30분 ~ 오후 6시 30분) -->
					</div>
				</div>
				</div>
			
			</div>
			
			<div class="secDiv">
				<div class="main_div second">
				
					<h2>이용안내</h2>
					
					
						<div class="second_img">
							<img src="../image/newicon3.png" alt="" />
						</div>
						
						<div class="sub">
						<div class="smb access">
							<img src="../image/inquiry.png" alt="" />
							<a href="help.jsp?fno=access">이용약관
							<img src="../image/next.png" alt="" /></a>
						</div>
						<div class="smb p_info">
							<img src="../image/inquiry.png" alt="" />
							<a href="help.jsp?fno=personal_infor">개인정보처리방침
							<img src="../image/next.png" alt="" /></a>
						</div>
						<div class="smb p_info_cu">
							<img src="../image/inquiry.png" alt="" />
							<a href="help.jsp?fno=personal_info_collectUse">개인정보
							<img src="../image/next.png" alt="" /></a>
						</div>
						</div>
					
				
				</div>
			</div>
			
		</div>
	
		<jsp:include page="../etc/project_footer.jsp"></jsp:include>
	</div>
</body>
</html>