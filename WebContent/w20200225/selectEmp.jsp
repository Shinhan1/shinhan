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
<title>selectEmp.jsp</title>
<style type="text/css">
	table {
		margin: 0 auto;
		width : 1000px;
	
	}
	
	table, tr, th, td {
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	
	}
	
	th {
		background-color: #aaa;
	}
	
</style>
</head>
<body>
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
			// 1. 변수 선언
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String user = "scott";
			String password = "tiger";
			
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			StringBuffer sb = new StringBuffer();
			// 4. SQL 문 작성			순서 바꿈
			sb.append("select * from emp ");
			
			// 2. 드라이버 객체 로딩
			Class.forName(driver);
			
			// 3. Connection 연결
			conn = DriverManager.getConnection(url, user, password);
			
			// 5. Statement(문장) 객체 생성
			ps = conn.prepareStatement(sb.toString());
			
			// 6. 실행
			rs = ps.executeQuery();
			
			// 7. 로직 처리
			while(rs.next()) {
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
			
			
			// 8. 자원 반납
			
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
				
			
		%>
	</table>

</body>
</html>