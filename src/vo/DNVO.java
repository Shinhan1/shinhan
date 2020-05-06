package vo;

public class DNVO {
	private String cr_name;
	private String cr_number;
	private String cr_man_name;
	private String cr_man_phone_number;
	private String price;
	private String box;
	private String box2;
	
	public DNVO(){
		super();
	}

	public DNVO(String cr_name, String cr_number, String cr_man_name, String cr_man_phone_number, String price, String box,
			String box2) {
		super();
		this.cr_name = cr_name;
		this.cr_number = cr_number;
		this.cr_man_name = cr_man_name;
		this.cr_man_phone_number = cr_man_phone_number;
		this.price = price;
		this.box = box;
		this.box2 = box2;
	}

	public String getCr_name() {
		return cr_name;
	}

	public void setCr_name(String cr_name) {
		this.cr_name = cr_name;
	}

	public String getCr_number() {
		return cr_number;
	}

	public void setCr_number(String cr_number) {
		this.cr_number = cr_number;
	}

	public String getCr_man_name() {
		return cr_man_name;
	}

	public void setCr_man_name(String cr_man_name) {
		this.cr_man_name = cr_man_name;
	}

	public String getCr_man_phone_number() {
		return cr_man_phone_number;
	}

	public void setCr_man_phone_number(String cr_man_phone_number) {
		this.cr_man_phone_number = cr_man_phone_number;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBox() {
		return box;
	}

	public void setBox(String box) {
		this.box = box;
	}

	public String getBox2() {
		return box2;
	}

	public void setBox2(String box2) {
		this.box2 = box2;
	}

	@Override
	public String toString() {
		return "DNVO [cr_name=" + cr_name + ", cr_number=" + cr_number + ", cr_man_name=" + cr_man_name
				+ ", cr_man_phone_number=" + cr_man_phone_number + ", price=" + price + ", box=" + box + ", box2="
				+ box2 + "]";
	}



	
	
	
	
	
	

}