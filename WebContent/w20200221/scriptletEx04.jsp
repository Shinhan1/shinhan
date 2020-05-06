<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptletEx04.jsp</title>
</head>
<body>
	<%!
		int year = 2020;
	%>
	<h2>올해는 <%= year %>년도 입니다.</h2>
	<%
		float f = 3.14f;
		double d = Math.round(f);
		Date da = new Date();
	%>
	
	<h2>실수 f의 값 : <%= f %></h2>
	<h2>실수 f의 반올림 값 : <%= d %></h2>
	<h2>현재 날짜와 시간 : <%= da.toLocaleString() %></h2>

</body>
</html>