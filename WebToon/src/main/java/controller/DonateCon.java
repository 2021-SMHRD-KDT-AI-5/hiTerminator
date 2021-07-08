package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.T_MemberDTO;


@WebServlet("/DonateCon")
public class DonateCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// post 방식으로 보낸 데이터 인코딩(한글데이터)
		request.setCharacterEncoding("utf-8");
		
//		HttpServlet session = (HttpServlet) request.getSession();
//		T_MemberDTO member = (T_MemberDTO)session.getAttribute("member");
		
		String donee_id = request.getParameter("donee_id");
		int money = Integer.parseInt(request.getParameter("money"));
		String donate_content = request.getParameter("donate_content");
		
		System.out.println(donee_id);
		System.out.println(money);
		System.out.println(donate_content);
		
		
		
	}

}
