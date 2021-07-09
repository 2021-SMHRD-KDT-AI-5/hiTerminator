package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.InfoDAO;

@WebServlet("/InfoDeleteCon")
public class InfoDeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] valueArr = request.getParameterValues("valueArr");
		int size = valueArr.length;
		PrintWriter out = response.getWriter();
		InfoDAO dao= new InfoDAO();
		int sum = 0;
		for(int i=0; i<size; i++) {
			int delete_num = dao.deletePost(valueArr[i]);
			sum+=delete_num;
			System.out.println(valueArr[i]);
		}
		out.print(sum);
		
	}
}
