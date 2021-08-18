package com.test.myapp.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/delok.do") // web.xml을 작성 안해도됨
public class DelOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req,resp);
		
		String seq = req.getParameter("seq");
		
		//2.
		BoardDAO dao = new BoardDAO();
		
		HttpSession session = req.getSession();
		
		//2.5 현재 글에 달린 댓글부터 삭제하기(*****) 자식테이블 먼저 삭제하기!
		dao.delAllComment(seq);
		
		int result = dao.del(seq);
		
		//3
		if(result==1) {
			resp.sendRedirect("/myapp/board/list.do");
		}else {
			resp.sendRedirect("/myapp/board/del.do?seq="+seq);
		}
		

	}

}