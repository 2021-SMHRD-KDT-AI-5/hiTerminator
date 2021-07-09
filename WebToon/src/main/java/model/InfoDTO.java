package model;

public class InfoDTO {
	private int info_no;
	private String info_title;
	private String info_content;
	private String info_date;
	
	public InfoDTO(String info_title, String info_content) {
		super();
		this.info_title=info_title;
		this.info_content=info_content;
	}
	
	public InfoDTO(int info_no, String info_title, String info_content, String info_date) {
		super();
		this.info_no=info_no;
		this.info_title=info_title;
		this.info_content=info_content;
		this.info_date=info_date;
	}

	public InfoDTO() {
		
	}

	public int getInfo_no() {
		return info_no;
	}

	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}

	public String getInfo_title() {
		return info_title;
	}

	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}

	public String getInfo_content() {
		return info_content;
	}

	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}

	public String getInfo_date() {
		return info_date;
	}

	public void setInfo_date(String info_date) {
		this.info_date = info_date;
	}
	
}
