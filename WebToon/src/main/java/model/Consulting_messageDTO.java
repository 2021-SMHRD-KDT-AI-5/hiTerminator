package model;

public class Consulting_messageDTO {
	private String member_id;
	private String apply_date;
	private String title;
	private String consult_content;
	
	
	public Consulting_messageDTO(String member_id, String apply_date, String title, String consult_content) {
		super();
		this.member_id = member_id;
		this.apply_date = apply_date;
		this.title = title;
		this.consult_content = consult_content;
	}


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public String getApply_date() {
		return apply_date;
	}


	public void setApply_date(String apply_date) {
		this.apply_date = apply_date;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getConsult_content() {
		return consult_content;
	}


	public void setConsult_content(String consult_content) {
		this.consult_content = consult_content;
	}
	
}
