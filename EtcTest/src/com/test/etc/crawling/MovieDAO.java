package com.test.etc.crawling;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class MovieDAO {
	
	private Connection conn;
	private PreparedStatement pstat;
	
	
	public MovieDAO() {
		try {
			conn = DBUtil.open();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}


	public void add(MovieDTO dto) {
		
		try {
			
			String sql = "insert into tblMovie(seq,title,outline,time,rdate,director,actor,poster)"
					+ "values(seqMovie.nextVal,?,?,?,?,?,?,?)";
			
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getOutline());
			pstat.setString(3, dto.getTime());
			pstat.setString(4, dto.getRdate());
			pstat.setString(5, dto.getDirector());
			pstat.setString(6, dto.getActor());
			pstat.setString(7, dto.getPoster());
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		
	}
	
	
	
	
	
	
	
	

}
