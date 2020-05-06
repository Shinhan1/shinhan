<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userCookieList.jsp</title>
</head>
<body>
	<!-- 쿠키 호출 -->
	<%
		Cookie[] clist = request.getCookies();
		
		for(Cookie c : clist) {
			String name = URLDecoder.decode(c.getName(), "UTF-8");
			String value = URLDecoder.decode(c.getValue(), "UTF-8");
		
	
	
	%>
	
	<h2><%= c.getName() %> : <%= value %></h2>
	
	<%
		}
		
	%>

</body>
</html>