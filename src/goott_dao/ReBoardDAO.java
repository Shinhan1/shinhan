package goott_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import goott_vo.ReBoardVO;

public class ReBoardDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public ReBoardDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}

	// 댓글 입력 메소드
	public void insertReply(ReBoardVO vo) {
//		insert into reboard
//		values (댓글번호, 아이디, 댓글내용, 날짜, 게시글 번호 )
		sb.setLength(0);
		sb.append("insert into reboard ");
		sb.append("values (reboard_renum_seq.nextval, ?, ?, sysdate, ?) ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getContents());
			ps.setInt(3, vo.getRef());

			ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // insertReply()

	// 댓글 조회 메소드 - 전체 조회(원글번호별)
	public ArrayList<ReBoardVO> getAllReply(int bno) {
		ArrayList<ReBoardVO> list = new ArrayList<ReBoardVO>();

		sb.setLength(0);
		sb.append("select * from reboard ");
		sb.append("where ref = ? ");
		sb.append("order by renum desc ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, bno);

			rs = ps.executeQuery();

			while (rs.next()) {
				ReBoardVO vo = new ReBoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));
				list.add(vo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	// 댓글 조회 메소드 - 전체 조회
	public ArrayList<ReBoardVO> getAllReply() {
		ArrayList<ReBoardVO> list = new ArrayList<ReBoardVO>();

		sb.setLength(0);
		sb.append("select * from reboard ");
		sb.append("where ref = ? ");
		sb.append("order by renum desc ");

		try {
			ps = conn.prepareStatement(sb.toString());

			rs = ps.executeQuery();

			while (rs.next()) {
				ReBoardVO vo = new ReBoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
				list.add(vo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

}
