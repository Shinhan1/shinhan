<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage.jsp</title>
</head>
<body>
	<%
		Object obj = session.getAttribute("vo");
	
		if(obj!=null) {
		//out.println(obj);
		MemberBean mb = (MemberBean)obj;
		
		out.println(mb.getId());
		out.println(mb.getPw());
	}else {
		MemberBean mb = new MemberBean();
		
		/* mb.setId(request.getParameter("id"));	
		mb.setPw(request.getParameter("pw")); */
		
	}
	%>

</body>
</html>