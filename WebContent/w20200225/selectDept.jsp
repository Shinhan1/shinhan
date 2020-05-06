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
<title>selectDept.jsp</title>
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
	<table>
		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
			<th>부서위치</th>
		</tr>
		<%
			// DB 연결 순서
			// 0. 변수 선언
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String user = "scott";
			String password = "tiger";
			
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			StringBuffer sb = new StringBuffer();
			
			// 1. 드라이버 객체 로딩
			
			Class.forName(driver);
				
			// 2. Connection 객체 생성
			conn = DriverManager.getConnection(url, user, password);
				
			// System.out.println("conn: " + conn);
			
			// 3. SQL문 작성
			sb.append("select * from dept ");
			
			// 4. 문장 객체 생성
			ps = conn.prepareStatement(sb.toString());
			
			// 5. 실행
			rs = ps.executeQuery();
			
			// 6. 레코드 별로 로직 처리
			while(rs.next()) {
				int deptno = rs.getInt(1);
				String dname = rs.getString(2);
				String loc = rs.getString(3);
				
				/* 
				out.println("deptno : " + deptno);
				out.println("dname : " + dname);
				out.println("loc : " + loc); 
				*/
				
			
			
			
		
		
		
		%>
		
		
		
		<tr>		<!-- 표에 deptno, dname, loc 출력  while문이 tr>td*3을 돌기 때문에 tr이 DB에 있는 데이터만큼 늘어남 -->
			<td><%= deptno %></td>
			<td><%= dname %></td>
			<td><%= loc %></td>
		</tr>
		<% 
			}			// while문이 여기서 끝남
			
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
			
			
			
		%>
		
		
	</table>

</body>
</html>