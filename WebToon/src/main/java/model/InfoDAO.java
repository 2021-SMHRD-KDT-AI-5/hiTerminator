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
	
	public int insertPost(InfoDTO post) {

		int cnt = 0;

		try {
			// connection �޼ҵ� ȣ�� -> DB����
			connection();

			// ���� ����
			String sql = "insert into information values(service_no.nextval, ?, ?, sysdate)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, post.getInfo_title());
			psmt.setString(2, post.getInfo_content());
			

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
	
public ArrayList<InfoDTO> showPost() {
		
		ArrayList<InfoDTO>list=new ArrayList<InfoDTO>(); // �ܼ� ���������� �ƴ� ��ü ����
		InfoDTO post = null; // �������� �� �ʱ�ȭ
		
		try {
			// DB������
			connection();

			// ��������  ����ٽ� �غ�����!
			String sql = "select * from information order by info_id desc";

			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();

			while(rs.next()) { // �÷���� ������ ���̿� Ŀ�� �ʱ� ��ġ, rs.next()�� ���� Ŀ���� �����͸� ����Ű�� ��������. ���� ����(True) ������ �ݺ�
				int info_no = rs.getInt(1);
				String info_title = rs.getString(2);
				String info_content = rs.getString(3);
				String info_date = rs.getString(4);

				post = new InfoDTO(info_no, info_title, info_content, info_date);
				list.add(post);
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
	
	public int deletePost(String info_no) {
		
		int cnt = 0;

		try {
			// DB����
			connection();

			// ���� ����
			String sql = "delete from information where info_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, info_no);
			
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
	
	public InfoDTO getDetail(int info_no) {
		
		InfoDTO Info = null;

		try {
			// DB����
			connection();

			// ���� ����
			String sql = "select * from information where info_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, info_no);
			
			// �ڡڡڡڡ�
			// insert, update, delete: executeUpdate() --> DB�� ������ ������ ��
			// select: executeQuery() --> DB�� ������ �˻��� ��
			rs = psmt.executeQuery();
			
			while(rs.next()) { // �÷���� ������ ���̿� Ŀ�� �ʱ� ��ġ, rs.next()�� ���� Ŀ���� �����͸� ����Ű�� ��������. ���� ����(True) ������ �ݺ�
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
			// DB���� �����߻��� ����Ǵ� catch��
			System.out.println("getDetail spl�� ����!");
			e.printStackTrace();
		} finally {
			// ������ �����ϴ� ����(try catch���� ����ó�� ����)
			// �����ͺ��̽� ������ ����
			close();
		} // end
		return Info;
		
	}
	
	public int countPost() {
		
		int cnt = 0;

		try {
			// DB����
			connection();

			// ���� ����
			String sql = "select count(info_id) from information";
			psmt = conn.prepareStatement(sql);
			
			// �ڡڡڡڡ�
			// insert, update, delete: executeUpdate() --> DB�� ������ ������ ��
			// select: executeQuery() --> DB�� ������ �˻��� ��
			rs = psmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int colCount = rsmd.getColumnCount();
		

		} catch (SQLException e) {
			// DB���� �����߻��� ����Ǵ� catch��
			System.out.println("countPost spl�� ����!");
			e.printStackTrace();
		} finally {
			// ������ �����ϴ� ����(try catch���� ����ó�� ����)
			// �����ͺ��̽� ������ ����
			close();
		} // end
		return cnt;
		
	}
	
	
	
}
