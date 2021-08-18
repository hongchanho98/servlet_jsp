package com.test.myapp.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/list.do") // web.xml을 작성 안해도됨
public class List extends HttpServlet {
	
	//GET or POST
	// - 페이지를 요청할때 get post 요청???
	// 	1. GET
	// 		- 브라우저 주소창을 URL 을 입력해서 요청할때
	//		- <a> 이동시
	//		- location.href 이동시
	//		- resp.sendRedirect() 이동시
	//		- <form method="GET">
	
	//	2. POST
	//		- <form methd="POST">
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPostGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		doPostGet(req, resp);
	}

	private void doPostGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//list.do
		//1. 목록보기(게시판의 시작 페이지 역할)
		//	-select ...
		//2. 검색결과보기(검색 버튼 눌러서 호출)
		//	-select where ..
		
		
		String column = req.getParameter("column");
		String search = req.getParameter("search");
		
		String isSearch = "n";
		
		//System.out.println(column);
		//System.out.println(search);
		
		
		if(column!=null && search != null && !column.equals("") && !search.equals("")) {
			isSearch="y";
		}
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("column", column);
		map.put("search", search);
		map.put("isSearch", isSearch);
		
		
		//페이징 처리
		int nowPage=0;           // 현재 페이지 번호
		int totalCount =0;       // 총 게시물 수
		int pageSize=10;          // 한 페이지당 출력할 게시물 수
		int totalPage=0;         // 총 페이지 수
		int begin=0;             // 가져올 게시물 시작 위치
		int end=0;               // 가져올 게시물 끝 위치
		int n=0;				 // 페이지바 제작
		int loop=0;              // 페이지바 제작
		int blockSize=10;        // 페이지바 제작
		
		
		BoardDAO dao = new BoardDAO();
		
		//list.do > list.do?page=1
		//list.do?page=
		
		String page = req.getParameter("page");
		
		if(page == null || page.equals("")) {
			nowPage=1;
		}else {
			nowPage=Integer.parseInt(page);
		}
		
		//nowPage > 현재 페이지
		// 1페이지 -> where rnum between 1 and 10
		// 2페이지 ->  where rnum between 11 and 20
		// 3페이지 ->  where rnum between 21 and 30
		
		begin = ((nowPage-1) * pageSize)+1;
		end = begin + pageSize-1;
		
		map.put("begin", begin+"");
		map.put("end", end+"");
		
		//총 게시물 수 알아내기
		totalCount = dao.getTotalCount(map);
		
		
		//총 페이지 수 알아내기
		// 399 / 10 = 39.9 무조건 올림-> 40
		totalPage = (int)Math.ceil((double)totalCount/pageSize);
		
		
		
		
		//총 페이지 수 알아내기
		
		/*
		 
		    <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
		    
		    
		  
		 */
		
		String pagebar ="<nav>\r\n"
				+ "		  <ul class=\"pagination\">";
		
//		for(int i=1; i<=totalPage;i++) {
//			if(i==nowPage) {
//				pagebar += String.format("<a href='#!' style='color:tomato;'>%d</a> ",i,i);
//				
//			}else {
//				pagebar += String.format("<a href='/myapp/board/list.do?page=%d'>%d</a> ",i,i);
//
//			}
//		}
		
		loop=1; // while루프 변수
		n = ((nowPage-1)/blockSize)*blockSize+1; // 출력되는 페이지 번호
		
		
		
		
		//이전 10 페이지
//		if(n==1) {
//			pagebar += String.format("<a href='#!'>[이전 %d 페이지]</a>",blockSize);
//		}else {
//			pagebar += String.format("<a href='/myapp/board/list.do?page=%d'>[이전 %d 페이지]</a>", n-1,blockSize);
//		}
		if(n==1) {
			pagebar += String.format("<li class='disabled'><a href=\"#\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>");
		}else {
			pagebar += String.format("<li><a href='/myapp/board/list.do?page=%d' aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>", n-1);
		}
		
		//페이지 링크
		
//		while(!(loop>blockSize ||  n > totalPage)) {
//			if(n==nowPage){
//				pagebar += String.format("<a href='#!' style='color:tomato;'>%d</a> ",n,n);
//			}else{
//				pagebar += String.format("<a href='/myapp/board/list.do?page=%d'>%d</a> ",n,n);
//			}
//			loop++;
//			n++;
//		}
		
		if(totalPage==0) {
			pagebar += "<li class='active'><a href='#!'>1</a></li>";
		}
		
		while(!(loop>blockSize ||  n > totalPage)) {
			if(n==nowPage){
				pagebar += String.format("<li class='active'><a href='#!'>%d</a></li> ",n);
			}else{
				pagebar += String.format("<li><a href='/myapp/board/list.do?page=%d'>%d</a></li> ",n,n);
			}
			loop++;
			n++;
		}
		
		
		//다음 10 페이지
//		if(n > totalPage) {
//			pagebar += String.format("<a href='#!'>[다음 %d페이지]</a>",blockSize);
//		}else {
//			pagebar += String.format("<a href='/myapp/board/list.do?page=%d'>[다음 %d 페이지]</a>", n,blockSize);
//		}
		if(n > totalPage) {
			pagebar += String.format("<li class='disabled'><a href=\"#!\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>");
		}else {
			pagebar += String.format("<li><a href='/myapp/board/list.do?page=%d' aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>", n);
		}
		
		
		pagebar+="</ul>\r\n"
				+ "		</nav>	";
		
		//할일
		//1. DB작업 > DAO 위임 > select 
		//2. ArrayList<BoardDTO> 반환
		//3. JSP 호출하기 + 2번 전달
		
		
		ArrayList<BoardDTO> list = dao.list(map);
		
		for(BoardDTO dto : list) {
			
			//날짜 시분초 자르기
			String regdate = dto.getRegdate();
			regdate= regdate.substring(0,10);
			dto.setRegdate(regdate);
			
			//제목이 길면 -> 자르기
			String subject = dto.getSubject();
			
			subject = subject.replace("<script", "&lt;script").replace("</script>","&lt;script&gt;");			
			if(subject.length()>37) {

				subject = subject.substring(0,37)+"..";
				dto.setSubject(subject);
				
			}
			
			//제목 검색중이면 검색어를 부각 시키기
			// 자유 게시판 입니다 -> 검색어(게시판) > " 자유"<span style='color:tomato; background-color:yellow;'>게시판</span>입니다.
			
			if(isSearch.equals("y")&& column.equals("subject")) {
				subject = subject.replace(search,"<span style='color:tomato; background-color:yellow;'>"+search+"</span>");
				dto.setSubject(subject);
			}
		}
		
		//새로고침에 의한 조회수 증가 방지 티켓
		HttpSession session = req.getSession();
		
		session.setAttribute("read","n");
		
		
		req.setAttribute("list", list);
		req.setAttribute("map", map); //********
		
		
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("pagebar", pagebar);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/list.jsp");
		dispatcher.forward(req, resp);
	}

}