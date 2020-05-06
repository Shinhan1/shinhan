<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
	<p>
		jsp 파일을 저장하면 내부적으로 jsp 파일로 변환 <br />
		-> 스크립틀릿 안의 코드 _sjpService()로 들어감 <br />
		-> _jspService()에 몇개의 지역변수가 존재함 <br />
		-> 그 자동으로 선언되는 변수가 jsp 내장 객체 (request, response, out) 임 <br />
		
		+속성을 추가할 수 있는 객체들 <br />
		<ul>
			<li>&nbsp;&nbsp;&nbsp;&nbsp; (적용 가능 범위)</li>
			<li>pageContext : 현재 페이지</li>
			<li>request : 요청 범위까지</li>
			<li>session : 웹브라우저가 종료될 때 까지</li>
			<li>application : 톰캣(서버)가 종료할 때 까지</li>
		
			<li>ex) pageContext.setAttribute("이름", "객체");</li>
		</ul>
		
	</p>
	
	<%
		// 요청객체 종종 사용하는 것들
		String addrs = request.getRemoteAddr();
	
		String host = request.getRemoteHost();
		String method = request.getMethod();
		
		// 응답객체 종종 사용하는 것들
		int status = response.getStatus();
		//response.sendRedirect("../w20200310/login.jsp");
		
	
	%>
	
	<h2>현재 아이피 : <%= addrs %></h2>
	<h2>접근 URL : <%= host %></h2>
	<h2>method : <%= method %></h2>
	
	<h2>status : <%= status %></h2>
	
	<p>
		JSP 페이지 이동시키는 방법 2가지 <br />
		1. sendRedirect("주소") : 최종 주소지 알 수 있음 <br />
		2. forward(request, response) : 최종 주소지를 모름(알 필요가 없음), (요청, 응답) 객체가 전달함 <br />
		
		 
	</p>
	
	
	

</body>
</html>