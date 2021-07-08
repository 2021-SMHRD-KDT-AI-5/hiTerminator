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
			System.out.println("ojdbc6.jar���� �Ǵ� driver ��� Ȯ��!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB���� ����..");
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
			// connection �޼ҵ� ȣ�� -> DB����
			connection();

			// ���� ����
			String sql = "insert into donate values(?, ?, ?, sysdate, ?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, donate.getMember_id()); //�Ŀ��ϴ� ��� ���̵�
			psmt.setString(2, donate.getArtist_id()); // �Ŀ��޴� �۰� ���̵� �;���
			psmt.setInt(3, donate.getMoney());
			psmt.setString(5, donate.getDonate_content());
			
			
			// insert, update, delete : executeUpdate() --> DB���� ����
			// select : executeQuery() --> DB���� �˻�
			cnt = psmt.executeUpdate(); // cnt ��ü�� ��ȯ�� �� �ְ� �����

		}

		catch (SQLException e) {
			System.out.println("sql�� ����");
			// sendRedirect, �� �� �����
			e.printStackTrace();

		} finally {

			// �޼ҵ� ȣ��
			close();

		} // end

		// cnt�� ��ȯ, ���� ù ��° ���� > void ����
		return cnt;
	}
	
	
	//
}
