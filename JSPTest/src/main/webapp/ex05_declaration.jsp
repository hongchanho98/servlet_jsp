<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.test.jsp.Ex05"%>
    
<%!
	// 로컬 메소드 - 현재 페이지에서 사용이 가능한 메소드
	public int sum(int a, int b){
		return a+b;		
	} 


	Ex05 ex05 = new Ex05();


%>
<%

	//무슨 변수?
	// - 멤버 변수? 지역 변수?
	int a=10;
	int b=20;
	//public int sum(int a, int b){
	//	return a+b;		
	//} 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>선언문</h1>
	
	<p>10 + 20 = 30</p>
	
	<p><%=a %> + <%=b %> = <%=a+b %></p>
	<p><%=a %> + <%=b %> = <%=sum(a,b) %></p>
	<p><%=a %> + <%=b %> = <%= ex05.sum(a, b) %></p>


</body>
</html>