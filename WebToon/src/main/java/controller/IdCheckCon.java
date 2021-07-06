package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.T_MemberDAO;

@WebServlet("/IdCheckCon")
public class IdCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// data{"email",input.value} 의 key값 가져오기
	      String member_id = request.getParameter("member_id");
	      
	      // web_member table에 있는지
	      T_MemberDAO dao = new T_MemberDAO();
	      // dao의 idcheck 메소드 가져오기 -> boolean 형태로 반환됨
	      boolean check = dao.IdCheck(member_id);
	      
	      // printwriter는 text를 보내줄때 사용 : check값(True, false)을 text로 보냄
	      PrintWriter out = response.getWriter();
	      out.print(check);
	            
	   }
	}

}
