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
		
		// POST 방식일 때 인코딩 설정!
				request.setCharacterEncoding("euc-kr");

				// 이메일, 비밀번호, 번호, 주소를 변수에 저장
				String member_id = request.getParameter("member_id");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String tel = request.getParameter("tel");
				String email = request.getParameter("email");
				
				
					// 회원가입 가지고 있는거 DAO
					T_MemberDAO dao = new T_MemberDAO();
					T_MemberDTO member = new T_MemberDTO(member_id, pw, name, tel, email);
					
					// join 매개변수 부르기 - memberDTO의 member 받아옴 > email, pw, tel, address
					int cnt = dao.join_member(member);
					
				
					if (cnt >0) { 
						// request 영역에 저장 
						request.setAttribute("member_id", member_id);
						
						// forward 방식 : 페이지 이동
						// 이동할 페이지의 경로 입력해주어야 함
						RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
						// request, response 두개의 정보를 가지고 이동
						dispatcher.forward(request, response);
						
					}
					else { 
						response.sendRedirect("Join.jsp");
						System.out.println("회원가입 실패");
					}

	}

}
