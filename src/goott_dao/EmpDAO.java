package goott_dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import goott_vo.EmpVO;

public class EmpDAO {
	final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	final String USER = "scott";
	final String PASSWORD = "tiger";
	
	StringBuffer sb = new StringBuffer();
	
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;
	
	public EmpDAO() {
		try {
			Class.forName(DRIVER);
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("conn : " + conn);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("드라이버 로딩 실패");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DB 연결 실패");
		}
		
	}
	
	public EmpVO selectD(int empno) {
		sb.setLength(0);
		sb.append("select * from emp ");
		sb.append("where empno = ? ");
		EmpVO vo = null;
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, empno);
			
			rs = ps.executeQuery();
			
			rs.next();
			String ename = rs.getString(2);
			String job = rs.getString(3);
			int mgr = rs.getInt(4);
			String hiredate = rs.getString(5);
			int sal = rs.getInt(6);
			int comm = rs.getInt(7);
			int deptno = rs.getInt(8);
			
			vo = new EmpVO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
		
	}
	
	public void insertD(EmpVO vo) {
		sb.setLength(0);
		sb.append("insert into emp ");
		sb.append("values (?, ?, ?, ?, ?, ?, ?, ?) ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			
			ps.setInt(1, vo.getEmpno());
			ps.setString(2, vo.getEname());
			ps.setString(3, vo.getJob());
			ps.setInt(4, vo.getMgr());
			ps.setString(5, vo.getHiredate());
			ps.setInt(6, vo.getSal());
			ps.setInt(7, vo.getComm());
			ps.setInt(8, vo.getDeptno());
			
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateD(EmpVO vo) {
		sb.setLength(0);
		sb.append("update emp ");
		sb.append("set ename = ?, job = ?, mgr = ?, hiredate = ?, sal = ?, comm = ?, deptno = ? ");
		sb.append("where empno = ?");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getEname());
			ps.setString(2, vo.getJob());
			ps.setInt(3, vo.getMgr());
			ps.setString(4, vo.getHiredate());
			ps.setInt(5, vo.getSal());
			ps.setInt(6, vo.getComm());
			ps.setInt(7, vo.getDeptno());
			ps.setInt(8, vo.getEmpno());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public void deleteD(int empno) {
		sb.setLength(0);
		sb.append("delete emp ");
		sb.append("where empno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			
			ps.setInt(1, empno);
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
