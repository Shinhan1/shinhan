<%@page import="java.net.URLEncoder"%>
<%@page import="goott_dao.JSP_MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- [loginOk.jsp] -->
<%
	// id, pw 정보를 받아와서 db에 접근한 다음 현재 db에 회원이 있는지 여부를 체크
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	JSP_MemberDAO dao = new JSP_MemberDAO();
	
	boolean flag = dao.isExist(id, pw);	
	
	// 회원이면 로그인 기능 --> 쿠키를 통해서 기능을 수행
	if(flag) {
		/* out.println("로그인이 가능합니다");
		out.println(id + " 님 어서오세요."); */
		
		
		
		String userId = URLEncoder.encode(id, "UTF-8");
		
		Cookie c = new Cookie("memberLogin", userId);
		c.setMaxAge(60*60*24);
		
		response.addCookie(c);
		response.sendRedirect("loginCk.jsp");
	}else {
		
	}
	

%>