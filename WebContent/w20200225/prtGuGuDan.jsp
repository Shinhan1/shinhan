<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prtGugudan.jsp</title>
</head>
<body>
	사용자가 선택한 단 정보가 넘어오면 해당 구구단을 브라우저에 출력해보세요. <br />
	
	<%
	
		String str = request.getParameter("d1");
	
		out.println(str + "<br/>");
		
		int dan = Integer.parseInt(str.substring(0, 1));
	
		System.out.println(dan);
		for(int i = 0; i < 10; i++) {
			out.println(dan + " * " + i + " = " + (dan*i) +" <br/>");
		}
	%>

</body>
</html>