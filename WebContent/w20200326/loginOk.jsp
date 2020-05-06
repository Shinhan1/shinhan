<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk.jsp</title>
</head>
<body>
	<!-- loginForm.jsp에서 전달한 값을 출력 -->
	<%-- <%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		/* out.println("id : " + id);
		out.println("pw : " + pw); */
	
	%>
	<h2>id : <%= id %></h2>
	<h2>pw : <%= pw %></h2> --%>
	
	<%-- <%
		MemberBean mb = new MemberBean();
		
		mb.setId(request.getParameter("id"));
	
	%> --%>
	<!-- jsp action tag : 자바 문법을 태그로 만들어 놓은 것들 -->
	<!-- jsp 페이지에서 최대한 자바코드를 사용하지 않기 위해 -->
	
	<jsp:useBean id="vo" class="bean.MemberBean" scope="session" ></jsp:useBean>
	
	<%-- <jsp:setProperty property="id" name="vo" param="id" />
	<jsp:setProperty property="pw" name="vo" param="pw" /> --%>
	
	
	<!-- 
		만약 property와 param(이전 페이지에 form 태그에 적혀있는 name 속성 값)
		이 이름이 같다면 일일히 개발자가 맵핑할 필요없도록 자동으로 찾아줄 수 있음
	 -->
	 
	 <jsp:setProperty property="*" name="vo"/>
	
	
	<%-- <h2>id : <a href="loginMain.jsp?id=<%= mb.getId() %>"><%= mb.getId() %></a> </h2> --%>
	
	<h2>ID : <jsp:getProperty property="id" name="vo" /></h2>
	<h2>PW : <jsp:getProperty property="pw" name="vo" /></h2>
	
	<!-- 페이지 이동 -->
	<%-- <%
		response.sendRedirect("loginMain.jsp");
	%> --%>
	
	<jsp:forward page="loginMain.jsp"></jsp:forward>
	
	
	
	

</body>
</html>