package com.test.myapp.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/del.do") // web.xml을 작성 안해도됨
public class Del extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//할일
		//1. 데이터 가져오기(seq)
		//2. JSP 호출하기 + 글번호 전달하기
		CheckMember cm = new CheckMember();
		cm.check(req,resp);
		
		String seq = req.getParameter("seq");
		
		req.setAttribute("seq", seq);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/del.jsp");
		dispatcher.forward(req, resp);
	}

}