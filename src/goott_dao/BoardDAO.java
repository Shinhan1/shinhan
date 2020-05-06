package goott_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import goott_vo.BoardVO;

public class BoardDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public BoardDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	} // 생성자 end

	// 게시글 입력 메소드 - addData()
	public void addData(BoardVO vo) {
		sb.setLength(0);
		sb.append("insert into board ");
		sb.append("values (board_bno_seq.nextval, ?, ?, ?, sysdate, ?, 0, 0 ) ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getWriter());
			ps.setString(3, vo.getContents());
			ps.setString(4, vo.getIp());
			/*
			 * ps.setInt(5, vo.getStatus()); ps.setInt(6, vo.getHits());
			 */

			ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // addData() end
	// 전체 게시물 조회 - getAllData()
	public ArrayList<BoardVO> getAllData() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		sb.setLength(0);
		sb.append("select * from board ");
		sb.append("order by bno desc "); // 디비에서 데이터받을떄 앵간하면 정렬하지 않기 권장 x => 오래걸려서 .
		try {
			ps = conn.prepareStatement(sb.toString());
			rs = ps.executeQuery();

			while (rs.next()) {
				int bno = rs.getInt(1);
				String title = rs.getString(2);
				String writer = rs.getString(3);
				String contents = rs.getString(4);
				String regdate = rs.getString(5);
				String ip = rs.getString(6);
				int status = rs.getInt(7);
				int hits = rs.getInt(8);

				BoardVO vo = new BoardVO(bno, title, writer, contents, regdate, ip, status, hits);

				list.add(vo);

			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;

	} // getAllData() end

	// 데이터 한건 조회 메소드 - 게시글 번호 - getDate()
	public BoardVO getData(int bno) {
		sb.setLength(0);
		sb.append("select * from board ");
		sb.append("where bno=? ");

		BoardVO vo = null;

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, bno);

			rs = ps.executeQuery();
			rs.next();

			String title = rs.getString(2);
			String writer = rs.getString(3);
			String contents = rs.getString(4);
			String regdate = rs.getString(5);
			String ip = rs.getString(6);
			int status = rs.getInt(7);
			int hits = rs.getInt(8);

			vo = new BoardVO(bno, title, writer, contents, regdate, ip, status, hits);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return vo;

	} // getData() end

	// 게시글 수정 메소드 - (제목, 내용) - modifyData()
	public void modifyData(BoardVO vo) {
		sb.setLength(0);
		sb.append("update board ");
		sb.append("set title = ?, contents = ? ");
		sb.append("where bno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getTitle());
			ps.setString(2, vo.getContents());
			ps.setInt(3, vo.getBno());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	} // modifyData() end
	
	// 게시글 살제 메소드 - 게시글 번호 - deleteData()
	public void deleteData(int bno) {
		sb.setLength(0);
		sb.append("delete board ");
		sb.append("where bno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, bno);
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

}
