<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>

<style>
	
	.s{
	width: 150px;
	
	}
	.xs{
	width: 50px;
	}
	
	.table{
	width: 800px;
	
	}
	.m{
	
		width: 300px;
	}
	
	.table th{
		width: 150px;
		text-align: center;
	}
	
	input[type=range]{
		color="black";
	}


</style>
</head>
<body>
	<!--  -->
	<div class="container">
		<h1 class="page-header"></h1>
		
		<form action="ex07_ok.jsp" method="GET">
		
			<table class="table table-bordered">
			
				<tr>
					<th>너비(px)</th>
					<td><input type="number" name="width" class="s form-control" /></td>
				</tr>
				<tr>
					<th>높이(px)</th>
					<td><input type="number" name="height" class="s form-control" /></td>
				</tr>
				<tr>
					<th>텍스트</th>
					<td><input type="text" name="text" class="m form-control" /></td>
				</tr>
				<tr>
					<th>배경색</th>
					<td><input type="color" name="backcolor" class="xs form-control" /></td>
				</tr>
				<tr>
					<th>글자색</th>
					<td><input type="color" name="fontcolor" class="xs form-control" /></td>
				</tr>
				<tr>
					<th>글자 크기(px)</th>
					<td><input type="number" name="fontsize" class="s form-control" /></td>
				</tr>
				<tr>
					<th>버튼 개수(ea)</th>
					<td><input type="number" name="btncount" class="s form-control" /></td>
				</tr>
				<tr>
					<th>버튼 간격</th>
					<td>
					<div>좌우 간격:</div>
					<input type="range" name="LRmargin" class="form-control" />
					<div>상하 간격:</div>
					<input type="range" name="TBmargin" class="form-control" />
					</td>
				</tr>
			
			
			</table>
			
			<input type="submit" value="제출">
			</form>
		
	</div>

	<script>
		
	</script>
</body>
</html>













