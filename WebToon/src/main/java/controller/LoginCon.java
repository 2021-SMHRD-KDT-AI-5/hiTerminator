package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https:*///github.com/2021-SMHRD-KDT-AI-5/hiTerminator.git
import model.T_MemberDAO;
import model.T_MemberDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String pw = request.getParameter("pw");
		
		T_MemberDAO dao = new T_MemberDAO();
		T_MemberDTO member = dao.login_member(member_id, pw);

		if(member != null){ 
				
				HttpSession session = request.getSession();
				session.setAttribute("member", member);
				
				System.out.println("로그인 성공!");
				
				response.sendRedirect("Main.jsp");


				
				
			}else {

				System.out.println("로그인 실패...");
				response.getWriter().write("0");

				response.sendRedirect("Login.jsp");


			}
	
	}

}
