<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myapp</title>

<%@ include file="/inc/asset.jsp" %>



<style>
	
</style>

</head>
<body>
	<!-- ex02.jsp -->
	<%@ include file="/inc/header.jsp" %>
	
	<section class="main-section">
		
		<h1>Map API <small>좌표 이동 + 레벨 변경</small></h1>
		
		<div id="map" style="width:100%; height:400px;"></div>
		
		<hr>
		
		<div>
			<div class="btn-group" role="group">
				<input type="button" class="btn btn-default" id="btn1" value="서울역으로 이동하기" />
				<input type="button" class="btn btn-default" id="btn2" value="역삼역으로 이동하기" />
			</div>
			<hr />
			<div class="btn-group" role="group">
				<input type="button" class="btn btn-default" id="btn3" value="확대하기" />
				<input type="button" class="btn btn-default" id="btn4" value="축소하기" />
			</div>
			<hr />
			<div class="btn-group" role="group">
				<input type="button" class="btn btn-default" id="btn5" value="드래그 On/Off" />
				<input type="button" class="btn btn-default" id="btn6" value="줌 On/Off" />
			</div>
		</div>
		
		
	</section>	
	
	
	<%@ include file="/inc/init.jsp" %>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00b155f5bebe1f869e80372342e6c30b"></script>
	<script>
	
	var container = document.getElementById('map');// 지도를 넣기위한 태그
	
	var options ={
		
		center: new daum.maps.LatLng(37.499286, 127.033168), // 지도의 중앙 좌표
		level: 3                       // 지도의 레벨(확대,축소) 1이 가장 확대
	};
	
	var map = new daum.maps.Map(container,options); // 지도 생성(*****)
	
	
	// 추가 설정
	var mapTypeControl = new daum.maps.MapTypeControl();
	map.addControl(mapTypeControl,daum.maps.ControlPosition.TOPRIGHT);
	
	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl,daum.maps.ControlPosition.Right);
	
	
	//지도 드래그
	//map.setDraggable(false);//기본값 true라서 드래그 가능
	
	//지도 확대/축소 유무
	//map.setZoomable(false);//기본값 true라서 확대 축소 가능
	
	
	
	//버튼 클릭 > 해당 위치로 이동 
	// 서울역
	$('#btn1').click(function(){
		
		//이동할 좌표?
		var seoulStation = new daum.maps.LatLng(37.553162, 126.972710);
		map.setCenter(seoulStation);
		
	});
	
	// 역삼
	$('#btn2').click(function(){
		
		//이동할 좌표?
		var yeoksamStation = new daum.maps.LatLng(37.500578, 127.036405);
		map.setCenter(yeoksamStation);
		
	});
	
	
	//지도 확대/축소 제어하기
	$('#btn3').click(function(){
		
		map.setLevel(map.getLevel()-1);
		
	});
	
	
	$('#btn4').click(function(){
		
		map.setLevel(map.getLevel()+1);
		
	});
	
	
	//드래그 On/Off
	$('#btn5').click(function(){
		
		//alert(map.getDraggable());
		
		if(map.getDraggable()){
			map.setDraggable(false);
			$(this).removeClass('btn-default');
			$(this).addClass('btn-primary');
		}else{
			map.setDraggable(true);
			$(this).removeClass('btn-primary');
			$(this).addClass('btn-default');
		}
		
	});
	
	
	//줌 On/Off
	$('#btn6').click(function(){
		
		//alert(map.getDraggable());
		
		if(map.getDraggable()){
			map.setZoomable(false);
			$(this).removeClass('btn-danger');
			$(this).addClass('btn-default');
		}else{
			map.setZoomable(true);
			$(this).removeClass('btn-default');
			$(this).addClass('btn-danger');
		}
		
	});
	
	
	
		
	</script>
</body>
</html>















