<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%

	String img = request.getParameter("img");	

	String path = application.getRealPath("/files/"+img);
	
	File file = new File(path);
	
	file.delete(); //파일삭제(*******)
	
	response.sendRedirect("ex18_view.jsp"); // 삭제되자마자 이동하기

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
	<!-- ex18_file_delete.jsp -->
	<div class="container">
		<h1 class="page-header"></h1>
		
	</div>

	<script>
		
	</script>
</body>
</html>













