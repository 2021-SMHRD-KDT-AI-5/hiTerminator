package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.T_MemberDAO;
import model.T_MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DB�� �ѱ� �ȱ����� ����
		request.setCharacterEncoding("euc-kr");
		
		// POST ����� �� ���ڵ� ����!
				request.setCharacterEncoding("euc-kr");

				// �̸���, ��й�ȣ, ��ȣ, �ּҸ� ������ ����
				String member_id = request.getParameter("member_id");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String tel = request.getParameter("tel");
				String email = request.getParameter("email");
				
				
					// ȸ������ ������ �ִ°� DAO
					T_MemberDAO dao = new T_MemberDAO();
					T_MemberDTO member = new T_MemberDTO(member_id, pw, name, tel, email);
					
					// join �Ű����� �θ��� - memberDTO�� member �޾ƿ� > email, pw, tel, address
					int cnt = dao.join_member(member);
					
				
					if (cnt >0) { 
						// request ������ ���� 
						request.setAttribute("member_id", member_id);
						
						// forward ��� : ������ �̵�
						// �̵��� �������� ��� �Է����־�� ��
						RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
						// request, response �ΰ��� ������ ������ �̵�
						dispatcher.forward(request, response);
						
					}
					else { 
						response.sendRedirect("Join.jsp");
						System.out.println("ȸ������ ����");
					}

	}

}
