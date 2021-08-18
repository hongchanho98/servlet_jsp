<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
//디렉토리 목록 읽기

String path = application.getRealPath("/files");

File dir = new File(path);
File[] list = dir.listFiles();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>

<style>
.list {
	margin: 20px;
	display: flex;
}

.list .item {
	width: 200px;
	height: 200px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin: 10px;
	background-repeat: no-repeat;
	background-position: center center;
	background-size: contain;
	cursor: pointer;
}

	.img1{
		display: block;
		margin: 20px auto;
		
	}

</style>
</head>
<body>
	<!-- ex18_view.jsp -->
	<div class="container">
		<h1 class="page-header">Gallery</h1>

		<div class="list">
			<%
			for (File f : list) {
			%>
			<div class="item"
				style="background-image: url(/jsp/files/<%=f.getName()%>);"
				data-toggle="modal" data-target="#myModal" onclick="view('<%=f.getName()%>');">
				
			</div>

			<%
			}
			%>
		</div>

		<div class="btns">
			<input type="button" value='Add Image' class='btn btn-default'
				onclick="location.href=ex18_file_form.jsp" ; />
		</div>

	</div>

	<!-- Button trigger modal -->
		<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
			
			
				<div class="modal-body">
					<img class="img1">
				</div>
				
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-danger btnDelete">Delete</button>
				</div>
				
				
			</div>
		</div>
	</div>

	<script>
	
		function view(img){
			//alert(img);
			
			
			$('.img1').attr('src','/jsp/files/'+img);
			
			//alert($('.img1').width());
			
			setTimeout(function(){
				/* alert($('.img1').width()); */
				if($(event.target).width()>800){
					$(event.target).width(800);
				}
			},200);
			
			
			$('.btnDelete').click(function(){
				
				//alert($('.img1').attr('src'));
				
				let img = $('.img1').attr('src').replace('/jsp/files/','');
				//alert(img);
				
				location.href="ex18_file_delete.jsp?img="+img;
			});
			
			
		}
	
		
	</script>
</body>
</html>













