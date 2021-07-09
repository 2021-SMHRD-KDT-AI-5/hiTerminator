package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.InfoDAO;
import model.InfoDTO;
import model.T_MemberDTO;

@WebServlet("/InfoUpdateCon")
public class InfoUpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");
		
		String info_title = request.getParameter("inputSubject");
		String info_content = request.getParameter("inputContent");
		
		System.out.println(info_title);
		System.out.println(info_content);
	
		InfoDTO dto = new InfoDTO(info_title, info_content);
		InfoDAO dao = new InfoDAO();
		int cnt = dao.insertPost(dto);
		
		if(cnt>0) {
			System.out.println("공지사항 작성 완료!");
			response.sendRedirect("Info.jsp");
		}else {
			System.out.println("공지사항 작성 실패...");
			response.sendRedirect("Info.jsp");
		}
		
		
	}

}
