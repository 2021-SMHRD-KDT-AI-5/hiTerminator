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

			// localhost : Oracle DB�� ��ġ�� PC�� ip�ּ� ����
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String pass = "hr";

			conn = DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar���� �Ǵ� driver��� Ȯ��");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB������� �Ǵ� SQL�� ����");
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
		   	// ȸ������ �޼ҵ�

		      int cnt = 0;

		      try {
		         connection();
		         // ���� ����
		         String sql = "insert into book_member values(?,?,?,?,?)";

		         psmt = conn.prepareStatement(sql);

		         psmt.setString(1, member.getMember_id());
		         psmt.setString(2, member.getPw());
		         psmt.setString(3, member.getName());
		         psmt.setString(4, member.getTel());
		         psmt.setString(5, member.getEmail());

		         cnt = psmt.executeUpdate();

		      } catch (SQLException e) {
		         // SQL�� ���ÿ��� �߻��� ����Ǵ� Ĺġ-��
		         System.out.println("SQL�� ����");
		         e.printStackTrace();
		      } finally {
		         // ������ �����ϴ� ����
		         // �����ͺ��̽� ������ ����
		         close();
		      } // end
		      return cnt;

		   }

		   public T_MemberDTO login_member(String id, String pw) {
			   // �α��� �޼ҵ�

		      T_MemberDTO member = null;

		      try {
		         // DB������
		         connection();

		         // ���� ����
		         String sql = "select * from book_member where id=? and pw=?";

		         psmt = conn.prepareStatement(sql);

		         psmt.setString(1, id);
		         psmt.setString(2, pw);

		         // insert, update, delete : executeUpdate()
		         // select : executeQuery
		         rs = psmt.executeQuery();

		         // next(): ���� ������ �Ѿ�� ������ ���� ���� �Ǵ�(true/false)
		         if (rs.next()) {// select�� �����Ͱ� �ִٸ�
		            String getId = rs.getString(1);
		            String getNick = rs.getString(3);
		            String getEmail = rs.getString(4);
		            String getTel = rs.getString(5);

		            member = new T_MemberDTO(getId, null, getNick, getEmail, getTel);
		         }

		      } catch (SQLException e) {
		         System.out.println("sql�� ����");
		         e.printStackTrace();
		      } finally {
		         // ������ �����ϴ� ����
		         // �����ͺ��̽� ������ ����
		         close();
		      } // end
		      return member;
		   }
	

}
