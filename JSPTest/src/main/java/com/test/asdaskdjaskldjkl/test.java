package com.test.asdaskdjaskldjkl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.test.jsp.jdbc.DBUtil;

public class test {
	
	
	
	public static void main(String[] args) {
		
		

		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			
			String sql = "select theaterInfo from testTheater";
			
			conn=DBUtil.open();
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				String guide = rs.getString("theaterInfo");
				//guide = guide.replace("\r\n","<br>");
				
				System.out.println(guide);
				System.out.println();
				
			}

			
			rs.close();
			stat.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}

}
