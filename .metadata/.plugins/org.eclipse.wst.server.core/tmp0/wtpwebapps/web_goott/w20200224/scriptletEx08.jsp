<%@page import="com.sun.javafx.css.CalculatedValue"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptletEx08.jsp</title>
</head>
<body>
	<!-- 
	Calender 클래스 사용해서 브라우저에 현재 시각 출력해보세요
	
	현재 시각은 ~~ 시 ~~ 분 ~~ 초 입니다. -h2  -->
	
	<%
		Calendar cal = Calendar.getInstance();
	
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int minute = cal.get(Calendar.MINUTE);
		int seconds = cal.get(Calendar.SECOND);
		
		
	%>
	<h2>현재 시각은 <%= hour %>시 <%= minute %>분 <%= seconds %>초 입니다.</h2>


</body>
</html>