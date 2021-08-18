<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% // 자바 영역, 출력과 상관없는 코드는 HTML 코드와 분리시키는게 보기 좋음, 최상단이나 최하단(clean-up Code)

	int a = 10;
	int b = 20;
	int c = 30;
	
	String color = "blue";

%> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

	div{color: <%= color %>; }
</style>
</head>
<body>

	<h1>표현식</h1>
	
	<div><%= 100 %></div>
	<div><%= 3.14 %></div>
	<div><%= "홍길동" %></div>
	<div><%= true %></div>
	<div><%= 10+20 %></div>
	<div><%= Math.random() %></div>
	<div><%= "<input type='text'>" %></div>
	
	<hr>
	
	<div>a: <%= a %></div>
	<div>a + b = <%= a + b %></div>
	
	<hr>
	
	<div style="font-size:<%= c %>px">안녕하세요.</div>
	
	<hr>
	<input type="button" value="버튼" id="btn1">
	
	<script>
		
	document.getElementById('btn1').onclick=function(){
		/* alert(div 태그의 글자색); */
		// alert("blue");
		alert("<%=color%>");
	};
	
	
	</script>

</body>
</html>






<%

	//Clean-up Code
	// - 자원해제 코드
	// reader.close(); 같은 close() 하는 것들


%>



















