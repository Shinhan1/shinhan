package bean;

public class MemberBean {
	
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String mp;
	private String regdate;
	private String email;
	private int memno;
	
	
	public MemberBean() {}


	public MemberBean(String id, String pw, String name, String birth, String mp, String regdate, String email,
			int memno) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.mp = mp;
		this.regdate = regdate;
		this.email = email;
		this.memno = memno;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getMp() {
		return mp;
	}


	public void setMp(String mp) {
		this.mp = mp;
	}


	public String getRegdate() {
		return regdate;
	}


	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getMemno() {
		return memno;
	}


	public void setMemno(int memno) {
		this.memno = memno;
	}
	
	
	

}
