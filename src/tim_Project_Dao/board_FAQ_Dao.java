package tim_Project_Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import tim_Project_VO.board_FAQ_VO;
import tim_Project_VO.board_QA_VO;

/*
CREATE TABLE BOARD_FAQ (
	    FAQ_BNO NUMBER(10),
	    FAQ_TITLE VARCHAR2(50),
	    FAQ_INQUIRY VARCHAR2(200),
	    FAQ_DATE DATE,
	    FAQ_CONTENTS VARCHAR2(3000),
	    FAQ_STATUS NUMBER(2),
	    FAQ_HITS NUMBER(5),
	    FAQ_SUBINQUIRY VARCHAR2(50));
*/

public class board_FAQ_Dao {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public board_FAQ_Dao() {
		conn = OracleXEConnection.getInstance().getConnection();
	}

	// 데이터 생성
	public void FAQ_addData(board_FAQ_VO faq_vo) {
		sb.setLength(0);
		sb.append("insert into board_faq ");
		sb.append("values (board_faq_seq.nextval, ?, ?, sysdate, ?, 0, 0, ? ) ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, faq_vo.getFaq_title());
			ps.setString(2, faq_vo.getFaq_inquiry());
			ps.setString(3, faq_vo.getFaq_contents());
			ps.setString(4, faq_vo.getFaq_subInquiry());

			ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // QA_addData() end

	// 전체 데이터 조회
	public ArrayList<board_FAQ_VO> getAllData(int startNo, int endNo, String sel) {
		ArrayList<board_FAQ_VO> list = new ArrayList<board_FAQ_VO>();

		

		try {
			
			if(sel == null) {
				sb.setLength(0);
				sb.append("select * ");
				sb.append("from (select rownum rn, faq_bno, faq_title, faq_inquiry, faq_date, faq_contents, faq_status, faq_hits, faq_subinquiry ");
				sb.append("from (select * from board_faq ");
				sb.append("order by faq_bno desc) ");
				sb.append("where rownum <= ?) ");
				sb.append("where rn >= ? ");
				
				ps = conn.prepareStatement(sb.toString());
				ps.setInt(1, endNo);
				ps.setInt(2, startNo);
				
			}else {
				sb.setLength(0);
				sb.append("select * ");
				sb.append("from (select rownum rn, faq_bno, faq_title, faq_inquiry, faq_date, faq_contents, faq_status, faq_hits, faq_subinquiry ");
				sb.append("from (select * from board_faq ");
				sb.append("where faq_title like ? ");
				sb.append("or faq_contents like ? ");
				sb.append("order by faq_bno desc) ");
				sb.append("where rownum <= ?) ");
				sb.append("where rn >= ? ");
				
				ps = conn.prepareStatement(sb.toString());
				ps.setString(1, "%" + sel + "%");
				ps.setString(2, "%" + sel + "%");
				ps.setInt(3, endNo);
				ps.setInt(4, startNo);

			}
			
			rs = ps.executeQuery();

			while (rs.next()) {
				int bno = rs.getInt("faq_bno");
				String title = rs.getString("faq_title");
				String inquiry = rs.getString("faq_inquiry");
				String date = rs.getString("faq_date");
				String contents = rs.getString("faq_contents");
				int status = rs.getInt("faq_status");
				int hits = rs.getInt("faq_hits");
				String subinquiry = rs.getString("faq_subinquiry");

				board_FAQ_VO vo = new board_FAQ_VO(bno, title, inquiry, date, contents, status, hits, subinquiry);

				list.add(vo);

			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;

	} // getAllData(startNo, endNo) end

	// 총 게시물 파악 메소드
	public int getTotalCount() {
		sb.setLength(0);
		sb.append("select count(*) cnt from board_faq "); // 테이블에 없는 컬럼 값이기 때문에 별칭을 달아야함

		int cnt = 0;

		try {
			ps = conn.prepareStatement(sb.toString());

			rs = ps.executeQuery();

			rs.next();

			// cnt = rs.getInt(1); // X 안됨
			cnt = rs.getInt("cnt"); // 별칭으로 선언해야함

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return cnt;
	}// getTotalCount() end
	
	public int getSelCount(String sel) {
		sb.setLength(0);
		sb.append("select count(*) cnt from board_faq "); // 테이블에 없는 컬럼 값이기 때문에 별칭을 달아야함
		sb.append("where faq_title like ? ");
		sb.append("or faq_contents like ? ");
		
		
		int cnt = 0;

		try {
			ps = conn.prepareStatement(sb.toString());
			
			ps.setString(1, "%" + sel + "%");
			ps.setString(2, "%" + sel + "%");

			rs = ps.executeQuery();

			rs.next();

			// cnt = rs.getInt(1); // X 안됨
			cnt = rs.getInt("cnt"); // 별칭으로 선언해야함

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return cnt;
	}// getTotalCount() end

	
	// 제목+내용 으로 검색
//		public ArrayList<board_FAQ_VO> selectData(String sel) {
//			ArrayList<board_FAQ_VO> list = new ArrayList<board_FAQ_VO>();
//			sb.setLength(0);
//			sb.append("select faq_bno, faq_title, faq_inquiry, faq_date, faq_contents, faq_status, faq_hits, faq_subinquiry ");
//			sb.append("from board_faq ");
//			sb.append("where faq_title like ? ");
//			sb.append("or faq_contents like ? ");
//			sb.append("order by faq_bno desc ");
//
//			try {
//				ps = conn.prepareStatement(sb.toString());
//				ps.setString(1, "%" + sel + "%");
//				ps.setString(2, "%" + sel + "%");
//
//				rs = ps.executeQuery();
//
//				while (rs.next()) {
//					int bno = rs.getInt("faq_bno");
//					String title = rs.getString("faq_title");
//					String inquiry = rs.getString("faq_inquiry");
//					String date = rs.getString("faq_date");
//					String contents = rs.getString("faq_contents");
//					int status = rs.getInt("faq_status");
//					int hits = rs.getInt("faq_hits");
//					String subinquiry = rs.getString("faq_subinquiry");
//
//					board_FAQ_VO vo = new board_FAQ_VO(bno, title, inquiry, date, contents, status, hits, subinquiry);
//
//					list.add(vo);
//
//				}
//			} catch (SQLException e) {
//				// TODO: handle exception
//				e.printStackTrace();
//			}
//			return list;
//
//		} // selectData() end

	 
}
