<%@page import="vo.ReBoardVO"%>
<%@page import="dao.ReBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- [replyOk.jsp] -->

<%
	String b = request.getParameter("bno");
	String id = "replyer01";
	String contents = request.getParameter("retxt");
	
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		/* 
		out.println("bno : " + bno);
		out.println("id : " + id);
		out.println("contents : " + contents);
		*/
		
		ReBoardDAO dao = new ReBoardDAO();
		ReBoardVO vo = new ReBoardVO();
		vo.setId(id);
		vo.setContents(contents);
		vo.setRef(bno);
		
		dao.insertReply(vo);
		
		response.sendRedirect("detail.jsp?bno="+bno);
	}else {
		response.sendRedirect("list.jsp");
	
	}
	
%>