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

	public int Ser_insertMesasge(Ser_MessageDTO message) {

		int cnt = 0;

		try {
			// connection �޼ҵ� ȣ�� -> DB����
			connection();

			// ���� ����
			String sql = "insert into customer_service values(service_no.nextval, ?, ?, ?, ?, ?, sysdate)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, message.getMember_id()); // email -> getEmail�� ����(member ��ü�κ��� ������)
			psmt.setString(2, message.getEmail());
			psmt.setString(3, message.getQ_ctgr());
			psmt.setString(4, message.getQ_title());
			psmt.setString(5, message.getQ_content());

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
	
public ArrayList<Ser_MessageDTO> showMessage(int startRow, int endRow) {
		
		String sql = "select * from "
				+ "(select rownum rn, inquiry_id, member_id, email, inquiry_ctgr, inquiry_title, inquiry_content, inquiry_date from "
				+ "(select * from customer_service order by inquiry_id desc)) where rn between ? and ?";

	
		ArrayList<Ser_MessageDTO>list=null; // �ܼ� ���������� �ƴ� ��ü ����
		
		try {
			// DB������
			connection();

			// ��������  ����ٽ� �غ�����!
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, startRow);
			psmt.setInt(2, endRow);
			
			rs = psmt.executeQuery();
			if(rs.next()) {// �����ͺ��̽��� �����Ͱ� ������ ����
				list=new ArrayList<>();
				do { // �÷���� ������ ���̿� Ŀ�� �ʱ� ��ġ, rs.next()�� ���� Ŀ���� �����͸� ����Ű�� ��������. ���� ����(True) ������ �ݺ�
					
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
			System.out.println("��ȸ sql �� ����");
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
			// DB������
			connection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			if(rs.next()) {
				cnt=rs.getInt(1);	
			}

		} 
		catch (SQLException e) {
			System.out.println("���°� sql �� ����");
			e.printStackTrace();
		} finally {
			close();
		} // end

		return cnt;
	}
	
	public int deleteMessage(String q_no) {
	
	int cnt = 0;

	try {
		// DB����
		connection();

		// ���� ����
		String sql = "delete from customer_service where inquiry_id=?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, q_no);
		
		// �ڡڡڡڡ�
		// insert, update, delete: executeUpdate() --> DB�� ������ ������ ��
		// select: executeQuery() --> DB�� ������ �˻��� ��
		cnt = psmt.executeUpdate();

	} catch (SQLException e) {
		// DB���� �����߻��� ����Ǵ� catch��
		System.out.println("�޼������� spl�� ����!");
		e.printStackTrace();
	} finally {
		// ������ �����ϴ� ����(try catch���� ����ó�� ����)
		// �����ͺ��̽� ������ ����
		close();
	} // end
	return cnt;
	
	}
	
public Ser_MessageDTO getDetail(int q_no) {
		
		Ser_MessageDTO ser = null;

		try {
			// DB����
			connection();

			// ���� ����
			String sql = "select * from customer_service where inquiry_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, q_no);
			
			// �ڡڡڡڡ�
			// insert, update, delete: executeUpdate() --> DB�� ������ ������ ��
			// select: executeQuery() --> DB�� ������ �˻��� ��
			rs = psmt.executeQuery();
			
			while(rs.next()) { // �÷���� ������ ���̿� Ŀ�� �ʱ� ��ġ, rs.next()�� ���� Ŀ���� �����͸� ����Ű�� ��������. ���� ����(True) ������ �ݺ�
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
			// DB���� �����߻��� ����Ǵ� catch��
			System.out.println("getDetail spl�� ����!");
			e.printStackTrace();
		} finally {
			// ������ �����ϴ� ����(try catch���� ����ó�� ����)
			// �����ͺ��̽� ������ ����
			close();
		} // end
		return ser;
		
	}

}
