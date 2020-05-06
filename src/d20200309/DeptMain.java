package d20200309;

import java.util.ArrayList;

import goott_dao.DeptDAO;
import goott_vo.DeptVO;

public class DeptMain {
	public static void main(String[] args) {
		DeptDAO dao = new DeptDAO();
		
		// 데이터 1건 조회
//		DeptVO vo = dao.selectOne(20);
//		
//		System.out.println(vo.getDeptno()+"\t" + vo.getDname()+"\t" +vo.getLoc());
		
		System.out.println("-------------------------");
		
		// 데이터 삽입
		/*
		DeptVO vo1 = new DeptVO();
		vo1.setDeptno(80);
		vo1.setDname("영업1");
		vo1.setLoc("구로");
		
//		dao.insertOne(vo1);
		
		int result = dao.insertOne(vo1);
		
		if(result == 1) {
			System.out.println("다른 일 수행해~");
		}
		*/
		
		// 데이터 수정
		/*		
		DeptVO vo2 = new DeptVO();
		vo2.setDeptno(50);
		vo2.setDname("영업2");
		vo2.setLoc("재택근무");
		
		dao.updateOne(vo2);
		*/
		
		// 데이터 삭제
//		dao.deleteOne(70);
		
		// 데이터 전체보기	
		ArrayList<DeptVO> list = dao.selectAll();

		for(DeptVO vo3 : list) {
			System.out.println(
					vo3.getDeptno()+"\t"+vo3.getDname()+"\t"+vo3.getLoc());
		}
		
	}
}
