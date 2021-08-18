package com.test.myapp.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/view.do") // web.xml을 작성 안해도됨
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		//할일
		//1. 데이터 가져오기(seq)
		//2. DB 작업 > DAO 위임 > select where seq
		//3. BoardDTO 반환 > JSP 호출
		
		//1
		String seq = req.getParameter("seq");
		
		String column=req.getParameter("column");
		String search=req.getParameter("search");
		
		//2.
		BoardDAO dao = new BoardDAO();
		
		//2.3 조회수 증가하기
		if(session.getAttribute("read")!=null && session.getAttribute("read").toString().equals("n")) {
		dao.updateReadcount(seq);
		session.setAttribute("read", "y");
		}
		
		BoardDTO dto = dao.get(seq);
		
		String content = dto.getContent();
		String subject = dto.getSubject();
		
		//무조건 글 제목과 내용에 들어있는 <script>태그는 비활성화
		subject = subject.replace("<script", "&lt;script").replace("</script>","&lt;script&gt;");
		content = content.replace("<script", "&lt;script").replace("</script>","&lt;script&gt;");
		
		//글 내용에 태그 적용 안되게 하기
		if(dto.getTag().equals("n")) {
			content=content.replace("<","&lt;").replace(">", "&gt");
			dto.setContent(content);
		}
		
		//2.5
		//글 내용에 개행  문자 처리하기
		content = content.replace("\r\n", "<br>");
		dto.setContent(content);
		System.out.println(content);
		
		
		//내용으로 검색중일때 부각시키기
		if(subject != null && search != null && column.equals("content")) {
			content = content.replace(search,"<span style='color:tomato; background-color:yellow;'>"+search+"</span>");
			dto.setContent(content);
		}
		
		
		
		//2.7
		// - 댓글 목록 가져오기
		ArrayList<CommentDTO> clist =dao.listComment(seq);
		
		
		
		//3. 
		req.setAttribute("dto", dto);
		req.setAttribute("column", column);
		req.setAttribute("search", search);
		req.setAttribute("clist", clist);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/view.jsp");
		dispatcher.forward(req, resp);
	}

}