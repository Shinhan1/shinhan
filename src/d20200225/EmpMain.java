package d20200225;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmpMain {
	public static void main(String[] args) {
		//emp table에 있는 모든 사원의 정보를 콘솔에 출력하세요
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "scott";
		String password = "tiger";
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		StringBuffer sb = new StringBuffer();
		sb.append("select * from emp ");
		
		try {
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println("conn : " + conn);
			
			ps = conn.prepareStatement(sb.toString());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int empno = rs.getInt(1);
				String ename = rs.getString(2);
				String job = rs.getString(3);
				int mgr = rs.getInt(4);
				String date = rs.getString(5);
				int sal = rs.getInt(6);
				int comm = rs.getInt(7);
				int dept = rs.getInt(8);
				
				System.out.println(empno + "\t" + ename + "\t" + job + "     \t" + mgr + "\t" + date + "\t" + sal + "\t" + comm + "\t" + dept);
				
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		finally {
			if(rs != null) {
				try {
					rs.close();
					if(ps != null) ps.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			
		}
		
		
		
		
		
	}

}
