package goott_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import goott_vo.BoardVO;

public class BoardV3_DAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public BoardV3_DAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	} // 생성자 end

	// 게시글 입력 메소드 - addData()
	public void addData(BoardVO vo) {
		sb.setLength(0);
		sb.append("insert into boardv3 ");
		sb.append("values (boardv3_bno_seq.nextval, ?, ?, ?, sysdate, ?, 0, 0 ) ");

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
	// 전체 게시물 조회 - getAllData() - 페이징 처리를 위해 시작 번호, 끝 번호가 필요
	public ArrayList<BoardVO> getAllData(int startNo, int endNo) {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		sb.setLength(0);
		sb.append("select * ");
		sb.append("from (select rownum rn, bno, title, writer, contents, ip, hits, regdate, status ");
		sb.append("from (select * from boardv3 ");
		sb.append("order by bno desc) ");
		sb.append("where rownum <= ?) ");
		sb.append("where rn >= ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, endNo);
			ps.setInt(2, startNo);
			
			rs = ps.executeQuery();

			while (rs.next()) {
				int bno = rs.getInt("bno");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String contents = rs.getString("contents");
				String regdate = rs.getString("regdate");
				String ip = rs.getString("ip");
				int status = rs.getInt("status");
				int hits = rs.getInt("hits");

				BoardVO vo = new BoardVO(bno, title, writer, contents, regdate, ip, status, hits);

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
		sb.append("select count(*) cnt from boardv3 ");		// 테이블에 없는 컬럼 값이기 때문에 별칭을 달아야함 
		
		int cnt = 0;
		
		try {
			ps = conn.prepareStatement(sb.toString());
			
			rs = ps.executeQuery();
			
			rs.next();
			
			// cnt = rs.getInt(1);   // X 안됨
			cnt = rs.getInt("cnt");  // 별칭으로 선언해야함
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return cnt;		
	}// getTotalCount() end

	// 데이터 한건 조회 메소드 - 게시글 번호 - getDate()
	public BoardVO getData(int bno) {
		sb.setLength(0);
		sb.append("select * from boardv3 ");
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
		sb.append("update boardv3 ");
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
	
	// 게시글 삭제 메소드 - 게시글 번호 - deleteData()
	public void deleteData(int bno) {
		sb.setLength(0);
		sb.append("delete boardv3 ");
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
	
	// 조회수 증가 메소드
	public void raiseHits(int bno) {
		sb.setLength(0);
		sb.append("update boardv3 ");
		sb.append("set hits = hits + 1 ");
		sb.append("where bno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			
			ps.setInt(1, bno);
			
			ps.executeUpdate();	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}	// raiseHits() end
	
	

}
