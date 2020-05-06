<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = '1px solid black'  cellspacing = "0" >
		
			<%
				int dan = Integer.parseInt(request.getParameter("txt"));
				for(int i = 1; i < 10; i++) {
					out.println("<tr><td>" + dan + " * " + i + " = " + (dan*i) + "</tr></td>");
				}
			%>
		
	</table>


</body>
</html>