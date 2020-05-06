<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application.jsp</title>
</head>
<body>
	<div style = "font-size: 24px">
	<%
		out.println("서블릿 컨테이너 정보 : " + application.getServerInfo());
		out.println("파일 실제 위치 : " + application.getRealPath("application.jsp" + "<br />"));
		
	%>
	</div>

</body>
</html>