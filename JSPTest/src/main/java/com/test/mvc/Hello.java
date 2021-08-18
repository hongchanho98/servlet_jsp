package com.test.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

public class Hello extends HttpServlet {


		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		//PrintWriter
		// -> 클라이언트 작성
		// writer.print("<html>");
		
		// 자바 코드작성 -> 전문
		// -> JDBC 작성

		// JSP 호출하기
		// 1. Servlet -> Servlet
		// 2. Servlet -> JSP   == Servlet -> Servlet
		// 3. JSP -> JSP  == Servlet -> Servlet
		// 4. JSP -> Servlet  == Servlet -> Servlet
		
		// Servlet 업무의 산출물
		String msg="Hello JSP MVC"; // Oracle -> select 결과라고 생각하기 > 데이터를 어떻게 전송?
		req.setAttribute("msg", msg);
		
		
		//Servlet -> JSP 호출하기
		//resp.sendRedirect("/jsp/mvc/hello.jsp");
		//PageContext.forward("/mvc/hello.jsp");
		
		
		// "/" -> webapp
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/mvc/hello.jsp");
		//dispatcher.forward(req, resp); // /mvc/hello.jsp 페이지로 이동한다
		
		
		// **** JSP Model2에서..
		// - Servlet을 통해서 호출되는 JSP 페이지는 반드시 WEB-INF 이하에 저장된다.
		// - 애초부터 Servlet을 통하지 않은 JSP 페이지를 직접 접근하는 행동을 미연에 방치하기 위해서!!
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/hello.jsp");
		dispatcher.forward(req, resp);
		
		
		
	}
	
}
