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
			psmt.setString(4, donate.getDonate_content());
			
			
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
	
public ArrayList<DonateDTO> showDonate() {
		
		ArrayList<DonateDTO>list=new ArrayList<DonateDTO>(); // �ܼ� ���������� �ƴ� ��ü ����
		DonateDTO donate = null; // �������� �� �ʱ�ȭ
		
		try {
			// DB������
			connection();

			// ��������  ����ٽ� �غ�����!
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
			System.out.println("donate show sql ����");
			e.printStackTrace();
		} finally {
			close();
		} // End

		return list;
	}
	
	
	//
}
