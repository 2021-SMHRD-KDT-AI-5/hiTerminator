package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Consulting_messageDAO;
import model.Consulting_messageDTO;

@WebServlet("/ConsultingCon")
public class ConsultingCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String title = request.getParameter("title");
		String consult_content = request.getParameter("consult_content");
		
		System.out.println(member_id);
		System.out.println(title);
		System.out.println(consult_content);
		
		Consulting_messageDTO dto = new Consulting_messageDTO(member_id, title, consult_content);
		
		Consulting_messageDAO dao = new Consulting_messageDAO();
		int cnt = dao.insertMessage(dto);
		
		if(cnt > 0) {
			System.out.println("�޼��� ���� ����");
			response.sendRedirect("Consulting_1.jsp");
		}else {
//			�۰� id�� �ƴ϶� ������ ��� �Ѿ�� ������
			System.out.println("�޼��� ���� ����");
			response.sendRedirect("Join.jsp");
		}
		
	}

}
