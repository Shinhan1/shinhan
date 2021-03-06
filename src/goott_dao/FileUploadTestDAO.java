package goott_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.OracleXEConnection;
import goott_vo.FileUploadTestVO;

public class FileUploadTestDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;
	
	public FileUploadTestDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	
	// DBMS에 저장 - insertData()
	public void insertData(FileUploadTestVO vo) {
		sb.setLength(0);
		sb.append("insert into fileuploadtest ");
		sb.append("values (fileuploadtest_fno_seq.nextval, ?, ?, ?, ? ) ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getWriter());
			ps.setString(3, vo.getContents());
			ps.setString(4, vo.getFilePath());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}	// insertData() end
	
	
	public FileUploadTestVO getData(String writer) {
		// 파일이 복수개일 가능성이 높으므로 배열에 담도록 수정이 필요함!
		
		sb.setLength(0);
		sb.append("select * from fileuploadtest ");
		sb.append("where writer = ? ");
		
		FileUploadTestVO vo = null;
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, writer);
			
			rs = ps.executeQuery();
			
			rs.next();
			
			vo = new FileUploadTestVO(
					rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vo;
		
	}
	
	
	

}
