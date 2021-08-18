<%@page import="com.test.jsp.jdbc.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String seq = request.getParameter("seq");


	Connection conn = null;
	PreparedStatement stat = null;
	ResultSet rs  = null;
	String todo="";
	
	try{
		
		String sql = "select * from tblTodo where seq=?";
		
		conn = DBUtil.open();
		stat = conn.prepareStatement(sql);
		
		stat.setString(1, seq);
		
		rs=stat.executeQuery();
		
		
		if(rs.next()){
			todo =rs.getString("todo");
		}
		
		
		
		
		
	}catch(Exception e){
		e.getStackTrace();
	}
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp" %>

<style>
	.container {
		width: 500px;
		box-shadow: 0px 0px 5px #777;
		height: 100vh;
	}
	
	.container .page-header {
		font-variant: small-caps;
		letter-spacing: -1px;
	}
	
	.container .table th {
		text-align: center;
		vertical-align: middle;
		font-variant: small-caps;
	}
	
	.container .table th:nth-child(1) {
		width: 100px;
	}
	
	.container .table td {
		text-align: center;
		vertical-align: middle;
	}
	
	td .glyphicon {
		font-size: 12px;
		display: flex;
		padding: 3px;
	}
	
	.btns {
		display: flex;
		justify-content: space-between;
	}
	
</style>

</head>
<body>
	<!-- todo_list.jsp -->
	<div class="container">
		<h1 class="page-header">Todo List <small>Edit</small></h1>		
		
		<form action="todo_editok.jsp" method="POST">
			<table class="table table-bordered">
				<tr>
					<th>Todo</th>
					<td><input type="text" name="todo" class="form-control" value="<%=todo%>" /></td>
				</tr>
			</table>
			<div class="btns">
				<input type="button" value="목록보기" class="btn btn-default" data-toggle="tooltip" title="목록으로 돌아갑니다." onclick="location.href = 'todo_list.jsp';">
				<button type="submit" class="btn btn-success" data-toggle="tooltip" title="할일을 수정합니다.">수정하기</button>
			</div>
			
			<input type="hidden" name="seq" value="<%=seq %>">
		</form>
	</div>	
	
	<script>
	  
		$('[data-toggle="tooltip"]').tooltip();
		
	</script>
</body>
</html>















