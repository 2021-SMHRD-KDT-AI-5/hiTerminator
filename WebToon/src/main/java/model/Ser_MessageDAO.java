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
	
	public static Ser_MessageDAO instance;
	public Ser_MessageDAO() {}
	public static Ser_MessageDAO getInstance() {
		if(instance==null)
			instance=new Ser_MessageDAO();
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

	public int Ser_insertMesasge(Ser_MessageDTO message) {

		int cnt = 0;

		try {
			// connection 메소드 호출 -> DB연결
			connection();

			// 쿼리 실행
			String sql = "insert into customer_service values(service_no.nextval, ?, ?, ?, ?, ?, sysdate)";

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
	
public ArrayList<Ser_MessageDTO> showMessage(int startRow, int endRow) {
		
		String sql = "select * from "
				+ "(select rownum rn, inquiry_id, member_id, email, inquiry_ctgr, inquiry_title, inquiry_content, inquiry_date from "
				+ "(select * from customer_service order by inquiry_id desc)) where rn between ? and ?";

	
		ArrayList<Ser_MessageDTO>list=null; // 단순 변수선언이 아닌 객체 생성
		
		try {
			// DB연결기능
			connection();

			// 쿼리실행  실행다시 해보세요!
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, startRow);
			psmt.setInt(2, endRow);
			
			rs = psmt.executeQuery();
			if(rs.next()) {// 데이터베이스에 데이터가 있으면 실행
				list=new ArrayList<>();
				do { // 컬럼명과 데이터 사이에 커서 초기 위치, rs.next()에 따라 커서가 데이터를 가리키며 내려간다. 값이 있을(True) 때까지 반복
					
					Ser_MessageDTO message = new Ser_MessageDTO();
					message.setQ_no(rs.getInt("inquiry_id"));
					message.setMember_id(rs.getString("member_id"));
					message.setEmail(rs.getString("email"));
					message.setQ_ctgr(rs.getString("inquiry_ctgr"));
					message.setQ_title(rs.getString("inquiry_title"));
					message.setQ_content(rs.getString("inquiry_content"));
					message.setQ_date(rs.getString("inquiry_date"));
					list.add(message);
				}while(rs.next());
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

	public int getCount() {
		int cnt=0;
		String sql="select count(*) from customer_service";
		
		try {
			// DB연결기능
			connection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			if(rs.next()) {
				cnt=rs.getInt(1);	
			}

		} 
		catch (SQLException e) {
			System.out.println("세는거 sql 문 오류");
			e.printStackTrace();
		} finally {
			close();
		} // end

		return cnt;
	}
	
	public int deleteMessage(String q_no) {
	
	int cnt = 0;

	try {
		// DB연결
		connection();

		// 쿼리 실행
		String sql = "delete from customer_service where inquiry_id=?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, q_no);
		
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
	
public Ser_MessageDTO getDetail(int q_no) {
		
		Ser_MessageDTO ser = null;

		try {
			// DB연결
			connection();

			// 쿼리 실행
			String sql = "select * from customer_service where inquiry_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, q_no);
			
			// ★★★★★
			// insert, update, delete: executeUpdate() --> DB에 내용을 변경할 때
			// select: executeQuery() --> DB에 내용을 검색할 때
			rs = psmt.executeQuery();
			
			while(rs.next()) { // 컬럼명과 데이터 사이에 커서 초기 위치, rs.next()에 따라 커서가 데이터를 가리키며 내려간다. 값이 있을(True) 때까지 반복
				ser = new Ser_MessageDTO();
				ser.setQ_no(q_no);
				ser.setMember_id(rs.getString(2));
				ser.setEmail(rs.getString(3));
				ser.setQ_ctgr(rs.getString(4));
				ser.setQ_title(rs.getString(5));
				ser.setQ_content(rs.getString(6));
				ser.setQ_date(rs.getString(7));
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
		return ser;
		
	}

}
