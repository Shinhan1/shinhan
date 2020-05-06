<%@page import="tim_Project_Dao.board_FAQ_Dao"%>
<%@page import="tim_Project_VO.board_FAQ_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

	String sel = request.getParameter("cctxt");
	
	
	//db에 연결후 write.jsp에서 전달해온 값을 저장
	board_FAQ_Dao dao = new board_FAQ_Dao();
	
	 
	//dao.selectData(sel);
	
	//db에 저장이 잘 됐으면 게시판 메인으로 화면 이동 
	response.sendRedirect("question_answer.jsp");

%>