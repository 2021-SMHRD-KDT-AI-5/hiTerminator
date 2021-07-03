package model;

public class T_MemberDTO {
	private String Member_id;
	private String pw;
	private String name;
	private String tel;
	private String email;
	private String webtoon_link;
	// ck -> 累啊咯何, 包府磊 咯何
	
	// 积己磊
	public T_MemberDTO(String member_id, String pw, String name, String tel, String email) {
		this.Member_id = member_id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.email = email;
	}
	public T_MemberDTO(String member_id, String pw, String name, String tel, String email,String webtoon_link) {
		this.Member_id = member_id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.webtoon_link = webtoon_link;
	}
	// getter setter

	public String getWebtoon_link() {
		return webtoon_link;
	}
	public void setWebtoon_link(String webtoon_link) {
		this.webtoon_link = webtoon_link;
	}
	public String getMember_id() {
		return Member_id;
	}

	public void setMember_id(String member_id) {
		Member_id = member_id;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
	
}
