<%@page import="goott_dao.BoardV3_DAO"%>
<%@page import="goott_dao.BoardV2_DAO"%>
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
	
	/* System.out.println(title);
	System.out.println(contents);
	System.out.println(no); */
	
	
	/*
	out.println("title : " + title);
	out.println("contents : " + contents);
	out.println("no : " + no);
	*/
	
	if(no != null) {
		int bno = Integer.parseInt(no);
		
		BoardV3_DAO dao = new BoardV3_DAO();
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