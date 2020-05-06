<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerOk.jsp</title>
</head>
<body>

	<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		//String pwck = request.getParameter("pwck");
		
		out.println("<h2> 이름 : " + name + "</h2>");
		out.println("<h2>이메일 : " + email + "</h2>");
		out.println("<h2>비밀번호 : " + pw + "</h2>");
		//out.println("비밀번호 확인 : " + pwck);
		
	%>

</body>
</html>