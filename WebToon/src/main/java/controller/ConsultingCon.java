package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Consulting_messageDAO;
import model.Consulting_messageDTO;

@WebServlet("/ConsultingCon")
public class ConsultingCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("euc-kr");
		
		String member_id = request.getParameter("member_id");
		String title = request.getParameter("title");
		String consult_content = request.getParameter("consult_content");
		
		Consulting_messageDTO dto = new Consulting_messageDTO(member_id, title, consult_content);
		
		Consulting_messageDAO dao = new Consulting_messageDAO();
		int cnt = dao.insertMessage(dto);
		
		if(cnt > 0) {
			System.out.println("메세지 전송 성공");
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("메세지 전송 실패");
			response.sendRedirect("main.jsp");
		}
		
	}

}
