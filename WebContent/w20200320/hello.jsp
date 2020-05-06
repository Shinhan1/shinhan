<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- hello.jsp 
	: ajaxEx05.jsp에서 txt라는 파라미터로 전달된 값을 받아서 처리할 곳(서버)
-->

<%
	String txt = request.getParameter("txt");

	out.println(txt + " 님 환영합니다.");

%>
