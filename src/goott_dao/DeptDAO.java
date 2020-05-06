package goott_dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import goott_vo.DeptVO;

// DAO (Data Access Object) : DB에 쉽게 접근하기 위한 객체

public class DeptDAO {
	final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	final String USER = "scott";
	final String PASSWORD = "tiger";
	
	StringBuffer sb = new StringBuffer();
	
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;
	
	// 객체 호출시 DB 접속이 완료되게 하고 싶음
	
	public DeptDAO() {
		try {
			Class.forName(DRIVER);
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("conn : " + conn);
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("드라이버 로딩 실패");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 연결 실패");
		}
		
	} // 생성자  end
	
	// 1건 정보조회 - 부서번호를 입력받아 부서번호, 부서이름, 부서위치 정보를 return
	public DeptVO selectOne(int deptno) {
		sb.setLength(0);
		sb.append("select * from dept ");
		sb.append("where deptno = ? ");
		
		DeptVO vo = null;
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, deptno);
			
			rs = ps.executeQuery();
			
			rs.next();
			
			String dname = rs.getString(2);
			String loc = rs.getString(3);
			
			vo = new DeptVO(deptno, dname, loc);
			
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		
		return vo;
	}// selectOne() end
	
	// 데이터 추가
	public int insertOne(DeptVO vo) {
		sb.setLength(0);
		sb.append("insert into dept ");
		sb.append("values (?, ?, ?) ");
		
		int result = -1;
		
		try {
			ps = conn.prepareStatement(sb.toString());
			
			ps.setInt(1, vo.getDeptno());
			ps.setString(2, vo.getDname());
			ps.setString(3, vo.getLoc());
			
			
			//ps.executeUpdate();
			result = ps.executeUpdate();
			System.out.println("result : " + result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
		
	}// insertOne() end
	
	// 데이터 수정
	public void updateOne(DeptVO vo) {
		sb.setLength(0);
		sb.append("update dept ");
		sb.append("set dname = ?, loc = ? ");
		sb.append("where deptno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			// 물음표에 값을 할당
			ps.setString(1, vo.getDname());
			ps.setString(2, vo.getLoc());
			ps.setInt(3, vo.getDeptno());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}// updateOne() end
	
	// 데이터 삭제
	public void deleteOne(int deptno) {
		sb.setLength(0);
		sb.append("delete dept ");
		sb.append("where deptno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, deptno);
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// deleteOne() end
	
	// 전체 조회
	public ArrayList selectAll() {
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		
		sb.setLength(0);
		sb.append("select * from dept ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			// 실행
			rs = ps.executeQuery();
			
			//레코드별로 로직 처리
			while(rs.next()) {
				// 현재 레코드에서 각각 값을 가져오기
				int deptno = rs.getInt(1);
				String dname = rs.getString(2);
				String loc = rs.getString(3);
				
				// vo 객체에 값을 전달
//				DeptVO vo = new DeptVO();
//				vo.setDeptno(deptno);
//				vo.setDname(dname);
//				vo.setLoc(loc);
				
				DeptVO vo = new DeptVO(deptno, dname, loc);
				
				// Collection에 담기
				list.add(vo);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	

}
