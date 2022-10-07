package edu.kosta.board.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kosta.board.controller.BoardDAO;
import edu.kosta.board.model.BoardVO;

public class UpdateFormAction extends HttpServlet {
	
	protected String process(HttpServletRequest request, 
			HttpServletResponse resp) throws ServletException, IOException {
		

		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");

		BoardDAO dao = BoardDAO.getInstance();
		BoardVO vo = dao.update(num);
		
		request.setAttribute("pageNum", Integer.parseInt(pageNum));
		request.setAttribute("vo", vo);
		
		return "/board/updateForm.jsp";
	}

	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}
	
}
