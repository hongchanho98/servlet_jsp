<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	String txt = request.getParameter("txt");
	
	//파일 업로드 처리
	// 1. 업로드된 파일을 어디에 저장할 지 결정
	// - webapp >files 폴더
	// - 반드시 로컬 경로로 표시
	// - 반드시 로컬 경로로 표시(드라이브명으로 시작)
	//		-C:\class\server\JSPTest\src\main\webapp\files -> 이것도 복사본생김
	// - 톰캣은 프로젝트 소스를 직접 실행하지 않고 복사본을 가지고 실행한다.
	// - 업로드를 저장할 폴더가 톰캣 실행하는 작업 폴더를 지정해야 한다.
	// - files 복사본 폴더를 지정해야함
	
	//   "/files" : 가상 경로를 물리 경로로 바꿔준다.
	String path = application.getRealPath("/files");
	String path2= request.getServletContext().getRealPath("/files");
	String path3= request.getServletPath();
	String path4= request.getServletContext().getContextPath();
	System.out.println(path);
	System.out.println(path2);
	System.out.println(path3);
	System.out.println(path4);
	
	//C:\class\server\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JSPTest\files
	//System.out.println(path);
	
	//2. 업로드 파일의 최대 크기 지정
	// - 최대한 작게
	// - 바이트 단위
	
	int size = 1024 * 1024 * 100; //100MB
	
	//3. 변수 선언
	
	String subject = ""; //입력 데이터 
	String name = "";
	String filename = ""; //첨부파일명
	String orgfilename = ""; //첨부파일명
	
	//*** <form enctype="multipart/form-data">으로 선언되면
	// 기존의 request 객체의 getParameter()가 정상 동작을 하지 않는다(인코딩 변경으로 인해서..)
	// -> request 객체를 대신할 다른 객체를 사용한다.> cos.jar > MultipartRequest 사용

	//subject = request.getParameter("subject");
	//서버가 보낸 한글 데이터를 안깨지도록 인코딩
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	
	try{
		
		//파일 업로드 처리 -> 외부 입출력 -> try 필수
		
		//request -> MultipartRequest
		// 이 객체를 생성하는 순간 업로드 된 파일은 처리를 마치고 첨부파일 폴더에 저장되어 있다.
		MultipartRequest multi = new MultipartRequest(
				request,// 기존의 request Wrapping 클래스
				path,//업로드 폴더 지정
				size,//업로드 크기 지정
				"UTF-8",//인코딩 방식 지정
				new DefaultFileRenamePolicy()
				);
				
		// 데이터 수신하기
		subject = multi.getParameter("subject");
		name = multi.getParameter("name");
				
				
		//파일 정보 수신하기(******)
		// - 첨부 파일 이름 가져오기
		
		
		// 실제로 저장된 파일명(넘버링 O)
		filename = multi.getFilesystemName("attach"); //<input type="file" name="attach" />
		
		
		//사용자가 올린 파일명(넘버링 X)
		orgfilename= multi.getOriginalFileName("attach");
		
		
		
		
		
	}catch(Exception e){
		System.out.println(e.getMessage());
		
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>

<style>
</style>
</head>
<body>
	<!-- ex17_file_ok.jsp -->
	<div class="container">
		<h1 class="page-header"></h1>

		<div>
			제목:
			<%=subject%></div>
			<div>이름: <%= name %></div>
			<div>첨부파일명: <%= filename %></div>
			<div>첨부파일명: <%= orgfilename %></div>
			
			
			<h2>다운로드</h2>
			
			<!-- 브라우저는 링크 대상이 자신이 열 수 있는 파일이면 해석해서 보여주고(텍스트, 웹페이지, 이미지 등)
			열 수 없는 파일이면 다운로드를 한다. -->
			<div><a href="/jsp/files/<%= filename %>"><%=orgfilename %></a></div>
			
			<!-- <a download> 속성이 파일을 무조건 다운로드 되게 해준다. -->
			<div><a href="/jsp/files/<%= filename %>" download><%=orgfilename %></a></div>
			
			<!-- 가장 완벽한 방법 -->
			<div><a href="/jsp/download.jsp?filename=<%=filename%>&orgfilename=<%=orgfilename%>"><%=orgfilename %></a></div>
			

	</div>

	<script>
		
	</script>
</body>
</html>













