<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<% String day = "토"; %>
<meta charset="UTF-8">
<title>scriptletEx02.jsp</title>
</head>
<body>
	<%!
		public String strMethod() {
		
		return "Hello Jsp World";
	}
	%>

	<%
		String str = "오늘은 금요일";		// 자료형이 String인 str 변수를 선언과 동시에 초기화
	%>
	<% out.println(str); %> <br />
	
	<% out.println(strMethod()); %> <br />
	
	
	<%= strMethod() %> <br />
	
	<h2>내일은 <%= day %>요일 입니다.</h2>
	
	<%
		// out.println(strMethod());
	
		/*
		out.println(strMethod());
		out.println(strMethod());
		out.println(strMethod());
		out.println(strMethod());
		*/
	%>
	
	<!-- HTML 주석 -->
	
	<%-- <% 스트립틀릿 주석 %> --%>
	
	
	

</body>
</html>