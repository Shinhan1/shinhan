<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resultHobby.jsp</title>
</head>
<body>
	<%
		String[] str = request.getParameterValues("box");
		
		for(String hobby : str) {		// for문 변형
			out.println("당신의 취미는 " + hobby + "입니다. <br/>");
		}
	
	%>

</body>
</html>