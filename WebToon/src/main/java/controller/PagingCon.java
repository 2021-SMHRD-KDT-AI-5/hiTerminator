package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.InfoDAO;

@WebServlet("/PagingCon")
public class PagingCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page = 1; // 시작 페이지
		
		InfoDAO dao = new InfoDAO();
		
		int itemsInAPage = 10; // 한 페이지에 출력할 게시물 수
		int totalCount = dao.countPost(); // 전체 게시물 수
		int totalPage = (int) Math.ceil(totalCount / (double) itemsInAPage); // 출력할 전체 페이지 수
		
		int pageCount = 10;
		int startPage = ((page-1)/pageCount)*pageCount+1;
		int endPage = startPage+pageCount-1;
		
		// 추가 조건 설정
		if(totalPage<page) {
			page=totalPage;
		}
		if(endPage>totalPage) {
			endPage=totalPage;
		}
		
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("page", page);
		
		request.setAttribute("pageCount",pageCount);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage",endPage);
		
	}

}
