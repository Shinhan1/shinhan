package goott_vo;

public class ProductVO {
	private int pno;				// 상품 번호
	private String pname;			// 상품 이름
	private int price;				// 가격
	private int dcratio;			// 할인율
	private String prodesc;			// 제품 정보
	private int qty;				// 수량
	private String imgFile;			// 이미지
	private String bigFile;			// 이미지
	
	public ProductVO() {}
	
	public ProductVO(int pno, String pname, int price, int dcratio, String prodesc, int qty, String imgFile,
			String bigFile) {
		super();
		this.pno = pno;
		this.pname = pname;
		this.price = price;
		this.dcratio = dcratio;
		this.prodesc = prodesc;
		this.qty = qty;
		this.imgFile = imgFile;
		this.bigFile = bigFile;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDcratio() {
		return dcratio;
	}

	public void setDcratio(int dcratio) {
		this.dcratio = dcratio;
	}

	public String getProdesc() {
		return prodesc;
	}

	public void setProdesc(String prodesc) {
		this.prodesc = prodesc;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getImgFile() {
		return imgFile;
	}

	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}

	public String getBigFile() {
		return bigFile;
	}

	public void setBigFile(String bigFile) {
		this.bigFile = bigFile;
	}
	
	
	
	
	

}
