<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.test.jsp.User"%>
<%@page import="java.util.HashMap"%>


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
	<!-- ex15_el.jsp -->
	<div class="container">
		<h1 class="page-header">EL</h1>



		<!-- 
		
		액션 태그 + EL
		-> 목적: JSP 페이지에서 자바를 사용하지 말자!!!
		
		EL, Expression Language
		- 표현식 언어
		- 내장 객체(pageContext, request, sesssion, application)에 들어있는 데이터를 HTML 소스에 출력하는 언어
		- <%-- ${} --%>
		
		
		
		 -->

		<%
		// 평범한 지역 변수
		int a = 10;
		pageContext.setAttribute("b", 20);
		request.setAttribute("c", 30);
		session.setAttribute("d", 40);
		application.setAttribute("e", 50);
		%>

		<div>
			평범한 지역 변수 a:	<%=a%></div>
		<!-- 자바 표현식을 사용 -->
		<div>
			내장 객체 변수 b:
			<%=pageContext.getAttribute("b")%></div>


		<h2>EL</h2>
		<div>a: ${a}</div>
		<%-- <div>b: ${pageContext.getAttribute("b")} </div> --%>
		<div>b: ${b}</div>
		<div>c: ${c}</div>
		<div>d: ${d}</div>
		<div>e: ${e}</div>

		<hr>

		<%
		int num1 = 10;
		pageContext.setAttribute("num2", 20);
		%>

		<h2>EL로 할 수 있는 일들(연산)</h2>

		<div>num1 + 10 = <%= num1 + 10 %></div>
		<div>num1 + 10 = <%= (int)pageContext.getAttribute("num2") + 10 %></div>
		<div>num2 + 10 = ${num2}+10</div>
		<hr>
		
		<div>num2 + 10 = ${num2+10}</div>
		<div>num2 - 10 = ${num2-10}</div>
		<div>num2 * 10 = ${num2*10}</div>
		<div>num2 / 10 = ${num2/10}</div>
		<div>num2 % 10 = ${num2%10}</div>
		<div>num2 mod 10 = ${num2 mod 10}</div>
		
		<hr>
		<div>num2 > 0 = ${num2>0} </div>
		<div>num2 >= 0 = ${num2>=0} </div>
		<div>num2 < 0 = ${num2<0} </div>
		<div>num2 <= 0 = ${num2<=0} </div>
		<div>num2 == 0 = ${num2==0} </div>
		<div>num2 != 0 = ${num2!=0} </div>
		<hr>
		
		<div>${true&&true}</div>
		<div>${true&&false}</div>
		<div>${true||true}</div>
		<div>${true||false}</div>
		<hr>
		
		<div>num2 = ${num2>0?"양수":"음수"}</div>
		<div>${"홍길동" == "홍길동" }</div> <!-- 사용 X -->
		<%-- <div>${"홍길동".equals("홍길동")}</div> <!-- 사용 O --> --%>
		<hr>
		
		<h2>HashMap 출력 지원</h2>
		
		<%
			
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("name","홍길동");
		map.put("age","20");
		map.put("job","학생");
		map.put("phone-number","010");
		
		pageContext.setAttribute("map", map);
		
		
		%>
		
		<div>이름: <%=map.get("name") %></div>
		<div>나이: <%=Integer.parseInt(map.get("age"))-1 %></div>
		<div>직업: <%=map.get("job") %></div>
		<br>
		<div>이름: ${pageConText.getAttribute("map")}</div>
		<div>이름: ${map}</div>
		
		<div>이름: ${map.get("name")}</div>
		<div>이름: ${map.name}</div>
		<div>이름: ${map["name"]}</div>
		
		<div>전화: ${map.phone-number}</div>
		<div>전화: ${map["phone-number"]}</div>
		<div>전화: ${map.age-1}</div>
		
		
		<h2>Java Object 출력 지원</h2>
		
		<%
		
			User hong = new User();
		
		hong.setName("홍길동");
		hong.setNick("멍멍이");
		hong.setInfo("술을 주지 마시오");
			
		
		%>
		
		<div> 이름: <%= hong.getName() %> </div>
		<div> 별명: <%= hong.getNick() %> </div>
		<div> 정보: <%= hong.getInfo() %> </div>
		<br>
		
		<%-- <div>이름: ${hong.getName()}</div> --%>
		<div>이름: ${hong.name}</div> <!--name은 멤버변수 name이 아니다! private로 만들었는데 어떻게 가져오냐? getName을 바꿔준거다!! -->
		
		<hr>
		
		<h2>empty 연산자</h2>
		
		<!-- color 존재 안함(null) -->
		<div>color = ${color}</div>
		<div>color = ${empty color}</div>
		<div>hong = ${empty hong}</div>
		
		
		

	</div>

	<script>
		let name="홍길동";
		let str = `안녕하세여. ${name}입니다.`; // template string
		
		${'#div'}.css('color','red');
		
	</script>
</body>
</html>













