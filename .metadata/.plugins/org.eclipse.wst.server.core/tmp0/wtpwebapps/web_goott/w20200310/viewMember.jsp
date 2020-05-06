<%@page import="vo.JSP_MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.JSP_MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewMember.jsp</title>
</head>
<body>
	<!-- 관리자라고 가정하고 회원정보가 궁금합니다. 전체 회원정보를 표로 출력해보세요. -->
	<div id = "regDiv">
	<table>
		<tr>
			<th>MEMNO</th>
			<th>ID</th>
			<th>NAME</th>
			<th>BIRTH</th>
			<th>MP</th>
			<th>REGDATE</th>
			<th>EMAIL</th>
			
		</tr>
		<%
		JSP_MemberDAO dao = new JSP_MemberDAO();
		ArrayList<JSP_MemberVO> list = dao.getAllData();
		
		for(JSP_MemberVO vo : list) {
		
		%>
		<tr>
			<td><%= vo.getMemno() %></td>
			<td><%= vo.getId() %></td>
			<td><%= vo.getName() %></td>
			<td><%= vo.getBirth() %></td>
			<td><%= vo.getMp() %></td>
			<td><%= vo.getRegdate() %></td>
			<td><%= vo.getEmail() %></td>
		</tr>
		
		<%
		}
		%>
	</table>
	</div>

</body>
</html>