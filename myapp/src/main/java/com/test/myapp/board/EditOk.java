package com.test.myapp.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/editok.do") // web.xml을 작성 안해도됨
public class EditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//할일
		//1. 데이터가져오기
		//2. DB 작업 > DAO 위임> update
		//3. 결과 처리
		CheckMember cm = new CheckMember();
		cm.check(req,resp);
		
		String seq = req.getParameter("seq");
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		String tag = req.getParameter("tag");
		
		//2.
		BoardDAO dao = new BoardDAO();
		
		BoardDTO dto = new BoardDTO();
		

		dto.setSeq(seq);
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setTag(tag);
		
		int result = dao.edit(dto);
		
		//3
		if(result==1) {
			resp.sendRedirect("/myapp/board/view.do?seq="+seq);
		}else {
			resp.sendRedirect("/myapp/board/edit.do?seq="+seq);
		}
		

	}

}