<%@page import="com.test.jsp.jdbc.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//할일
//1. 선택된 항목 가져오기
//2. DB 작업 -> delete
//3. 페이지 이동하기 -> todo_list.jsp
request.setCharacterEncoding("UTF-8");
String[] seq = request.getParameterValues("seq");

Connection conn = null;
PreparedStatement stat = null;

try {

	for (int i = 0; i < seq.length; i++) {

		String sql = "delete from tblTodo where seq=?";

		conn = DBUtil.open();
		stat = conn.prepareStatement(sql);
		
		stat.setString(1, seq[i]);
		
		stat.executeUpdate();

	}

} catch (Exception e) {

}


response.sendRedirect("todo_list.jsp");

	



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
	<!-- todo_del_ok.jsp -->

</body>
</html>















