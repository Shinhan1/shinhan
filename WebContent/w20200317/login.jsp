<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<%
		Cookie[] cList = request.getCookies();
		String id = null;	
		//boolean flag = false;
	
		if(cList!=null) {
			for(Cookie c : cList) {
				if(c.getName().equals("memberLogin")){
					id = URLDecoder.decode(c.getValue(), "UTF-8");
					//flag = false;
			
					
					
	
	%>
	
	<h1><%= id %> 님 환영합니다~~</h1>
	<h2><a href="logout.jsp">로그아웃</a></h2>

	<%
					//break;
				}	// if(c.getName().equals("memberLogin")) end
			
				//else {
					//flag = true;
				//}	// else end
			}	// for(Cookie c : cList) end
		}	// if(cList!=null) end
		if(id == null) {
	
	%>


	<form action="loginOk.jsp">
		<div id="loginForm">
			<table>
				<tr>
					<th>ID : </th>
					<td><input type="text" name="id" id="" /></td>
				</tr>
				<tr>
					<th>PW : </th>
					<td><input type="text" name="pw" id="" /></td>
				</tr>
				<tr>
					<td colspan = "2">
					<input type="submit" value="로그인" />
					<input type="button" value="회원가입" /></td>
				</tr>
			</table>
	
		</div>
	</form>
	
	<% 
		}
	%>
	

</body>
</html>