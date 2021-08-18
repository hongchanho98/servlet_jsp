package com.test.myapp.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/delcomment.do") // web.xml을 작성 안해도됨
public class DelComment extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 할일
		// 1. 데이터 가져오기(seq,pseq)
		// 2. DB 작업 > DAO 위임 > delete
		// 3. 결과 처리
		CheckMember cm = new CheckMember();
		cm.check(req, resp);

		// 1.
		String pseq = req.getParameter("pseq");// 보고 있던 글번호
		String seq = req.getParameter("seq"); // 댓글 번호

		// 2.
		BoardDAO dao = new BoardDAO();

		int result = dao.delComment(seq);// 1 or 0

		// 3.
		if (result == 1) {
			resp.sendRedirect("/myapp/board/view.do?seq=" + pseq);
		} else {

			resp.setCharacterEncoding("UTF-8");

			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('댓글 삭제 실패');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
		}

	}

}