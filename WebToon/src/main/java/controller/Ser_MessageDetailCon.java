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

@WebServlet("/Ser_MessageDetailCon")
public class Ser_MessageDetailCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Ser_MessageDTO dto = new Ser_MessageDTO();
		
		String num = request.getParameter("num");
		int qNum = Integer.parseInt(num);
		
		System.out.println(num);
		
		Ser_MessageDAO dao = Ser_MessageDAO.getInstance();
		Ser_MessageDTO ser = dao.getDetail(qNum);
		
		System.out.println(ser);
		
		HttpSession session = request.getSession();
		session.setAttribute("ser", ser);
		response.sendRedirect("Service_1.jsp");
	}

}
