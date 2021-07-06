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
		// DB에 한글 안깨지고 저장
		request.setCharacterEncoding("euc-kr");
		
		// 파라미터 받아오기
		String member_id = request.getParameter("member_id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		
		T_MemberDAO dao = new T_MemberDAO();
		T_MemberDTO member = new T_MemberDTO(member_id, pw, name, tel, email);
		int cnt = dao.join_member(member);
		
		if (cnt > 0) {// select한 데이터가 있다면
			// request 영역에 email 정보를 저장
			request.setAttribute("memeber_id", member_id);
			// forward 방식
			System.out.println("회원가입 성공!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Service.jsp");
			dispatcher.forward(request, response);
			// response.sendRedirect("join_success.jsp");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("Join.jsp");
		}
	}

}
