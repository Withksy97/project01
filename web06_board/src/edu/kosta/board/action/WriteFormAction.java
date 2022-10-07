package edu.kosta.board.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteFormAction extends HttpServlet {
	
	protected String process(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// JSP 파일에 있던 자바 코드를 모두 이곳으로....
		int num=0, ref=1, re_step = 0, re_level = 0;

		try {
				if( request.getParameter("num") != null )  {  // 답변글인지 새글인지...., 이때 num은 content.jsp에서 넘어온다.
					num = Integer.parseInt(request.getParameter("num"));
					ref = Integer.parseInt(request.getParameter("ref"));
					re_step = Integer.parseInt(request.getParameter("re_step"));
					re_level = Integer.parseInt(request.getParameter("re_level"));
				} // if
		}catch(Exception e){ e.printStackTrace();  } 
		
		// view page로 데이터 전송(저장)
		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("re_step", re_step);
		request.setAttribute("re_level", re_level);
		
		return "/board/writeForm.jsp";
	}

	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	
}
