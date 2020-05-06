package d20200311;

import goott_dao.ProductDAO;
import goott_vo.ProductVO;

public class InsertProduct {
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		ProductVO vo = new ProductVO();
		
//		vo.setPname("에르메스 지갑");
//		vo.setPrice(10000000);
//		vo.setDcratio(10);
//		vo.setProdesc("명품 위의 명품 - 기다림의 미학");
//		vo.setQty(5);
//		vo.setImgFile("../images/hermes.jpg");
//		vo.setBigFile("../images/hermes.jpg");
//		
//		dao.addData(vo);
		
		vo.setPname("스톤아일랜드");
		vo.setPrice(720000);
		vo.setDcratio(10);
		vo.setProdesc("사고싶다 ");
		vo.setQty(5);
		vo.setImgFile("../images/stone.jpg");
		vo.setBigFile("../images/stone.jpg");
		
		dao.addData(vo);
		
		
//		ProductVO vo1 = new ProductVO();
//		
//		vo1.setPname("까르띠에 시계");
//		vo1.setPrice(30000000);
//		vo1.setDcratio(5);
//		vo1.setProdesc("화이트데이에 준비하세요");
//		vo1.setQty(20);
//		vo1.setImgFile("../images/clock.jpg");
//		vo1.setBigFile("../images/clock.jpg");
//		
//		int result = dao.addData(vo1);
//		
//		System.out.println(result);
		
		
		
		
	}

}
