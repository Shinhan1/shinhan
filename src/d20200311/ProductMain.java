package d20200311;

import java.util.ArrayList;

import goott_dao.ProductDAO;
import goott_vo.ProductVO;

public class ProductMain {
	public static void main(String[] args) {
//		new ProductDAO();
		
		ProductDAO dao = new ProductDAO();
		
		// 전체 데이터 조회
//		ArrayList<ProductVO> list = dao.getAllData();
//		for(ProductVO vo : list) {
//			System.out.println(vo.getImgFile());
//		}
		
		// 상품 번호에 따른 조회
//		ProductVO vo = dao.getData(4);
//		
//		System.out.println(
//				vo.getPno() + ", " +  vo.getPname() + ", " + vo.getImgFile());
		
		// 상품 이름에 따른 조회
//		ProductVO vo = dao.getDataByName("스톤아일랜드");
//		
//		System.out.println(vo.getPno() + ", " + vo.getImgFile());
		
		// 상품 수정
//		ProductVO vo = new ProductVO();
//		vo.setPname("stone island");
//		vo.setPrice(690000);
//		vo.setProdesc("스톤");
//		vo.setQty(3);
//		vo.setImgFile("../images/stone1.jpg");
//		vo.setBigFile("../images/stone1.jpg");
//		vo.setPno(9);
//		
//		dao.modifyData(vo);
		
		// 상품 삭제
//		dao.deleteData(9);
		
		
		
		
		
		
	}

}
