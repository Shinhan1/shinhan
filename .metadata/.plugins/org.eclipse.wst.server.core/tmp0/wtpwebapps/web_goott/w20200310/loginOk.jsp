<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk.jsp</title>
</head>
<body>
	<!-- 로그인 체크 -->
	<%
		String id = request.getParameter("id");
		
	%>
	
	<h2>당신의 아이디는 <%= id %>입니다.</h2>

</body>
</html>