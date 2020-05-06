<%@page import="goott_dao.BoardDAO"%>
<%@page import="goott_vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- [modifyOk.jsp] -->
<!-- DB에 접근해서 사용자가 수정한 내용을 저장 -->

<% 
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	String no = request.getParameter("bno");
	
	/*
	out.println("title : " + title);
	out.println("contents : " + contents);
	out.println("no : " + no);
	*/
	
	if(no != null) {
		int bno = Integer.parseInt(no);
		
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		vo.setBno(bno);
		vo.setTitle(title);
		vo.setContents(contents);
		
		dao.modifyData(vo);
		
		response.sendRedirect("list.jsp");
	}else {
		
		response.sendRedirect("list.jsp");
	}


%>