package goott_dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import goott_vo.BoardVO;
import goott_vo.ProductVO;

public class ProductDAO {
	/*
	 * DBMS에 접근할 싱글톤 패턴 객체를 만들었으므로 필요 없음
	 * 
	 * final String DRIVER = "oracle.jdbc.driver.OracleDriver"; final String URL =
	 * "jdbc:oracle:thin:@localhost:1521:XE"; final String USER = "scott"; final
	 * String PASSWORD = "tiger";
	 */

	StringBuffer sb = new StringBuffer();

	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public ProductDAO() {
		/*
		 * try { Class.forName(DRIVER); conn = DriverManager.getConnection(URL, USER,
		 * PASSWORD); System.out.println("conn : " + conn);
		 * 
		 * } catch (ClassNotFoundException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); System.out.println("드라이버 로딩 실패"); } catch (SQLException
		 * e) { // TODO Auto-generated catch block e.printStackTrace();
		 * System.out.println("DB 연결 실패"); }
		 */
		conn = OracleXEConnection.getInstance().getConnection();
	}

	public int addData(ProductVO vo) {
		sb.setLength(0);
		sb.append("insert into product ");
		sb.append("values (product_pno_seq.nextval, ?, ?, ?, ?, ?, ?, ?) ");
		int result = -1;

		try {
			ps = conn.prepareStatement(sb.toString());

			ps.setString(1, vo.getPname());
			ps.setInt(2, vo.getPrice());
			ps.setInt(3, vo.getDcratio());
			ps.setString(4, vo.getProdesc());
			ps.setInt(5, vo.getQty());
			ps.setString(6, vo.getImgFile());
			ps.setString(7, vo.getBigFile());

			result = ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;

	} // addData() end

	public ArrayList<ProductVO> getAllData() {
		sb.setLength(0);
		sb.append("select * from product ");

		ArrayList<ProductVO> list = new ArrayList<ProductVO>();

		try {
			ps = conn.prepareStatement(sb.toString());

			rs = ps.executeQuery();

			while (rs.next()) {
				int pno = rs.getInt(1);
				String pname = rs.getString(2);
				int price = rs.getInt(3);
				int dcratio = rs.getInt(4);
				String prodesc = rs.getString(5);
				int qty = rs.getInt(6);
				String imgFile = rs.getString(7);
				String bigFile = rs.getString(8);

				ProductVO vo = new ProductVO(pno, pname, price, dcratio, prodesc, qty, imgFile, bigFile);

				list.add(vo);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	} // getAllData() end

	// 상품정보를 조회 - 상품번호로 조회하는 메소드 - getData()

	public ProductVO getData(int pno) {
		sb.setLength(0);
		sb.append("select * from product ");
		sb.append("where pno = ?");
		ProductVO vo = null;

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, pno);

			rs = ps.executeQuery();
			while (rs.next()) {
				int pno1 = rs.getInt(1);
				String pname = rs.getString(2);
				int price = rs.getInt(3);
				int dcratio = rs.getInt(4);
				String prodesc = rs.getString(5);
				int qty = rs.getInt(6);
				String imgFile = rs.getString(7);
				String bigFile = rs.getString(8);

				vo = new ProductVO(pno1, pname, price, dcratio, prodesc, qty, imgFile, bigFile);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vo;

	} // getData() end

	// 개별 상품이름으로 조회 - getDataByName()
	public ProductVO getDataByName(String pname) {
		sb.setLength(0);
		sb.append("select * from product ");
		sb.append("where pname = ?");
		ProductVO vo = null;

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, pname);

			rs = ps.executeQuery();
			while (rs.next()) {
				int pno = rs.getInt(1);
				String pname1 = rs.getString(2);
				int price = rs.getInt(3);
				int dcratio = rs.getInt(4);
				String prodesc = rs.getString(5);
				int qty = rs.getInt(6);
				String imgFile = rs.getString(7);
				String bigFile = rs.getString(8);

				vo = new ProductVO(pno, pname1, price, dcratio, prodesc, qty, imgFile, bigFile);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vo;
	}

	// 새롭게 추가한 상품의 정보를 변경 - 가격, 할인율, 수량 - modifyData()
	public void modifyData(ProductVO vo) {
		sb.setLength(0);
		sb.append("update product ");
		sb.append("set pname = ?, price = ?, dcratio = ?, prodesc = ?, qty = ?, imgFile = ?, bigFile = ? ");
		sb.append("where pno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getPname());
			ps.setInt(2, vo.getPrice());
			ps.setInt(3, vo.getDcratio());
			ps.setString(4, vo.getProdesc());
			ps.setInt(5, vo.getQty());
			ps.setString(6, vo.getImgFile());
			ps.setString(7, vo.getBigFile());
			ps.setInt(8, vo.getPno());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

	// 새롭게 추가한 상품을 삭제 - deleteData()
	public void deleteData(int pno) {
		sb.setLength(0);
		sb.append("delete product ");
		sb.append("where pno = ? ");
		
		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, pno);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
