package d20200312;

import goott_dao.BoardDAO;
import goott_vo.BoardVO;

public class BoardMain {
	public static void main(String[] args) {
		BoardDAO dao = new BoardDAO();
		
		// 게시글 입력 테스트
		BoardVO vo = new BoardVO();
		vo.setTitle("모집");
		vo.setWriter("홍길동");
		vo.setContents("활빈당을 모집합니다. 많은 참여 바랍니다");
		vo.setIp("170.0.0.1");
		
		dao.addData(vo);
		System.out.println(vo.toString());
		
		
	}
}
