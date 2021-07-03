package model;

public class Ser_MessageDTO {
	private String member_id;
	private String Q_ctgr;
	private String Q_title;
	private String Q_content;
	private String Q_date;
	
	public Ser_MessageDTO(String member_id, String q_ctgr, String q_title, String q_content, String q_date) {
		super();
		this.member_id = member_id;
		Q_ctgr = q_ctgr;
		Q_title = q_title;
		Q_content = q_content;
		Q_date = q_date;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getQ_ctgr() {
		return Q_ctgr;
	}

	public void setQ_ctgr(String q_ctgr) {
		Q_ctgr = q_ctgr;
	}

	public String getQ_title() {
		return Q_title;
	}

	public void setQ_title(String q_title) {
		Q_title = q_title;
	}

	public String getQ_content() {
		return Q_content;
	}

	public void setQ_content(String q_content) {
		Q_content = q_content;
	}

	public String getQ_date() {
		return Q_date;
	}

	public void setQ_date(String q_date) {
		Q_date = q_date;
	}
	
	

}
