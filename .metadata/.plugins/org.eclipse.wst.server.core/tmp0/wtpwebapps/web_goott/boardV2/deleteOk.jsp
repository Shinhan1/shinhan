<%@page import="dao.BoardV2_DAO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- deleteOk.jsp -->

<%

	String b = request.getParameter("bno");
	
	//out.println(b);
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		BoardV2_DAO dao = new BoardV2_DAO();
		dao.deleteData(bno);
		
		response.sendRedirect("list.jsp");
	}else  {
		
		response.sendRedirect("list.jsp");
	}

%>