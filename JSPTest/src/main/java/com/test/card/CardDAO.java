package com.test.card;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jsp.jdbc.DBUtil;

public class CardDAO {
	
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public CardDAO() {
		try {
			conn = DBUtil.open();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}

	public int add(CardDTO dto) {
		
		try {
			
			String sql = "insert into tblCard(seq,korname,engname,tel,email,company,position) values\r\n"
					+ "(seqCard.nextVal,?,?,?,?,?,?)";
			
			pstat= conn.prepareStatement(sql);
			pstat.setString(1, dto.getKorname());
			pstat.setString(2, dto.getEngname());
			pstat.setString(3, dto.getTel());
			pstat.setString(4, dto.getEmail());
			pstat.setString(5, dto.getCompany());
			pstat.setString(6, dto.getPosition());
			
			return pstat.executeUpdate(); // 성공(1) 실패(0)
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return 0;
	}

	public ArrayList<CardDTO> list() {
		
		try {
			
			String sql ="select * from tblCard order by korname asc";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<CardDTO> list = new ArrayList<CardDTO>();
			
			while(rs.next()) {
				
				CardDTO dto = new CardDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setKorname(rs.getString("korname"));
				dto.setEngname(rs.getString("engname"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setCompany(rs.getString("company"));
				dto.setPosition(rs.getString("position"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			
		}
		 
		
		
		return null;
	}
	
}
