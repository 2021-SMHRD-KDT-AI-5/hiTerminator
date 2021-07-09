package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/InfoSearchCon")
public class InfoSearchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		String searchWord = null;
		
		if(request.getParameter("searchWord")!=null) {
			searchWord = (String)request.getParameter("searchWord");
			System.out.println(searchWord);
		}if(session.getAttribute("searchWord")!=null){
			searchWord = (String)session.getAttribute("searchWord");
			System.out.println(searchWord);
		} else {
			System.out.println("InfoSearchCon¹®Á¦");
		}
	}

}
