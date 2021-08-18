package com.test.auth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/auth/member.do") // web.xml을 작성 안해도됨
public class Member extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 인증받지 못한 사용자를 쫒아내기
		HttpSession session = req.getSession();
		
		if(session.getAttribute("id") == null) {
			
			resp.sendRedirect("/jsp/auth/index.do");
			return;
			
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/auth/member.jsp");
		dispatcher.forward(req, resp);
	}

}