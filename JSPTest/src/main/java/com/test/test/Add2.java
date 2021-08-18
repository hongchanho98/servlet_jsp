package com.test.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add2.do")
public class Add2 extends HttpServlet {

	@Override // Annotation, 프로그래밍 기능이 있는 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//이 서블릿 페이지에서는 할 일이 없다.
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/address2/add2.jsp");
		dispatcher.forward(req, resp);

	}

}