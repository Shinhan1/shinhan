<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout.jsp</title>
<link rel = "stylesheet" href="../css/layOut.css">
</head>
<body>
	<%
		String pname = "";
		String fno = request.getParameter("fno");
		
		if(fno == null) {
			pname = "leftContents.jsp";
		}else {
			pname = fno + ".jsp";
		}
	
	%>


	<div id="container">
		<!-- layout.jsp에서 navbar에서 각각 선택된 페이지가 노출되는 형태로 구성 -->
		<%-- jsp 고유 태그 <jsp: >  </jsp: > --%>
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="nav.jsp"></jsp:include>
		<jsp:include page="<%= pname %>"></jsp:include>
		<jsp:include page="sidebar.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
		
		
	</div>

</body>
</html>