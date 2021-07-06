package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import model.T_MemberDAO;
import model.T_MemberDTO;

@WebServlet("/Mem_UpdateCon")
public class Mem_UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		// ���ǿ� ����Ǿ� �ִ� MemberDTO��ü�� ���� -> �̸��� ����
		HttpSession session = request.getSession();
		T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");
		
		// update.jsp���� �Է��� �н����� , ��ȣ ,�ּҸ� �������ÿ�.
		
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
//		String webtoon_link = request.getParameter("webtoon_link");
		
		
		T_MemberDTO member2 = new T_MemberDTO(session.getId(),name,pw,tel,email);
		T_MemberDAO dao = new T_MemberDAO();

		int cnt = dao.update_member(member2);
		
		
		if(cnt > 0 ) {
			// ����� session�� member2�� ����
			session.setAttribute("member", member2);
			response.sendRedirect("Login.jsp");
		}else {
			response.sendRedirect("Mem_Update.jsp");
		}
	}
	}

