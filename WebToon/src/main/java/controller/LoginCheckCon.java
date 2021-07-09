package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.T_MemberDAO;


@WebServlet("/LoginCheckCon")
public class LoginCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String pw = request.getParameter("pw");
		
		T_MemberDAO dao = new T_MemberDAO();
		boolean login_check = dao.Login_check(member_id,pw);
		
		PrintWriter out = response.getWriter();
		out.print(login_check);
		
		
	}

}
