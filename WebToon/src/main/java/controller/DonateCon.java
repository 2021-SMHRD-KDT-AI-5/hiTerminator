package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DonateDAO;
import model.DonateDTO;
import model.T_MemberDTO;


@WebServlet("/DonateCon")
public class DonateCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// post 방식으로 보낸 데이터 인코딩(한글데이터)
		request.setCharacterEncoding("utf-8");
		
		HttpServlet session = (HttpServlet) request.getSession();
		T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");
		
		String artist_id = request.getParameter("donee_id");
		int money = Integer.parseInt(request.getParameter("money"));
		String donate_content = request.getParameter("donate_content");

		
		System.out.println(artist_id);
		System.out.println(money);
		System.out.println(donate_content);
		
		DonateDTO donate = new DonateDTO(member.getMember_id(), artist_id, money, donate_content);
		DonateDAO dao = new DonateDAO();
		int cnt = dao.Donate_insert(donate);
		
		if (cnt >0) {
			System.out.println("후원 성공");
			response.sendRedirect("Webtoon_detail.jsp");
		}else {
			System.out.println("후원 실패");
			response.sendRedirect("webtoon_detail.jsp");
		}
		
	}

}
