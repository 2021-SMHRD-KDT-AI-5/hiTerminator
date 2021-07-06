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
		
		// �Ķ���� �޾ƿ���
		String member_id = request.getParameter("member_id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		
		T_MemberDAO dao = new T_MemberDAO();
		T_MemberDTO member = new T_MemberDTO(member_id, pw, name, tel, email);
		int cnt = dao.join_member(member);
		
		if (cnt > 0) {// select�� �����Ͱ� �ִٸ�
			// request ������ email ������ ����
			request.setAttribute("memeber_id", member_id);
			// forward ���
			System.out.println("ȸ������ ����!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Service.jsp");
			dispatcher.forward(request, response);
			// response.sendRedirect("join_success.jsp");
		} else {
			System.out.println("ȸ������ ����");
			response.sendRedirect("Join.jsp");
		}
	}

}
