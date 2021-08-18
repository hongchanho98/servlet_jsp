<%@page import="java.util.Enumeration"%>
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
</style>
</head>
<body>
	<!--  -->
	<div class="container">
		<h1 class="page-header">HTML 요청 메시지 - 헤더 정보</h1>

		<%-- <%= request.getHeader("User-Agent") %> --%>

		<table class="table table-bordered">

			<tr>
				<th>헤더명</th>
				<td>헤더값</td>
			</tr>
			<%
			// 헤더 정보
			//값 = request.getHeader("헤더명")
			Enumeration<String> e = request.getHeaderNames();

			while (e.hasMoreElements()) {
				String name=e.nextElement(); // 헤더명
			%>
			<tr>
				<th><%=name %></th>
				<td><%=request.getHeader(name) %></td>
			</tr>
			<%
			}
			%>
		</table>
		<hr>
		
		http://localhost:8090/jsp/ex08_request.jsp
		http://127.0.0.1:8090/jsp/ex08_request.jsp
		IP(127.0.0.1): 자신을 가르키는 예약 IP 주소
		
		
		<p>서버 도메인명: <%=request.getServerName() %></p>
		서버 도메인명: localhost
		
		<p>서버 포트번호: <%=request.getServerPort() %></p>
		서버 포트번호: 8090
		
		<p>요청 URL: <%=request.getRequestURL() %></p>
		요청 URL: http://localhost:8090/jsp/ex08_request.jsp
		
		<p>요청 쿼리: <%=request.getQueryString() %></p> <!-- ?뒤에있는 값들  http://localhost:8090/jsp/ex08_request.jsp?name=hong -->
		요청 쿼리: name=hong
		
		<p>클라이언트 호스트: <%=request.getRemoteHost() %></p>
		클라이언트 호스트: 0:0:0:0:0:0:0:1
		
		<p>클라이언트 IP: <%=request.getRemoteAddr() %></p>
		클라이언트 IP: 0:0:0:0:0:0:0:1
		
		<p>프로토콜: <%=request.getProtocol() %></p>
		프로토콜: HTTP/1.1
		
		<p>요청방식: <%=request.getMethod() %></p>
		요청방식: GET
		
		
		<!-- ********* -->
		<p>컨텍스트 경로: <%=request.getContextPath() %></p>
		컨텍스트 경로: /jsp
		

	</div>

	<script>
		
	</script>
</body>
</html>













