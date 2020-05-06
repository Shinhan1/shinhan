<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>receiveMsg.jsp</title>
</head>
<body>
	<%
		// sendMsg.jsp에서 전달된 값을 receiveMsg.jsp에서 요청
		
		// form => name = value 	: name - parameter
		
		String msg = request.getParameter("msg");
		out.println("<h2>전달 받은 메시지 : " + msg + "<h2/>");
	%>

</body>
</html>