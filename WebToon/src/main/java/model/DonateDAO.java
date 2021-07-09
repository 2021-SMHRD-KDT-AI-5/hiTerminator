package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
			psmt.setString(4, donate.getDonate_content());
			
			
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
	
public ArrayList<DonateDTO> showDonate() {
		
		ArrayList<DonateDTO>list=new ArrayList<DonateDTO>(); // 단순 변수선언이 아닌 객체 생성
		DonateDTO donate = null; // 변수선언 및 초기화
		
		try {
			// DB연결기능
			connection();

			// 쿼리실행  실행다시 해보세요!
			String sql = "select * from donate order by donate_date desc";

			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();

			while(rs.next()) {
				String member_id = rs.getString(1);
				String artist_id = rs.getString(2);
				int money = rs.getInt(3);
				String donate_date = rs.getString(4);
				String donate_content = rs.getString(5);

				donate = new DonateDTO(member_id, artist_id, money, donate_date, donate_content);
				list.add(donate);
			}

		} 
		catch (SQLException e) {
			System.out.println("donate show sql 오류");
			e.printStackTrace();
		} finally {
			close();
		} // End

		return list;
	}
	
	
	//
}
