package com.test.auth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/auth/logoutok.do") // web.xml을 작성 안해도됨
public class LogoutOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//할일
		//1. 인증 티켓 제거(= 로그 아웃)
		
		HttpSession session = req.getSession();
		
		
		
		//session.removeAttribute("id");// 인증 티켓 삭제 == 로그아웃
		//session.removeAttribute("name");
		//session.removeAttribute("lv");
		//session.removeAttribute("regdate");
		// - 데이터가 많으면 어떻게 해야하나?
		
		
		
		// 현재 세션을 유효하지 않게 만든다 > 즉 폐기 한다
		// 한방에 없앤다
		// *** 없애면 안되는 세션이 있을 수도 있기때문에 주의!!
		session.invalidate();
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/auth/logoutok.jsp");
		dispatcher.forward(req, resp);
	}

}