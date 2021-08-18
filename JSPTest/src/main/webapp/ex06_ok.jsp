<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%

	// 넘어온 데이터 가져오기
	// - request 객체 담당 예약어라서 그냥 사용가능! Servlet 처럼 매개변수가 아니다
	// - request.getParameter("name") - 1개의 컨트롤을 받는다
	// - 모든 데이터는 문자열 전송(**************) > 자료형 존재 안함
	
	String data = request.getParameter("data");
	String num = request.getParameter("num");

	//텍스트 박스
		String txt1 = request.getParameter("txt1");
	
		//암호
		String txt2 = request.getParameter("txt2");
		
		//멀티 텍스트 박스
		String txt3 = request.getParameter("txt3");
		txt3=txt3.replace("\r\n","<br>"); //작업은 위에서하기 아래에서하면 지저분해짐
		
		//체크 박스
		// 1. value 미지정
		// - 체크하면 -> on
		// - 체크X -> null
		
		//2. value 지정
		// - 체크하면 -> value
		// - 체크X -> null
		
		
		String cb1 = request.getParameter("cb1");
		String cb2 = request.getParameter("cb2");
		
		String cb3 = request.getParameter("cb3");
		String cb4 = request.getParameter("cb4");
		
		String cb5 = request.getParameter("cb5");
		String cb6 = request.getParameter("cb6");
		String cb7 = request.getParameter("cb7");
		String cb8 = request.getParameter("cb8");
		String cb9 = request.getParameter("cb9");
		
		
		//****
		//String cb = request.getParameter("cb");
		
		String[] cb = request.getParameterValues("cb");// 배열
		
		String[] txt = request.getParameterValues("txt");
		
		//라디오 버튼 -> 100 개가 있어도 딱 1개만 전송되니까 values가 아님
		String rb = request.getParameter("rb");
		
		//셀릭트 박스
		String sel1 = request.getParameter("sel1");
		
		//셀렉트 박스 multiple
		String[] sel2 = request.getParameterValues("sel2");
		
		
		//히든
		String id = request.getParameter("id");
		
		//데이트
		String date1 = request.getParameter("date1");
		
		
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
	<!-- exok_ok.jsp -->
	<div class="container">
		<h1 class="page-header">결과</h1>
		
		<div>data: <%= data %></div>
		<div>data: <%= num %></div>
		<div>data: <%= request.getParameter("num") %></div>
		
		<hr>
		
		<div>txt1: <%= txt1 %></div>
		<div>txt2: <%= txt2 %></div>
		<div>txt3: <%= txt3 %></div>
		
		<hr>
		
		<div>cb1: <%= cb1 %></div>
		<div>cb2: <%= cb2 %></div>
		
		<div>cb3: <%= cb3 %></div>
		<div>cb4: <%= cb4 %></div>
		
		<hr>
		
		<div>cb5: <%= cb5 %></div>
		<div>cb6: <%= cb6 %></div>
		<div>cb7: <%= cb7 %></div>
		<div>cb8: <%= cb8 %></div>
		<div>cb9: <%= cb9 %></div>
		<hr>
		
		
		<div>cb: <%= cb %></div>
		
		<%
		if(cb != null){
			for(String c: cb){  
		%>
		
			<div>cb: <%=c %></div>
		
		<%
			} 
		}
		
		%>
		
		<hr>
		
		
		<%for(String t: txt){  %>
		
			<div>txt: <%=t %></div>
		
		<%} %>
		
		
		<hr>
		
		
		<div>rb: <%= rb %></div>
		
		<hr>
		
		<div style="background-color: <%=sel1%>;">sel1: <%= sel1 %></div>

		<hr>
		
		
		<%for(String s: sel2){  %>
		
			<div>sel2: <%=s %></div>
		
		<%} %>
		
		<hr>
		
		<div>id: <%=id %></div>
		
		<div>date1: <%=date1 %></div>
				
		
	</div>

	<script>
		
	</script>
</body>
</html>