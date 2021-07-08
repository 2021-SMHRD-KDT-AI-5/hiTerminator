package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DonateDAO {
	
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

	public int Donate_insert(DonateDTO donate) {

		int cnt = 0;

		try {
			// connection 메소드 호출 -> DB연결
			connection();

			// 쿼리 실행
			String sql = "insert into donate values(?, ?, ?, sysdate, ?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, donate.getMember_id()); //후원하는 사람 아이디
			psmt.setString(2, donate.getArtist_id()); // 후원받는 작가 아이디가 와야함
			psmt.setInt(3, donate.getMoney());
			psmt.setString(5, donate.getDonate_content());
			
			
			// insert, update, delete : executeUpdate() --> DB내용 변경
			// select : executeQuery() --> DB내용 검색
			cnt = psmt.executeUpdate(); // cnt 자체를 반환할 수 있게 만들기

		}

		catch (SQLException e) {
			System.out.println("sql문 오류");
			// sendRedirect, 등 싹 지우기
			e.printStackTrace();

		} finally {

			// 메소드 호출
			close();

		} // end

		// cnt값 반환, 오류 첫 번째 선택 > void 수정
		return cnt;
	}
	
	
	//
}
