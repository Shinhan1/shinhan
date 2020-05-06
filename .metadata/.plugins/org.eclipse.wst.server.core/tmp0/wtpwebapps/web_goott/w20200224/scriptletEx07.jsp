<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptletEx07.jsp</title>
</head>
<body>
	<!-- jsp(java sever page)	<===	HTML + 자바 로직	==>	  동적인 페이지를 구성할 수 있음 -->
	
	<%
		/*
		for(int i = 0; i < 10; i++) {
			for(int j = 0; j < 10; j ++) {
				out.println(
						i + " * " + j + " = " + (i*j) + "<br />");
			}
		}
		*/
	
		// System.out.println("hihi");
		
		/* 1부터 100까지의 합은 ~~~ 입니다. */
		
		int sum = 0;
		for(int i = 0; i <= 100; i++){
			sum += i;
		}
		out.println(sum);
		
	%>

</body>
</html>