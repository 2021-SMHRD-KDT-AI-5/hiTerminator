package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ser_MessageDAO;

@WebServlet("/Ser_MessageDeleteCon")
public class Ser_MessageDeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] valueArr = request.getParameterValues("valueArr");
		int size = valueArr.length;
		
		Ser_MessageDAO dao= new Ser_MessageDAO();
		for(int i=0; i<size; i++) {
			dao.deleteMessage(valueArr[i]);
			System.out.println(valueArr[i]);
		}
		
//		int cnt = dao.deleteMessage(member_id);
		
//		if(cnt>0) {
//			System.out.println("메세지 삭제 성공!");
//			response.sendRedirect("Admin_Service.jsp");
//		}else {
//			System.out.println("메세지 삭제 실패!");
//			response.sendRedirect("Admin_Service.jsp");
//		}
		response.sendRedirect("/Admin_Service.jsp"); 
	}

}
