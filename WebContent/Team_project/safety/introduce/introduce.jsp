<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개</title>
<!-- introduce.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/introduce.css" />
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
	<input type="image" src="../image/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
		<jsp:include page="../etc/project_nav.jsp"></jsp:include>
		<div class="main">
			
			<div class="subMenu">
				<div class="subMenu_bar">
				<a href="siteMap.jsp">사이트맵</a>
				<a href="">기업</a>
				<a href="map.jsp">위치정보</a>
				</div>
			</div>
			<div class="customer">
				<div class="main_div">
					<h2>
					Safety는 2020년 아동이 
						<span>
							미약한 ‘보호의 대상’이 아니라 <br />
							‘주체적인 인격체’로 존중받아야 한다는 믿음으로 설립됐습니다.
						</span>
					</h2>
					<h3>
						아동의 생존, 보호, 발달, 참여의 권리를 실현하기 위해 인종, 종교, 정치적 이념을 초월하여
						<br />
						전 세계 약 120개 국가에서 활동하는 국제구호개발 NGO입니다.
					</h3>
				<div>
				<div class="QA">
					<table>
						<tr>
							<th>회원국</th>
							<th>활동국가</th>
							<th>활동기간</th>
							<th>2017년 지원 아동·성인</th>
						</tr>
						<tr>
							<td>
								<em class="counter">30</em>
								<span>개국</span>
							</td>
							<td>
								<em class="counter">120</em>
								<span>개국</span>
							</td>
							<td>
								<em class="counter">101</em>
								<span>년</span>
							</td>
							<td>
								<em class="counter">80,284,404</em>
								<span>명</span>
							</td>
						</tr>
					</table>
					
				</div>
				<div class="img">
					<a href="../ServiceCenter/question_answer.jsp">
					<img src="../image/next.png" alt="다음" />
					</a>
				</div>
				
			
			</div>
			
			<div class="secDiv">
				<div class="main_div second">
				
				</div>
			</div>
			
			
		</div>
		<jsp:include page="../etc/project_footer.jsp"></jsp:include>
	</div>


</body>
</html>