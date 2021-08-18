<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%

	String width=request.getParameter("width");
	String height=request.getParameter("height");
	String text=request.getParameter("text");
	String backcolor=request.getParameter("backcolor");
	String fontcolor=request.getParameter("fontcolor");
	String fontsize=request.getParameter("fontsize");
	String btncount=request.getParameter("btncount");
	String LRmargin=request.getParameter("LRmargin");
	String TBmargin=request.getParameter("TBmargin");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>

<style>
	
	#box{
		display: flex;
		justify-content: space-between;
		align-items: center;
		
	}
	
	.btn{
		
		width:<%=width %>;
		height:<%=height %>;
		background-color: <%=backcolor%>;
		color: <%=fontcolor%>;
		font-size: <%=fontsize+"px"%>;
		margin: <%=TBmargin+"px "+LRmargin+"px"%>;
		
	
	
	}


</style>
</head>
<body>
	<!--  -->
	<div class="container">
		<h1 class="page-header"></h1>
		
		<table class="table table-bordered">
		
			
			<tr>  
				<th style="text-align: center;">버튼</th>
			</tr>
			
			<tr>  
				<td id="box">
				
				<%for(int i=0;i<Integer.parseInt(btncount);i++){ %>
				
				<input type="button" value="<%=text %>" class="btn">
				
				<%} %>
				
					
				</td>
			</tr>
		
		
		</table>

		


		</form>

	</div>

	<script>
		
	</script>
</body>
</html>













