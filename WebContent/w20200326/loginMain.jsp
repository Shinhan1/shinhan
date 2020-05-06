<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginMain.jsp</title>
</head>
<body>
	<%-- <%
		MemberBean mb = new MemberBean();		// 새롭게 선언했기 때문에 getter로 받을 수 없음
		
		mb.setId(request.getParameter("id"));	// loginOk.jsp에서 데이터를 주지 않았기 때문에 받을 수 없음
		mb.setPw(request.getParameter("pw"));
			
	
	%> --%>
	
	<%-- <%
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
	
	%> --%>
	
	<jsp:useBean id="vo" class="bean.MemberBean" scope="session"></jsp:useBean>
	<!-- loginOk.jsp에서 scope를 session으로 설정해서 보냈으므로 
		받는 쪽도 session 이어야 함 !  -->
	
	
	
	<%-- <h2><%= mb.getId() %> 님 환영합니다.</h2>
	<h2><%= mb.getPw() %> 가 패스워드 입니다.</h2> --%>
	
	<%-- <%
		}else {
			MemberBean mb = new MemberBean();
			
			/* mb.setId(request.getParameter("id"));	
			mb.setPw(request.getParameter("pw")); */
			
		}
	%> --%>
	
	<h1>ID : <a href="myPage.jsp"><jsp:getProperty property="id" name="vo"/></a></h1>
	<h1>PW : <jsp:getProperty property="pw" name="vo"/></h1>
	

	

</body>
</html>