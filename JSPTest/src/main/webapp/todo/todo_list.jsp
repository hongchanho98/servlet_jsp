<%@page import="com.test.jsp.jdbc.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = null;
Statement stat = null;
ResultSet rs = null;

try {

	conn = DBUtil.open();
	stat = conn.createStatement();
	String sql = "select * from tblTodo";
	rs = stat.executeQuery(sql);

} catch (Exception e) {
	e.getStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp"%>

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
	width: 50px;
}

.container .table th:nth-child(3) {
	width: 70px;
}

.container .table td {
	text-align: center;
	vertical-align: middle;
}

.container .table td:nth-child(2) {
	text-align: left;
}

td .glyphicon {
	font-size: 12px;
	display: flex;
	padding: 3px;
}

td:nth-child(2) {
	cursor: pointer;
}

td:nth-child(2):hover {
	background-color: #EEE;
}

td small {
	font-size: 10px;
	color: #AAA;
}

.btns {
	display: flex;
	justify-content: space-between;
}

.complete {
	text-decoration: line-through;
	opacity: .7;
}

ol {
	counter-reset: section;
	list-style-type: none;
}

li:before {
	counter-increment: section;
	content: counters(section, ".") ".";
}

#descicon span {
	margin-top: 50px;
	font-size: 1.5em;
	opacity: .3;
	cursor: pointer;
}

#desc {
	margin-top: 20px;
	display: none;
}

.strike {
	text-decoration: line-through;
	color: #444;
}

.selectpicker{
	float: right;
}

#sel1 {
		width: 100px;
		margin-left: auto;
		margin-right: 0px;
		margin-bottom: 10px;
	}
</style>

</head>
<body>
	<!-- todo_list.jsp -->
	<div class="container">
		<h1 class="page-header">
			Todo List <small>List</small>
		</h1>
	
		<select id="sel1" class="form-control">
			<option value="0" selected>모두</option>
			<option value="1">완료</option>
			<option value="2">미완료</option>
		
		</select>

		<table class="table table-bordered">
			<tr>
				<th><input type="checkbox" name="cbAll" id="cbAll"></th>
				<th>Todo</th>
				<th></th>
			</tr>
			<%
			while (rs.next()) {
			%>
			<tr>
				<td><input type="checkbox" name="cbItem" class="cbItem"
					value="<%=rs.getString("seq")%>"></td>
				<td><span <%if(rs.getString("complete").equals("1")) out.print("class='strike'"); %>"><%=rs.getString("todo")%></span> <small><%=rs.getString("regdate").substring(0, rs.getString("regdate").indexOf(" "))%></small></td>
				<td><button type="button" class="btn btn-success btn-xs"
						data-toggle="tooltip" title="할일을 수정합니다."
						onclick="edit(<%=rs.getString("seq")%>);">
						<span class="glyphicon glyphicon-edit"></span>
					</button></td>
			</tr>
			<%
			}
			%>

		</table>
		<div class="btns">
			<input type="button" value="삭제하기" class="btn btn-danger"
				data-toggle="tooltip" title="체크된 할일을 삭제합니다." onclick="del();">
			<button type="button" class="btn btn-primary" data-toggle="tooltip"
				title="할일을 추가합니다." onclick="add();">추가하기</button>
		</div>


		<div id="descicon">
			<span class="glyphicon glyphicon-list" data-toggle="tooltip"
				title="구현 목록입니다."></span>
		</div>

		<div id="desc">
			<h3>구현할 것</h3>
			<ol>
				<li>할일 목록 출력</li>
				<li>할일 추가</li>
				<li>할일 수정</li>
				<li>할일 삭제
					<ol>
						<li>체크박스: 모든 항목 선택/해제</li>
						<li>체크항목 삭제하기</li>
					</ol>
				</li>
				<li>추가 기능
					<ol>
						<li>할일 클릭(완료/미완료)</li>
					</ol>
				</li>
			</ol>
		</div>
	</div>

	<script>
	  
		$('[data-toggle="tooltip"]').tooltip();	
		var cbAll = document.getElementById('cbAll');
	  	var cbItem = document.getElementsByClassName('cbItem');
	  	
	  	
		$("#descicon span").click(function() {
			$("#desc").toggle();
		});
	
	  	function add() {
	  		location.href = 'todo_add.jsp';
	  	}
	  	
	  	function edit(seq) {
	  		location.href = 'todo_edit.jsp?seq='+seq;
	  	}
	  	
	  	function del() {
	  		var str = "";
	  		
	  		if (confirm('선택한 할일을 삭제하겠습니까?')) {
	  			
	  			for (var i = 0; i < cbItem.length; i++) {
		  	          
	  				if(cbItem[i].checked==true){
	  					
		  	        	if(str.length==0){
		  	        		str="seq="+cbItem[i].value;
		  	        		
		  	        	}else{
		  	        		str+="&seq="+cbItem[i].value;
		  	        		
		  	        	}
	  				}
		  	    }
		  			
	  		}
	  		if(str.length!=0){
	  			location.href="todo_delok.jsp?"+str
	  		}
	  	}
	  	
	  	cbAll.onchange = function () {
	        for (var i = 0; i < cbItem.length; i++) {
	          cbItem[i].checked = cbAll.checked;
	        }
	      };
	      
	      
	     $('tr > td > span').click(function(){
	    	 
	    	 var seq = $(this).parent().prev().children().val();
	    	 var cn = $(this).attr("class");
	    	 
	    	 
	    	 location.href="todo_complete.jsp?seq="+seq+"&cn="+cn;
	    	
	    	 
	     });
	     
	     
	     $('#sel1').change(function(){
	    	
	    	 $('tr').show();
	    	 alert($(this).val());
	    	 
			if($(this).val()==1){
	    		 if($('td span').attr('class').equals("strike")){
	    			 $(this).parent().parent().children('tr').show();
	    			 alert($(this).val());
	    		 }
	    		 
	    	 }
			
	    	 
	    	 
	     });
	     
	     
	    
	     
	  	
	      
		
	</script>
</body>
</html>















