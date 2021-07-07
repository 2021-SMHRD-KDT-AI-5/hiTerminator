package model;

public class Consulting_messageDTO {
	
	// 메세지 번호, 회원 아이디, 보낸날짜, 제목, 첨부파일 
	
	private int consult_no;
	private String member_id;
	private String title;
	private String consult_content;
	private String apply_date;
	
	public Consulting_messageDTO(int consult_no, String member_id, String title, String consult_content,
			String apply_date) {
		super();
		this.consult_no = consult_no;
		this.member_id = member_id;
		this.title = title;
		this.consult_content = consult_content;
		this.apply_date = apply_date;
	}

	public Consulting_messageDTO(String member_id, String title, String consult_content) {
		super();
		this.member_id = member_id;
		this.title = title;
		this.consult_content = consult_content;
	}

	public int getConsult_no() {
		return consult_no;
	}

	public void setConsult_no(int consult_no) {
		this.consult_no = consult_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
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

	public String getApply_date() {
		return apply_date;
	}

	public void setApply_date(String apply_date) {
		this.apply_date = apply_date;
	}
	
	
}
