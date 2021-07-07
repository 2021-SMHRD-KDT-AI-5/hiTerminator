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
			String url = "jdbc:oracle:thin:@172.30.1.37:1521:xe";
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
	
	   public int join_member(T_MemberDTO member) {
		   	// ȸ������ �޼ҵ�

		      int cnt = 0;

		      try {
		         connection();
		         // ���� ����
		         String sql = "insert into t_members values(?,?,?,?,?,null,null)";

		         psmt = conn.prepareStatement(sql);

		         psmt.setString(1, member.getMember_id());
		         psmt.setString(2, member.getPw());
		         psmt.setString(3, member.getName());
		         psmt.setString(4, member.getTel());
		         psmt.setString(5, member.getEmail());

		         cnt = psmt.executeUpdate();

		      } catch (SQLException e) {
		         // SQL�� ���ÿ��� �߻�
		         System.out.println("SQL�� ����");
		         e.printStackTrace();
		      } finally {
		         // �����ͺ��̽� ������ ����
		         close();
		      } 
		      return cnt;

		   }

		   public T_MemberDTO login_member(String member_id, String pw) {
			   // �α��� �޼ҵ�

		      T_MemberDTO member = null;

		      try {
		         // DB������
		         connection();

		         // ���� ����
		         String sql = "select * from t_members where member_id=? and pw=?";

		         psmt = conn.prepareStatement(sql);

		         psmt.setString(1, member_id);
		         psmt.setString(2, pw);

		         // insert, update, delete : executeUpdate()
		         // select : executeQuery
		         rs = psmt.executeQuery();

		         // next(): ���� ������ �Ѿ�� ������ ���� ���� �Ǵ�(true/false)
		         if (rs.next()) {// select�� �����Ͱ� �ִٸ�
		            String getMember_Id = rs.getString(1);
		            String getPw = rs.getString(2);
		            String getName = rs.getString(3);
		            String getTel = rs.getString(4);
		            String getEmail = rs.getString(5);

		            member = new T_MemberDTO(getMember_Id, getPw, getName, getTel, getEmail);
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
	
		   public int update_member(T_MemberDTO member) {
			      
			      int cnt = 0;
			      
			      //�����ͺ��̽� ����
			       try {
			          connection();
			         //���� ����
			          
//			         String sql = "update book_member set name=?,pw=?, tel=?, email=?,webtoon_link=? where member_id=?";
			         
			         String sql = "update t_members set name=?, pw=?, tel=?, email=?";
			         
			         psmt = conn.prepareStatement(sql);
			         psmt.setString(1, member.getName());
			         psmt.setString(2, member.getPw());
			         psmt.setString(3, member.getTel());   
			         psmt.setString(4, member.getEmail());  
//			         psmt.setString(5, member.getWebtoon_link());
			        
			         
			         cnt = psmt.executeUpdate();
			         
			      }catch (SQLException e) {
			         System.out.println("sql�� ������!!");
			         e.printStackTrace();
			      } finally {
			         close();
			      }
			       return cnt;
			   }
		   public boolean IdCheck(String member_id) { // id�� �ִ��� �������� �Ǵ� ->boolean
		          
		          boolean check = false;

		          try {
		             // connection �޼ҵ� �ҷ����� -> DB������
		             connection();

		             String sql = "select * from t_members where member_id = ?";

		             psmt = conn.prepareStatement(sql);
		             psmt.setString(1, member_id);

		             rs = psmt.executeQuery();

		             if (rs.next()) {
		                // ���̺� ���� -> ����� �� ���� ���̵�
		                check = true;
		             }else {
		                // ���� ���� -> ����� �� �ִ� ���̵�
		                check = false;
		             }

		          }
		    //   catch (ClassNotFoundException e) {
//		          e.printStackTrace();
		    //
		    //   } 
		          catch (SQLException e) {
		             System.out.println("sql����");
		             e.printStackTrace();

		          } finally {
		             close();

		          } // end

		          return check;
		       }
		  
}
