package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

public class InfoDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public static InfoDAO instance;
	public InfoDAO() {}
	public static InfoDAO getInstance() {
		if(instance==null)
			instance=new InfoDAO();
		return instance;
		
	}
	
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
	
	public int insertPost(InfoDTO post) {

		int cnt = 0;

		try {
			// connection 메소드 호출 -> DB연결
			connection();

			// 쿼리 실행
			String sql = "insert into information values(service_no.nextval, ?, ?, sysdate)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, post.getInfo_title());
			psmt.setString(2, post.getInfo_content());
			

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
	
public ArrayList<InfoDTO> showPost() {
		
		ArrayList<InfoDTO>list=new ArrayList<InfoDTO>(); // 단순 변수선언이 아닌 객체 생성
		InfoDTO post = null; // 변수선언 및 초기화
		
		try {
			// DB연결기능
			connection();

			// 쿼리실행  실행다시 해보세요!
			String sql = "select * from information order by info_id desc";

			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();

			while(rs.next()) { // 컬럼명과 데이터 사이에 커서 초기 위치, rs.next()에 따라 커서가 데이터를 가리키며 내려간다. 값이 있을(True) 때까지 반복
				int info_no = rs.getInt(1);
				String info_title = rs.getString(2);
				String info_content = rs.getString(3);
				String info_date = rs.getString(4);

				post = new InfoDTO(info_no, info_title, info_content, info_date);
				list.add(post);
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
	
	public int deletePost(String info_no) {
		
		int cnt = 0;

		try {
			// DB연결
			connection();

			// 쿼리 실행
			String sql = "delete from information where info_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, info_no);
			
			// ★★★★★
			// insert, update, delete: executeUpdate() --> DB에 내용을 변경할 때
			// select: executeQuery() --> DB에 내용을 검색할 때
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			// DB관련 오류발생시 실행되는 catch문
			System.out.println("메세지삭제 spl문 오류!");
			e.printStackTrace();
		} finally {
			// 무조건 실행하는 구문(try catch문은 예외처리 구문)
			// 데이터베이스 종료기능 구현
			close();
		} // end
		return cnt;
		
	}
	
	public InfoDTO getDetail(int info_no) {
		
		InfoDTO Info = null;

		try {
			// DB연결
			connection();

			// 쿼리 실행
			String sql = "select * from information where info_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, info_no);
			
			// ★★★★★
			// insert, update, delete: executeUpdate() --> DB에 내용을 변경할 때
			// select: executeQuery() --> DB에 내용을 검색할 때
			rs = psmt.executeQuery();
			
			while(rs.next()) { // 컬럼명과 데이터 사이에 커서 초기 위치, rs.next()에 따라 커서가 데이터를 가리키며 내려간다. 값이 있을(True) 때까지 반복
				Info = new InfoDTO();
				Info.setInfo_no(info_no);
				Info.setInfo_title(rs.getString(2));
				Info.setInfo_content(rs.getString(3));
				Info.setInfo_date(rs.getString(4));
//				int info_no1 = rs.getInt(1);
//				String info_title = rs.getString(2);
//				String info_content = rs.getString(3);
//				String info_date = rs.getString(4);

				//post = new InfoDTO(info_no1, info_title, info_content, info_date);
			}

		} catch (SQLException e) {
			// DB관련 오류발생시 실행되는 catch문
			System.out.println("getDetail spl문 오류!");
			e.printStackTrace();
		} finally {
			// 무조건 실행하는 구문(try catch문은 예외처리 구문)
			// 데이터베이스 종료기능 구현
			close();
		} // end
		return Info;
		
	}
	
	public int countPost() {
		
		int cnt = 0;

		try {
			// DB연결
			connection();

			// 쿼리 실행
			String sql = "select count(info_id) from information";
			psmt = conn.prepareStatement(sql);
			
			// ★★★★★
			// insert, update, delete: executeUpdate() --> DB에 내용을 변경할 때
			// select: executeQuery() --> DB에 내용을 검색할 때
			rs = psmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int colCount = rsmd.getColumnCount();
		

		} catch (SQLException e) {
			// DB관련 오류발생시 실행되는 catch문
			System.out.println("countPost spl문 오류!");
			e.printStackTrace();
		} finally {
			// 무조건 실행하는 구문(try catch문은 예외처리 구문)
			// 데이터베이스 종료기능 구현
			close();
		} // end
		return cnt;
		
	}
	
	
	
}
