<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptletEx05.jsp</title>
</head>
<body>
	<%
		String name = "홍길동";
		int kor = 90;
		int eng = 95;
		int total = kor + eng;
		double avg = total / 2;
	%>
	<!-- 
	출력해보세요
	성적표 : h1
	div : size - 24px;
	각 한줄 개행해서
	성명 : 
	국어 :
	영어 :
	총점 :
	평균 :
	
	 
	<h1>성적표</h1>
	<div id="grade" size = "24">
		<h3>성명 : <%= name %></h3>
		<h3>국어 : <%= kor %></h3>
		<h3>영어 : <%= eng %></h3>
		<h3>총점 : <%= total %></h3>
		<h3>평균 : <%= avg %></h3>
	</div>
	-->
	<h1>성적표</h1>
	<div style = "font-size: 24px">
	------------------------------------- <br />
	성명 : <%= name %> <br />
	국어 : <%= kor %> <br />
	영어 : <%= eng %> <br />
	총점 : <%= total %> <br />
	평균 : <%= avg %> <br />
	
	</div>
		

</body>
</html>