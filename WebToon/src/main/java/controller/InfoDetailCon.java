package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.InfoDAO;
import model.InfoDTO;

@WebServlet("/InfoDetailCon")
public class InfoDetailCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		InfoDTO dto = new InfoDTO();
		
		String num = request.getParameter("num");
		int infoNum = Integer.parseInt(num);
		
		System.out.println(num);
		
//		String pageNum = request.getParameter("pageNum");
		
		InfoDAO dao = InfoDAO.getInstance();
		InfoDTO info = dao.getDetail(infoNum);
		
		System.out.println(info);
		
		HttpSession session = request.getSession();
		session.setAttribute("info", info);
		response.sendRedirect("Info_1.jsp");
		
//		request.setAttribute("info", info);
//		request.setAttribute("pageNum", pageNum);
	}

}
