 package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ser_MessageDAO;
import model.Ser_MessageDTO;
import model.T_MemberDTO;

@WebServlet("/MessageCon")
public class Ser_MessageCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// post ������� ���� ������ ���ڵ�(�ѱ۵�����)
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		//���ǿ��� ���� id�� �� �־ �̸��ϵ� �ʿ��ϸ� ���� id�� ����ؼ� email�� ������ ���� �޼��� �ϳ��� ����� �ּž� �Ұ� ���ƿ�
		T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");
		//���⿡�� ������ null�� �����

		String q_ctgr = request.getParameter("inputquestion");
		String q_title = request.getParameter("inputsubject");
		String q_content = request.getParameter("q_content");
		
		System.out.println(q_ctgr);
		System.out.println(q_title);
		System.out.println(q_content);
		

		Ser_MessageDTO dto = new Ser_MessageDTO(member.getMember_id(), member.getEmail(), q_ctgr, q_title, q_content);
		
		Ser_MessageDAO dao = new Ser_MessageDAO();
		int cnt = dao.Ser_insertMesasge(dto);
		
		if(cnt>0) {
			System.out.println("�޽��� ���� ����");
			response.sendRedirect("Service_Fin.jsp");
		}else {
			System.out.println("�޽��� ���� ����");
			response.sendRedirect("Service.jsp");
		}
	}

}