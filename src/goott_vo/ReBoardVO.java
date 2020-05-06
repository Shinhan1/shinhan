package goott_vo;

public class ReBoardVO {
	private int renum;
	private String id;
	private String contents;
	private String regdate;
	private int ref;
	

	
	public ReBoardVO() {
		super();
	}



	public ReBoardVO(int renum, String id, String contents, String regdate, int ref) {
		super();
		this.renum = renum;
		this.id = id;
		this.contents = contents;
		this.regdate = regdate;
		this.ref = ref;
	}



	public int getRenum() {
		return renum;
	}



	public void setRenum(int re) {
		this.renum = re;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public String getRegdate() {
		return regdate;
	}



	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}



	public int getRef() {
		return ref;
	}



	public void setRef(int ref) {
		this.ref = ref;
	}
	
		
	
	
	
	
	

}
