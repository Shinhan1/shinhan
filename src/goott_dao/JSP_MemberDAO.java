package goott_dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import goott_vo.JSP_MemberVO;

public class JSP_MemberDAO {

	final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	final String USER = "scott";
	final String PASSWORD = "tiger";

	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	// 생성자 호출시 db 접속이 완료되게 처리
	public JSP_MemberDAO() {
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("conn : " + conn);
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void addData(JSP_MemberVO vo) {
		sb.setLength(0);
		sb.append("insert into JSP_MEMBER ");
		sb.append("values (JSP_MEMBER_MEMNO_SEQ.nextval, ?, ?, ?, to_date(?), ?, sysdate, ? ) ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getPw());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getBirth());
			ps.setString(5, vo.getMp());
			ps.setString(6, vo.getEmail());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public ArrayList<JSP_MemberVO> getAllData() {
		sb.setLength(0);
		sb.append("select * from jsp_member ");
		
		ArrayList<JSP_MemberVO> list = new ArrayList<JSP_MemberVO>();
		
		try {
			ps = conn.prepareStatement(sb.toString());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String birth = rs.getString("birth");
				String mp = rs.getString("mp");
				String regdate = rs.getString("regdate");
				String email = rs.getString("email");
				
				int memno = rs.getInt("memno");
				
				JSP_MemberVO vo = 
						new JSP_MemberVO(id, pw, name, birth, mp, regdate, email, memno);
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}//getAllData() end
	
	// 회원 정보 변경
	public void updateData(JSP_MemberVO vo) {
		sb.setLength(0);
		sb.append("update jsp_member ");
		sb.append("set id = ?, pw = ?, name = ?, birth = ?, mp = ?, email = ? ");
		sb.append("where memno = ?");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getPw());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getBirth());
			ps.setString(5, vo.getMp());
			ps.setString(6, vo.getEmail());
			ps.setInt(7, vo.getMemno());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}	// updateData() end
	
	// 회원 정보 삭제
	public void deleteData(int memno) {
		sb.setLength(0);
		sb.append("delete jsp_member ");
		sb.append("where memno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, memno);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}	// deleteData() end
	
	// 존재하는 회원인지 여부를 확인하는 메소드 - (id, pw)
	public boolean isExist(String id, String pw) {
		sb.setLength(0);
		sb.append("select * from jsp_member ");
		sb.append("where id = ? and pw = ? ");
		
		boolean isOk = false;
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, id);
			ps.setString(2, pw);
			
			rs = ps.executeQuery();
			
			isOk = rs.next();		// 존재 여부만 파악해서 리턴
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isOk;
		
		
	} //isExist() end
	
	// id로만 존재하는 회원인지 여부를 파악하는 메소드
	public boolean isExistById(String id) {
		sb.setLength(0);
		sb.append("select * from jsp_member ");
		sb.append("where id = ? ");
		
		boolean flag = false;
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			
			flag = rs.next();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	} // isExistById() end
	
	
}
