package com.test.myapp.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import com.test.myapp.DBUtil;

public class Dummy {
	
	public static void main(String[] args) {
		
		String[] id = {"hong","test","admin"};
		String[] subject = {"게시판 테스트입니다",
							"JSP/Servlet 게시판 만드는 중 입니다",
							"페이징 구현을 위한 데이터 작업중",
							"오늘은 수요일 입니다.",
							"자바를 이용한 웹 페이지 만들기",
							"오늘은 7월 21일 입니다.",
							"밖에 날씨가 덥습니다",
							"코로나 조심하세요",
							"페이징은 어떻게 할까?",
							"내가 사는곳은 경기도",
							"나는 유튜브를 시청합니다.",
							"Zoom을 통해서 비대면 수업 중 입니다.",
							"매미가 울고 있습니다.",
							"오늘은 비가 오지 않습니다.",
							"시간이 너무 빠릅니다",
							"어떻게 하면 취업을 할 수 있을까?"};
		String content = "내용입니다";
		String tag = "n";
		
		
		Random rnd = new Random();
		
		Connection conn = null;
		PreparedStatement pstat = null;
		
		try {
			String sql = "insert into tblBoard(seq,id,subject,content,regdate,readcount,tag,thread,depth) values(seqBoard.nextVal,?,?,?,default,default,?,?,?)";
			
			conn = DBUtil.open();
			pstat = conn.prepareStatement(sql);
			
			int thread = 3000;
			
			for(int i=0;i<50;i++) {
				
				thread+=1000;
				
				pstat.setString(1, id[rnd.nextInt(id.length)]);
				pstat.setString(2, subject[rnd.nextInt(subject.length)]);
				pstat.setString(3, content);
				pstat.setString(4, tag);
				pstat.setInt(5, thread);
				pstat.setInt(6, 0);
				
				pstat.executeUpdate();
				
			}
			
			
			pstat.close();
			conn.close();
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

}
