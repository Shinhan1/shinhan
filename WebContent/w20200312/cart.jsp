<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart.jsp</title>
</head>
<body>
	<%
		String pno = request.getParameter("no");
	
	%>
	<h2>선택하신 상품번호는 <%= pno %> 입니다.</h2>

</body>
</html>