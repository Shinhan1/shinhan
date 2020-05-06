package d20200309;

import goott_dao.EmpDAO;
import goott_vo.EmpVO;

public class EmpMain {
	public static void main(String[] args) {
		EmpDAO dao = new EmpDAO();
		
		// 데이터 검색
//		EmpVO vo = dao.selectD(7566);
//		System.out.println(
//				vo.getEmpno()+"\t"+vo.getEname()+"\t"+vo.getJob()+"\t"+vo.getMgr()+"\t"+
//				vo.getHiredate()+"\t"+vo.getSal()+"\t"+vo.getComm()+"\t"+vo.getDeptno());
		
		// 데이터 삽입
//		EmpVO vo1 = new EmpVO();
//		vo1.setEmpno(9999);
//		vo1.setEname("SHIN");
//		vo1.setJob("PRESIDENT");
//		vo1.setMgr(7839);
//		vo1.setHiredate("95/11/28");
//		vo1.setSal(10000);
//		vo1.setComm(2000);
//		vo1.setDeptno(10);
//		dao.insertD(vo1);
		
		// 데이터 수정
//		EmpVO vo2 = new EmpVO();
//		vo2.setEmpno(9999);
//		vo2.setEname("SHINHAN");
//		vo2.setJob("PRESIDENT");
//		vo2.setMgr(7839);
//		vo2.setHiredate("95/11/28");
//		vo2.setSal(10000);
//		vo2.setComm(2000);
//		vo2.setDeptno(10);
//		dao.updateD(vo2);
		
		// 데이터 삭제
		EmpVO vo3 = new EmpVO();
		dao.deleteD(9999);
		
		
	}
}
