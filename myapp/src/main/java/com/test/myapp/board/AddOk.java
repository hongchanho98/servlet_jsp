package com.test.myapp.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/addok.do") // web.xml을 작성 안해도됨
public class AddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		//req.setCharacterEncoding("UTF-8"); encoding 필터를 따로 만들어서 안해도됨
		
		//할일
		//1. 데이터 가져오기
		//2. DB 작업 DAO 위임 > insert
		//3. 결과 > 후처리
		CheckMember cm = new CheckMember();
		cm.check(req,resp);
		
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		String tag = req.getParameter("tag");
		
		
		//2.
		BoardDAO dao = new BoardDAO();
		
		BoardDTO dto = new BoardDTO();
		
		HttpSession session = req.getSession();
		
		dto.setId(session.getAttribute("id").toString());
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setTag(tag);
		
		//새 글쓰기 vs 답변글쓰기
		String reply = req.getParameter("reply"); //1 or 0
		int thread = -1;
		int depth = -1;
		int parentThread= -1;
		int parentDepth = -1;
		
		if(reply.equals("0")) {
			//새글쓰기
			//a. 현존 모든 게시물 중에서 가장 큰 thread 값을 찾는다. > 그 찾은 thread값에 + 1000 한 값을 현재 새글의 thread값으로 사용한다
			// 새글의 depth는 0을 넣는다.
			thread = dao.getMaxThread();
			depth=0;
			
		}else {
			//답변글쓰기
			parentThread = Integer.parseInt(req.getParameter("thread"));
			parentDepth = Integer.parseInt(req.getParameter("depth"));
			
			int previousThread = (int)Math.floor((parentThread - 1) / 1000) * 1000;
			
			dao.updateThread(parentThread,previousThread);
			
			thread = parentThread-1;
			depth = parentDepth+1;
			
		}
		
		
		dto.setThread(thread);
		dto.setDepth(depth);
		
		
		
		int result = dao.add(dto);
		
		//3
		if(result==1) {
			resp.sendRedirect("/myapp/board/list.do");
		}else {
			resp.sendRedirect("/myapp/board/add.do");
		}
		
		
		

	}

}