package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Consulting_messageDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.37:1521:xe";
			String user = "hr";
			String pass = "hr";
			conn = DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar파일 또는 driver 경로 확인!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결 실패..");
			e.printStackTrace();
		}

	}

	public void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public int insertMessage(Consulting_messageDTO message) {

		int cnt = 0;

		try {
			connection();
			// 쿼리 실행
			String sql = "insert into consult values(consult_no.nextval,?,sysdate, ?,?)";
			// consult_no -> 시퀀스 값
			// sysdate -> 시스템 날짜

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, message.getMember_id());
			psmt.setString(2, message.getTitle());
			psmt.setString(3, message.getConsult_content());

			// insert, update, delete : executeUpdate() --> DB내용 변경
			// select : executeQuery() --> DB내용 검색
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("sql문 오류");
			e.printStackTrace();

		} finally {
			close();
		} // end

		return cnt;

	}

	public ArrayList<Consulting_messageDTO> showMessage(String member_id) {

		ArrayList<Consulting_messageDTO> list = new ArrayList<Consulting_messageDTO>();
		Consulting_messageDTO message = null;

		try {
			// DB연결기능
			connection();

			String sql = "select * from consult where member_id = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member_id);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int getConsult_id = rs.getInt(1);
				String getMember_id = rs.getString(2);
				String getApply_date = rs.getString(3);
				String getTitle = rs.getString(4);
				String getConsult_content = rs.getString(5);

				message = new Consulting_messageDTO(getConsult_id, getMember_id, getTitle, getConsult_content, getApply_date);
				list.add(message);
			}
		} catch (SQLException e) {
			System.out.println("sql오류");
			e.printStackTrace();
		} finally {
			close();
		} // end

		return list;
	}
}
