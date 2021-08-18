package com.test.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.jsp.jdbc.DBUtil;

@WebServlet("/list2.do")
public class List2 extends HttpServlet {

	@Override //Annotation, 프로그래밍 기능이 있는 주석 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//할 일
		//2. DB -> select
		//3. Reseultset 도출 
		//4. 루프 대신 돌려주기 + JSP호출하면서 전달해주기
		
		
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
			
		
		try {
			
			conn = DBUtil.open();
			stat = conn.createStatement();
			
			String sql = "select * from tblAddress order by seq asc";
			
			rs = stat.executeQuery(sql);
		
			
			//데이터 읽어오기
			
			while(rs.next()) {
				
				//레코드 1줄 -> HashMap 1개
				HashMap<String, String> map = new HashMap<String,String>();
				
				
				
				map.put("seq", rs.getString("seq"));
				map.put("name", rs.getString("name"));
				map.put("age", rs.getString("age"));
				map.put("address", rs.getString("address"));
				
				list.add(map);
				
			}
			
			
			//list == rs이 되었음
			
			
			
			rs.close();
			stat.close();
			conn.close();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		//4. JSP에게 전달하기 위해서 ArrayList<HashMap>에 담기!
		
		req.setAttribute("list", list);
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/address2/list2.jsp");
		dispatcher.forward(req, resp);

	}

}