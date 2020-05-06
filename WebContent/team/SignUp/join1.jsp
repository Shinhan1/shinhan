<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../css/join1.css" type="text/css"/>
</head>
<body>
	<div class="box-container">
	<div class="head">
	<h1>회원가입</h1>
	<h3>먼저 해당하는 회원 유형을 선택하세요.</h3>
	</div>

	<div id="all-box">
	<div class="three" >
	<img src="../image/person.png" alt="">
	<h2>14세 이상</h2>
	<h1>개인회원</h1>
	<input class="btn1" type="button" value="가입하기" onClick="location.href='join2_1.jsp'"/></img>
	</div>
	<div class="three" >
	<img src="../image/group.png" alt="">
	<h2>2인 이상 일반단체</h2>
	<h1>단체 회원</h1>
	<input class="btn" type="button" value="가입하기" onClick="location.href='join2_2.jsp'"/></img>
	</div>
	<div class="three" >
	<img src="../image/company.png" alt="">
	<h2>일반 기업</h2>
	<h1>기업 회원</h1>
	<input class="btn" type="button" value="가입하기" onClick="location.href='join2_3.jsp'"/></img>
	</div>
	</div>

	</div>
<!-- box-container end -->
</body>
</html>