<%@page import="goott_dao.BoardV3_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- deleteOk.jsp -->

<%

	String b = request.getParameter("bno");
	
	//out.println(b);
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		BoardV3_DAO dao = new BoardV3_DAO();
		dao.deleteData(bno);
		
		response.sendRedirect("list.jsp");
	}else  {
		
		response.sendRedirect("list.jsp");
	}

%>