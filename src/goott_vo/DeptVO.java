package goott_vo;
// VO (Value Object) : DBMS에서 되돌려주는 레코드 1개의 데이터를 담을 수 있는 객체
// 캡슐화 : 변수 - private / method(getter, setter) - public
// Beans, Java Bean, JSP Bean

public class DeptVO {
	private int deptno;
	private String dname;
	private String loc;
	
	public DeptVO() {}
	
	
	
	public DeptVO(int deptno, String dname, String loc) {
		super();
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}



	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
	
	
}
