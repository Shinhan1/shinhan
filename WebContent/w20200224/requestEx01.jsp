<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request.jsp</title>
</head>
<body>
	<div style ="font-size : 24px">
	<%
		out.println("1. " + request.getRequestURL() + "</br>");
		// URL : 웹 상에서 서비스를 제공하는 각 서버 안에 있는 파일들의 위치
		
		out.println("2. " + request.getRequestURI() + "</br>");
		// URI : HTTP 프로토콜, 호스트명, 포트번호를 제외한 나머지 정보
		
		out.println("3. 사용자로부터 입력을 받을 경우 <br/>");
		// 급여 : 20000000
		out.println("급여 : " + request.getParameter("pay") + "<br/>");
		out.println("4. 사용자로부터 입력된 값이 여러 개일 경우 <br/>");
		
		/*
		급여 : 20000000
		성명 : 홍길동
		java : 90
		jsp : 85
		spring : 80
		
		총계 :
		평균 :
		*/
		
		// request.getParameter("**"));   주소창에 변수 입력하면 값 나옴
		// http://localhost:9090/web_goott/w20200224/requestEx01.jsp?pay=20000000&name=%ED%99%8D%EA%B8%B8%EB%8F%99&java=90&jsp=85&spring=80
		
		out.println("급여 : " + request.getParameter("pay") + "<br/>");
		out.println("성명 : " + request.getParameter("name") + "<br/>");
		out.println("java : " + request.getParameter("java") + "<br/>");
		out.println("jsp : " + request.getParameter("jsp") + "<br/>");
		out.println("spring : " + request.getParameter("spring") + "<br/>");
		int java = Integer.parseInt(request.getParameter("java"));
		int jsp = Integer.parseInt(request.getParameter("jsp"));
		int spring = Integer.parseInt(request.getParameter("spring"));
		
		int sum = java + jsp + spring;
		double avg = sum/3;
		
		out.println("총점 : " + sum + "<br/>");
		out.println("평균 : " + avg + "<br/>");
		
		
		
	%>
	
	</div>

</body>
</html>