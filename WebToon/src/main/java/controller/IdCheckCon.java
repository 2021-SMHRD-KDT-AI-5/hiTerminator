package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.T_MemberDAO;

@WebServlet("/IdCheckCon")
public class IdCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// data{"email",input.value} �� key�� ��������
	      String member_id = request.getParameter("member_id");
	      
	      // web_member table�� �ִ���
	      T_MemberDAO dao = new T_MemberDAO();
	      // dao�� idcheck �޼ҵ� �������� -> boolean ���·� ��ȯ��
	      boolean check = dao.IdCheck(member_id);
	      
	      // printwriter�� text�� �����ٶ� ��� : check��(True, false)�� text�� ����
	      PrintWriter out = response.getWriter();
	      out.print(check);
	            
	   }
	}

}
