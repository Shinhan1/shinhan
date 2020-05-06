package goott_vo;

public class FileUploadTestVO {
	private int fno;
	private String title;
	private String writer;
	private String contents;
	private String filePath;
	
	
	
	public FileUploadTestVO() {}



	public FileUploadTestVO(int fno, String title, String writer, String contents, String filePath) {
		super();
		this.fno = fno;
		this.title = title;
		this.writer = writer;
		this.contents = contents;
		this.filePath = filePath;
	}



	public int getFno() {
		return fno;
	}



	public void setFno(int fno) {
		this.fno = fno;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public String getFilePath() {
		return filePath;
	}



	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	
	
	
	
	
}
