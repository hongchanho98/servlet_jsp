package com.test.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.jsp.jdbc.DBUtil;

@WebServlet("/addok2.do")
public class AddOk2 extends HttpServlet {

	@Override //Annotation, 프로그래밍 기능이 있는 주석 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			
		//할 일
		//1. 인코딩하기
		//2. 입력데이터 받아오기
		//3. DB에 insert하기
		//4. JSP 호출하기 + 결과 출력
		
		
		//1. 인코딩하기
		
		req.setCharacterEncoding("UTF-8");
		
		
		
		//2. 입력데이터 받아오기
		
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		
		
		//3. DB처리하기 + insert
		
		Connection conn = null;
		PreparedStatement stat = null;
		int result = -1;
		
		
		try {
			
			//String sql = String.format("insert into tblAddress(seq, name, age, gender, address) values (seqAddress.nextVal, ?,?,?,?)", name, age, gender , address); 
					
				
			String sql ="insert into tblAddress(seq, name, age, gender, address)"
					+ "values (seqAddress.nextVal, ?, ?, ?, ?)";
			
			
			conn = DBUtil.open();
			stat = conn.prepareStatement(sql);
		
			stat.setString(1, name);
			stat.setString(2, age);
			stat.setString(3, gender);
			stat.setString(4, address);
			
			//반환값이 없기 때문에
			result = stat.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		//4. JSP호출하기 + 출력
		req.setAttribute("result", result);
		System.out.println(result);
		

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/address2/addok2.jsp");
		dispatcher.forward(req, resp);

	}

}