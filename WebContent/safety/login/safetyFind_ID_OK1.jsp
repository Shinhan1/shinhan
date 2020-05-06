<%@page import="org.apache.catalina.util.URLEncoder"%>

<%@page import="dao.Join1_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyFind_ID_OK1.jsp</title>
<%
	String name = request.getParameter("name");
	String hp1 = request.getParameter("hp1");
	String hp2 = request.getParameter("hp2");
	String hp = hp1+hp2;
	
	Join1_DAO dao = new Join1_DAO();
	
	boolean flg = dao.isExist_findID(name, hp);	
	
	
	if(flg){
		
		response.sendRedirect("../mainpage/sf_mainpage.jsp");

	}else{
		%>
		  <script>
	        alert("일치하는 이름 & 핸드폰번호가 없습니다.");
	        location.href = "safetyFind_ID.jsp";
	    </script>
		<%
		}
		%>
</head>

<body>


	
</body>

</html>

