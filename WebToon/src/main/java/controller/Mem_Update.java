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

@WebServlet("/Mem_Update")
public class Mem_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("euc-kr");
		
		// ���ǿ� ����Ǿ� �ִ� MemberDTO��ü�� ���� -> �̸��� ����
		HttpSession session = request.getSession();
		T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");
		
		// update.jsp���� �Է��� �н����� , ��ȣ ,�ּҸ� �������ÿ�.
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String pw_confirm = request.getParameter("pw_confirm");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String webtoon_link = request.getParameter("webtoon_link");
		
		System.out.println(session.getAttribute("member"));
		System.out.println(name);
		System.out.println(pw + "\n" + tel + "\n" + email + "\n" + webtoon_link);
		
		T_MemberDTO member2 = new T_MemberDTO(session.getId(),name,pw,tel,email,webtoon_link);
		T_MemberDAO dao = new T_MemberDAO();
		int cnt = 0;
//		if(pw.equals(pw_confirm)) {
//			cnt = dao.update(member2);
//		}
		
		if(cnt > 0 ) {
			session.setAttribute("member", member2);
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("Mem_Update.jsp");
		}
	}
	}

