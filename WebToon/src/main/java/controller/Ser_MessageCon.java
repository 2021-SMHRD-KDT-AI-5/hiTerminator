 package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ser_MessageDAO;
import model.Ser_MessageDTO;
import model.T_MemberDTO;

@WebServlet("/MessageCon")
public class Ser_MessageCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// post 방식으로 보낸 데이터 인코딩(한글데이터)
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		//세션에는 지금 id만 들어가 있어서 이메일도 필요하면 따로 id를 사용해서 email을 가지고 오는 메서드 하나더 만들어 주셔야 할거 같아요
		T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");
		//여기에서 무조건 null로 만들고

		String q_ctgr = request.getParameter("inputquestion");
		String q_title = request.getParameter("inputsubject");
		String q_content = request.getParameter("q_content");
		
		System.out.println(q_ctgr);
		System.out.println(q_title);
		System.out.println(q_content);
		

		Ser_MessageDTO dto = new Ser_MessageDTO(member.getMember_id(), member.getEmail(), q_ctgr, q_title, q_content);
		
		Ser_MessageDAO dao = new Ser_MessageDAO();
		int cnt = dao.Ser_insertMesasge(dto);
		
		if(cnt>0) {
			System.out.println("메시지 전송 성공");
			response.sendRedirect("Service_Fin.jsp");
		}else {
			System.out.println("메시지 전송 실패");
			response.sendRedirect("Service.jsp");
		}
	}

}