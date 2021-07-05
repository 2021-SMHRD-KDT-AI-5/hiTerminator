package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Ser_MessageDAO {
	
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

	public int Ser_insertMesasge(Ser_MessageDTO message) {

		int cnt = 0;

		try {
			// connection 메소드 호출 -> DB연결
			connection();

			// 쿼리 실행
			String sql = "insert into customer_service values(?, ?, ?, ?, ?, sysdate)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, message.getMember_id()); // email -> getEmail로 수정(member 객체로부터 꺼내옴)
			psmt.setString(2, message.getEmail());
			psmt.setString(3, message.getQ_ctgr());
			psmt.setString(4, message.getQ_title());
			psmt.setString(5, message.getQ_content());

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
	
public ArrayList<Ser_MessageDTO> showMessage() {
		
		ArrayList<Ser_MessageDTO>list=new ArrayList<Ser_MessageDTO>(); // 단순 변수선언이 아닌 객체 생성
		Ser_MessageDTO message = null; // 변수선언 및 초기화
		
		try {
			// DB연결기능
			connection();

			// 쿼리실행  실행다시 해보세요!
			String sql = "select * from CUSTOMER_SERVICE";

			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();

			while(rs.next()) { // 컬럼명과 데이터 사이에 커서 초기 위치, rs.next()에 따라 커서가 데이터를 가리키며 내려간다. 값이 있을(True) 때까지 반복
				String member_id = rs.getString(1);
				String email = rs.getString(2);
				String q_ctgr = rs.getString(3);
				String q_title = rs.getString(4);
				String q_content = rs.getString(5);
				String date = rs.getString(6);

				message = new Ser_MessageDTO(member_id, email, q_ctgr, q_title, q_content, date);
				list.add(message);
			}

		} 
		catch (SQLException e) {
			System.out.println("조회 sql 문 오류");
			e.printStackTrace();
		} finally {
			close();
		} // end

		return list;
	}
	
}
