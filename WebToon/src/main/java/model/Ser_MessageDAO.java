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
	
public ArrayList<Ser_MessageDTO> showMessage() {
		
		ArrayList<Ser_MessageDTO>list=new ArrayList<Ser_MessageDTO>(); // �ܼ� ���������� �ƴ� ��ü ����
		Ser_MessageDTO message = null; // �������� �� �ʱ�ȭ
		
		try {
			// DB������
			connection();

			// ��������  ����ٽ� �غ�����!
			String sql = "select * from CUSTOMER_SERVICE order by inquiry_id desc";

			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();

			while(rs.next()) { // �÷���� ������ ���̿� Ŀ�� �ʱ� ��ġ, rs.next()�� ���� Ŀ���� �����͸� ����Ű�� ��������. ���� ����(True) ������ �ݺ�
				int service_no = rs.getInt(1);
				String member_id = rs.getString(2);
				String email = rs.getString(3);
				String q_ctgr = rs.getString(4);
				String q_title = rs.getString(5);
				String q_content = rs.getString(6);
				String date = rs.getString(7);

				message = new Ser_MessageDTO(service_no, member_id, email, q_ctgr, q_title, q_content, date);
				list.add(message);
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
