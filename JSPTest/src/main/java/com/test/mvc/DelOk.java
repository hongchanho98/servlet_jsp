package com.test.mvc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.jsp.jdbc.DBUtil;

public class DelOk extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String seq = req.getParameter("seq");

		Connection conn = null;
		PreparedStatement stat = null;
		int result = -1;

		try {

			String sql = "delete from tblAddress where seq=?";

			conn = DBUtil.open();
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, seq);
			
			result = stat.executeUpdate();
			
			

		} catch (Exception e) {
			e.getStackTrace();
		}
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/address/delok.jsp");
		dispatcher.forward(req,resp);
		
	
	}

}
