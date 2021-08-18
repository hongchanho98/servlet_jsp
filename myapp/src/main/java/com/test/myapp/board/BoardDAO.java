package com.test.myapp.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.test.myapp.DBUtil;

public class BoardDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public BoardDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			e.getStackTrace();
		}

	}

	public int add(BoardDTO dto) {

		try {

			String sql = "insert into tblBoard(seq,id,subject,content,regdate,readcount,tag,thread,depth) values(seqBoard.nextVal,?,?,?,default,default,?,?,?)";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getSubject());
			pstat.setString(3, dto.getContent());
			pstat.setString(4, dto.getTag());
			
			pstat.setInt(5, dto.getThread());
			pstat.setInt(6, dto.getDepth());
			

			return pstat.executeUpdate();

		} catch (Exception e) {

		}

		return 0;
	}

	public ArrayList<BoardDTO> list(HashMap<String, String> map) {

		try {
			
			String where ="";
			if(map.get("isSearch").equals("y")) {
			
				if(map.get("column").equals("all")) {
					where=String.format("and subject like '%%%s%%' or content like '%%%s%%' ",map.get("search"),map.get("search"));
				}else {
					where=String.format("and %s like '%%%s%%' ",map.get("column"),map.get("search"));
					
				}
			}
			
			String sql = String.format("select * from vwBoard where  rnum between %s and %s %s order by thread desc",map.get("begin"),map.get("end"),where);

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

			while (rs.next()) {
				BoardDTO dto = new BoardDTO();

				dto.setSeq(rs.getString("seq"));
//			dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setSubject(rs.getString("subject"));
				dto.setReadcount(rs.getString("readcount"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setIsnew(rs.getString("isnew"));

				dto.setCcnt(rs.getString("ccnt"));;
				
				dto.setThread(rs.getInt("thread"));
				dto.setDepth(rs.getInt("depth"));
				
				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			e.getStackTrace();
		}

		return null;
	}

	public BoardDTO get(String seq) {

		try {

			String sql = "select b.*,(select name from tblUser where id=b.id) as name from tblBoard b where seq=?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);

			rs = pstat.executeQuery();
			if (rs.next()) {
				BoardDTO dto = new BoardDTO();

				dto.setSeq(rs.getString("seq"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setReadcount(rs.getString("readcount"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setTag(rs.getString("tag"));
				dto.setThread(rs.getInt("thread"));
				dto.setDepth(rs.getInt("depth"));

				return dto;
			}

		} catch (Exception e) {

		}

		return null;
	}

	public void updateReadcount(String seq) {
		try {
			String sql = "update tblBoard set readcount = readcount + 1 where seq=?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			pstat.executeUpdate();

		} catch (Exception e) {

		}

	}

	public int edit(BoardDTO dto) {

		try {

			String sql = "update tblBoard set subject=?,content=?,tag=? where seq=?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSubject());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getTag());
			pstat.setString(4, dto.getSeq());

			return pstat.executeUpdate();

		} catch (Exception e) {

		}

		return 0;
	}

	public int del(String seq) {
		
		try {
			
			String sql = "delete from tblBoard where seq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		
		return 0;
	}

	public int addComment(CommentDTO dto) {
		
		try {

			String sql = "insert into tblComment(seq,id,content,regdate,pseq) values(seqComment.nextVal,?,?,default,?)";

			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getPseq());

			return pstat.executeUpdate();

		} catch (Exception e) {

		}

		return 0;
		
	}

	public ArrayList<CommentDTO> listComment(String seq) {
		
		try {
			
			ArrayList<CommentDTO> clist = new ArrayList<CommentDTO>();
			String sql = "select c.*,(select name from tblUser where id= c.id) as name from tblComment c where pseq=? order by seq desc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs=pstat.executeQuery();
			
			while(rs.next()) {
				
				CommentDTO dto = new CommentDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setPseq(rs.getString("pseq"));
				dto.setName(rs.getString("name"));

				clist.add(dto);
			}
			
			return clist;
			
			
		} catch (Exception e) {
			
		}
		
		return null;
	}

	public int delComment(String seq) {

		try {
			
			String sql ="delete from tblComment where seq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {

			e.getStackTrace();
		}
			
		
		return 0;
	}

	public void delAllComment(String seq) {
		
try {
			
			String sql ="delete from tblComment where pseq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {

			e.getStackTrace();
		}
	}

	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where ="";
			if(map.get("isSearch").equals("y")) {
			
				if(map.get("column").equals("all")) {
					where=String.format("where subject like '%%%s%%' or content like '%%%s%%' ",map.get("search"),map.get("search"));
				}else {
					where=String.format("where %s like '%%%s%%' ",map.get("column"),map.get("search"));
					
				}
			}
			
			String sql = String.format("select count(*) as cnt from tblBoard %s",where);
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			
		}
		
		
		
		
		return 0;
	}

	//AddOk 서블릿이 가장 큰 thread값을 알려주기
	public int getMaxThread() {
		
		try {
			
			String sql = "select nvl(max(thread),0)+1000 as thread from tblBoard";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getInt("thread");
			}
			
			
		} catch (Exception e) {
			
		}
		
		
		
		return 0;
	}

	public void updateThread(int parentThread, int previousThread) {
	
		try {
			
			String sql="update tblBoard set thread = thread -1 where threa > ? and thread <?";
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, previousThread);
			pstat.setInt(2, parentThread);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			
		}
		
	}

}






























