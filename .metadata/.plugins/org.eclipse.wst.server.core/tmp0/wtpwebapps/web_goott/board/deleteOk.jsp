<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- deleteOk.jsp -->

<%

	String b = request.getParameter("bno");
	
	//out.println(b);
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		BoardDAO dao = new BoardDAO();
		dao.deleteData(bno);
		
		response.sendRedirect("list.jsp");
	}else  {
		
		response.sendRedirect("list.jsp");
	}

%>