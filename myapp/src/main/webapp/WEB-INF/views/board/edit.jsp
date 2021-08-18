<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myapp</title>

<%@ include file="/inc/asset.jsp" %>

<style>

	.table th{width: 120px;}
	.table td{width: 680px;}
	
	.table #content{height: 300px;}
	
</style>

</head>
<body>
	<!-- board/add.jsp -->
	<%@ include file="/inc/header.jsp" %>
	
	<section class="main-section">
		
		<h1>Board <small>Add</small></h1>
		
		<form action="/myapp/board/editok.do" method="POST">
		<table class="table table-bordered">
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject" id="subject" class="form-control" required value="${dto.subject}" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" id="content" class="form-control" required value="${dto.content}" /></td>
			</tr>
			<tr>
				<th>태그</th>
				<td>
					<select name="tag" id="tag" class="form-control">
						<option value="n">적용안함</option>
						<option value="y">적용함</option>
					</select>
				</td>
			</tr>
		
		</table>
		
		<div class="btn">
			<button type="submit" class="btn btn-primary">수정하기</button>
			<button type="button" class="btn btn-default" onclick="location.href='/myapp/board/list.do'">돌아가기</button>
		</div>
		
			<input type="hidden" value="${dto.seq }" name="seq" />
		</form>
		
	</section>	
	
	<%@ include file="/inc/init.jsp" %>
	<script>
	
		//$('#subject').val("${dto.subject}");
		//$('#content').val("${dto.content}");
		$('#tag').val("${dto.tag}");
		
	</script>
</body>
</html>















