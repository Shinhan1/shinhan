<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginCk.jsp</title>
</head>
<body>
	<%
		Cookie[] cList = request.getCookies();
		String id = null;
		
		if(cList!=null) {
			for(Cookie c : cList) {
				if(c.getName().equals("memberLogin")){
					id = URLDecoder.decode(c.getValue(), "UTF-8");
				}
			}
		}
	
	%>
	
	<h1><%= id %> 님 환영합니다.</h1>
	<h2><a href="logout.jsp">로그아웃</a></h2>

</body>
</html>