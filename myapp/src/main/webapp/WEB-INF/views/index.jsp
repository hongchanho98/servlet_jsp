<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myapp</title>

<%@ include file="/inc/asset.jsp"%>

<style>


	.popup{
		border: 1px solid #999;
		border-radius: 5px;
		width: 300px;
		height: 300px;
		box-shadow: 1px 1px 1px #CCC;
		position: absolute;
		left: 350px;
		top: 70px;
		background-color: white;
	}
	
	.popup .pupup-main{
		padding: 10px
	
	}
	
	.popup .popup-footer{
	border-top: 1px solid #999;
	padding 5px;
	background-color: #eee;
	position: absolute;
	bottom: 0;
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	
	}
	
	.popup .popup-footer label{
		font-weight: normal;
	}
	
	.popup .popup-footer a{
	margin: 5px 5px 0px 0px;
	}
	

</style>

</head>
<body>
	<!-- index.jsp -->
	<%@ include file="/inc/header.jsp"%>

	<section class="main-section">

		<h1>시작페이지</h1>

		<div>웹 시작 페이지 입니다.</div>

		<!-- 쿠키 사용 예: 팝업 제어 -->

		<div class="popup">
			<div class="popup-main">
				<h3>공지사항</h3>
				<div>- 새로운 기능이 추가되었습니다.</div>
				<div>- 새로운 기능이 추가되었습니다.</div>
				<div>- 새로운 기능이 추가되었습니다.</div>
				<div>- 새로운 기능이 추가되었습니다.</div>
				<div>- 새로운 기능이 추가되었습니다.</div>
			
			</div>
			<div class="popup-footer">
				<label>
					<input type="checkbox" id="cbpopup" />
					24시간 동안 열지 않겠습니다.
				</label>
				<a href="#!" title="닫기">&times;</a>
			</div>
		
		
		</div>
		
		
		
	</section>	
	
	
	<%@ include file="/inc/init.jsp" %>
	<script>
	
	
		//클라이언트(고객)이 한 핸동에 대한 정보를 저장하고 싶을 때
		//  정보의 성질? + 정보 활용 시 상황? + 저장 기간
		// 1. DB
		// 2. session
		// 3. cookie
	
		$('.popup-footer > a').click(function(){
			
			$('.popup').hide();
			
			if($('#cbpopup').prop('checked')){
				setCookie('popup','1',1);
			}
			
		});
		
		if(getCookie('popup') !=null && getCookie('popup') !== ''){
			
			$('.popup').hide();
		}
		
		
	</script>
</body>
</html>















