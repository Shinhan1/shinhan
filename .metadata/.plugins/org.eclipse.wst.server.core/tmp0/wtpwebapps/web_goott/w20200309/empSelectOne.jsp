<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empSelectOne.jsp</title>
<style type="text/css">
	table {
		width: 600px;
		margin: 0 auto;
	}
	table, tr, th, td {
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	
	}
	th{background-color: #aaa;}
	
	
	
	
</style>
</head>
<body>
	<!-- 사원정보로 사원정보를 검색
	표로 출력
	사원번호 검색은 : select - option tag -->
	
	<%
		String n = request.getParameter("no");
	
		int no = -1;
		
		if(n == null || n.equals("")) {
			no = 0;
		}else {
			no = Integer.parseInt(n);
		}
	
	%>
	
	<form action="#">
		<h1>사원검색</h1>
		<select name="no" id="">
			<option value="-------">-------</option>
			<option value="7369">7369</option>
			<option value="7499">7499</option>
			<option value="7521">7521</option>
			<option value="7566">7566</option>
			<option value="7654">7654</option>
			<option value="7698">7698</option>
			<option value="7782">7782</option>
			<option value="7839">7839</option>
			<option value="7844">7844</option>
			<option value="7900">7900</option>
			<option value="7902">7902</option>
		</select>
		<input type="submit" value="검색"/>
		
	</form>
	

	
	
	
	<table>
		<tr>
			<th>사원 번호</th>
			<th>사원 이름</th>
			<th>직책</th>
			<th>매니저 번호</th>
			<th>입사일</th>
			<th>급여</th>
			<th>성과급</th>
			<th>부서</th>
		</tr>
		
		<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "scott";
		String password = "tiger";
		
		StringBuffer sb = new StringBuffer();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		}catch(ClassNotFoundException cnfe) {
			cnfe.getStackTrace();
			System.out.println("드라이버 로딩 실패");
		}
		
		sb.append("select * from emp ");
		sb.append("where empno = ? ");
		
		ps = conn.prepareStatement(sb.toString());
		ps.setInt(1, no);
		
		rs = ps.executeQuery();
		
		while(rs.next()){
			int empno = rs.getInt(1);
			String ename = rs.getString(2);
			String job = rs.getString(3);
			int mgr = rs.getInt(4);
			String date = rs.getString(5);
			int sal = rs.getInt(6);
			int comm = rs.getInt(7);
			int dept = rs.getInt(8);
		
		
		
		%>
		
		
		<tr>
			<td><%= empno %></td>
			<td><%= ename %></td>
			<td><%= job %></td>
			<td><%= mgr %></td>
			<td><%= date %></td>
			<td><%= sal %></td>
			<td><%= comm %></td>
			<td><%= dept %></td>
		</tr>
		
		<%
		}
		if(rs != null) rs.close();
		if(ps != null) ps.close();
		if(conn != null) conn.close();
		
		%>
		
	</table>

</body>
</html>