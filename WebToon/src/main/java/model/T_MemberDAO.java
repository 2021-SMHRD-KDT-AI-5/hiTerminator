package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class T_MemberDAO {

	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;

	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// localhost : Oracle DB가 설치된 PC의 ip주소 설정
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String pass = "hr";

			conn = DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar파일 또는 driver경로 확인");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결실패 또는 SQL문 오류");
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
	
	   public int insert_member(T_MemberDTO member) {
		   	// 회원가입 메소드

		      int cnt = 0;

		      try {
		         connection();
		         // 쿼리 실행
		         String sql = "insert into book_member values(?,?,?,?,?)";

		         psmt = conn.prepareStatement(sql);

		         psmt.setString(1, member.getMember_id());
		         psmt.setString(2, member.getPw());
		         psmt.setString(3, member.getName());
		         psmt.setString(4, member.getTel());
		         psmt.setString(5, member.getEmail());

		         cnt = psmt.executeUpdate();

		      } catch (SQLException e) {
		         // SQL문 관련오류 발생시 실행되는 캣치-문
		         System.out.println("SQL문 에러");
		         e.printStackTrace();
		      } finally {
		         // 무조건 실행하는 구문
		         // 데이터베이스 종료기능 구현
		         close();
		      } // end
		      return cnt;

		   }

		   public T_MemberDTO login_member(String id, String pw) {
			   // 로그인 메소드

		      T_MemberDTO member = null;

		      try {
		         // DB연결기능
		         connection();

		         // 쿼리 실행
		         String sql = "select * from book_member where id=? and pw=?";

		         psmt = conn.prepareStatement(sql);

		         psmt.setString(1, id);
		         psmt.setString(2, pw);

		         // insert, update, delete : executeUpdate()
		         // select : executeQuery
		         rs = psmt.executeQuery();

		         // next(): 다음 행으로 넘어가서 데이터 존재 여부 판단(true/false)
		         if (rs.next()) {// select한 데이터가 있다면
		            String getId = rs.getString(1);
		            String getNick = rs.getString(3);
		            String getEmail = rs.getString(4);
		            String getTel = rs.getString(5);

		            member = new T_MemberDTO(getId, null, getNick, getEmail, getTel);
		         }

		      } catch (SQLException e) {
		         System.out.println("sql문 에러");
		         e.printStackTrace();
		      } finally {
		         // 무조건 실행하는 구문
		         // 데이터베이스 종료기능 구현
		         close();
		      } // end
		      return member;
		   }
	

}
