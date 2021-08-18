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
	<!-- ex01.jsp -->
	<%@ include file="/inc/header.jsp" %>
	
	<section class="main-section">
		
		<h1>Map API <small>클릭 이벤트 + 마커 표시</small></h1>
		
		<div id="map" style="width:100%; height:400px;"></div>
		<hr />
		<div class="well" id="msg"></div>
		
		
	</section>	
	
	
	<%@ include file="/inc/init.jsp" %>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00b155f5bebe1f869e80372342e6c30b"></script>
	<script>
	
	var container = document.getElementById('map');// 지도를 넣기위한 태그
	
	var options ={
		
		center: new daum.maps.LatLng(37.499331, 127.033181), //지도의 중앙 좌표
		level: 3                       // 지도의 레벨(확대,축소) 1이 가장 확대
	};
	
	var map = new daum.maps.Map(container,options); // 지도 생성(*****)
	
	
	
	
	
	//이벤트 제어
	//map.onclick=function(){alert();}; //BOM
	//map.addEventListener('click',function (){});//DOM
	
	
	let marker=null;
	
	daum.maps.event.addListener(map,'click',function(evt){
		
		//alert(evt.latLng);
		//$('#msg').text(evt.latLng);
		
		let msg = '클릭한 위치는 위도('+(evt.latLng.getLat())+'),경도('+(evt.latLng.getLng())+') 입니다.';
		$('#msg').text(msg);
		
		
		//기존에 찍은 마커가 있으면 삭제하기
		if(marker!= null){
			marker.setMap(null);
		}
		
		// 클릭 >좌표 > 마커 표시하기(동적)
		marker = new daum.maps.Marker({
			position: evt.latLng
		});
		
		marker.setMap(map);
		
	});
	
	
	//마커 표시하기(정적)
	
	//var marker1 = new daum.maps.Marker({
	//	position: new daum.maps.LatLng(37.499881, 127.033090)
	//});
	
	//생성한 마커를 지도와 연결하기
	marker1.setMap(map);
	
	
	let list=[
		   {
			      "name": "한독빌딩",
			      "position": { "lat" : 37.499330, "lng" : 127.033181 }
			   }, 
			   {
			      "name": "역삼역",
			      "position": { "lat" : 37.500089, "lng" : 127.035399 }
			   }, 
			   {
			      "name": "롯데리아",
			      "position": { "lat" : 37.498556, "lng" : 127.030443 }
			   }, 
			   {
			      "name": "국민은행",
			      "position": { "lat" : 37.499707, "lng" : 127.032141 }
			   }, 
			   {
			      "name": "신한은행",
			      "position": { "lat" : 37.499944, "lng" : 127.035494 }
			   }, 
			   {
			      "name": "파리바게뜨",
			      "position": { "lat" : 37.499378, "lng" : 127.034302 }
			   }, 
			   {
			      "name": "뚜레쥬르",
			      "position": { "lat" : 37.499097, "lng" : 127.034532 }
			   }, 
			   {
			      "name": "세븐일레븐",
			      "position": { "lat" : 37.499028, "lng" : 127.033160 }
			   }, 
			   {
			      "name": "CU",
			      "position": { "lat" : 37.498798, "lng" : 127.033485 }
			   }, 
			   {
			      "name": "세븐스프링스",
			      "position": { "lat" : 37.498982, "lng" : 127.032267 }
			   }
			];
		
		$(list).each(function(index,item){
			
			let m = new daum.maps.Marker({
				position: new daum.maps.LatLng(item.position.lat,item.position.lng)
			});
			//m.setMap(map);
			
		});
	
	</script>
</body>
</html>















