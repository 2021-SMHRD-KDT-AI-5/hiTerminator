package model;

public class DonateDTO {

	private String member_id;
	//피후원자 아이디 추가
	private int money;
	private String donate_date;
	private String donate_content;
	
	
	public DonateDTO(String member_id, int money, String donate_date, String donate_content) {
		super();
		this.member_id = member_id;
		this.money = money;
		this.donate_date = donate_date;
		this.donate_content = donate_content;
	}


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public int getMoney() {
		return money;
	}


	public void setMoney(int money) {
		this.money = money;
	}


	public String getDonate_date() {
		return donate_date;
	}


	public void setDonate_date(String donate_date) {
		this.donate_date = donate_date;
	}


	public String getDonate_content() {
		return donate_content;
	}


	public void setDonate_content(String donate_content) {
		this.donate_content = donate_content;
	}
	
	
	
	
	
}
