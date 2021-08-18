package com.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. 서블릿 클래스 선언
//a. javax.servlet.Servlet 인터페이스를 구현한다.(복잡함) -> 잘 사용 안함
//a. javax.servlet.http.HttpServlet 클래스를 상속한다.(간편함) -> 주로 사용함
public class Ex01 extends HttpServlet{


	/*
	 * 2. doGet/doPost 메소드 선언 - 반드시 둘 중 하나 or 둘 다 선언 해야함
	 * 
	 * - 둘 중 하나라도 없으면 서블릿이 아니다.
	 * 
	 * - 클라이언트(브라우저)의 요청이 들어오면, 서버측에서 자동으로 이 메소드가 실행된다. (일종의 이벤트 메소드 or 콜백 메소드) -
	 * 동적으로 HTML 페이지를 생성하는 역할의 메소드(**********) - 메소드 작성 규칙 반드시 a. 매개변수 작성(2개) 1.
	 * javax.servlet.http.HttpServletRequest 2.
	 * javax.servlet.http.HttpServletResponse
	 * 
	 * b. 예외 미루기(2개 1. java.io.IOException: 페이지를 동적으로 만드는 작업(외부 입출력 발생) 2.
	 * javax.servlet.ServletException: 서블릿과 관련 예외 처리
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
//		3. 동적 HTML 문서 작성 구현
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<body>");
		writer.println("<h1>Number</h1>");
		Random rnd = new Random();
		writer.println("<div>num: "+rnd.nextInt(100)+"</div>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();//**************
		
		
	}

}


