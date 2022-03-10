package kr.co.ict.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;

/**
 * Servlet implementation class InsertBoardServler
 */
@WebServlet("/insertBoard")
public class InsertBoardServler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoardServler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardDAO dao = BoardDAO .getInstance();
		
		request.setCharacterEncoding("utf-8");
		String title  =   request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		
		dao.insertBoard(title, content, writer);
		
		response.sendRedirect("http://localhost:8181/MyFistWep2/BoardList");
	
		
	
		
	}

}
