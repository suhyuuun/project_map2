<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.annotation.WebServlet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String lat = request.getParameter("latitude");
String lng = request.getParameter("longitude");
%>
<title>상세페이지 지도</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=85e3a2b784700813659ca3ae8da46d29"></script>

</head>
<body>
	<!-- 이미지 지도를 표시할 div 입니다 -->
	<div id="staticMap" style="width: 600px; height: 350px;"></div>

</body>
<script>
	var lat = <%=lat%>;
	var lng = <%=lng%>;
	function smallmap(latitude, longitude) {
		// 이미지 지도에서 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(latitude, longitude);

		// 이미지 지도에 표시할 마커입니다
		// 이미지 지도에 표시할 마커는 Object 형태입니다
		var marker = {
			position : markerPosition
		};

		var staticMapContainer = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
		staticMapOption = {
			center : new kakao.maps.LatLng(latitude, longitude), // 이미지 지도의 중심좌표
			level : 3, // 이미지 지도의 확대 레벨
			marker : marker
		// 이미지 지도에 표시할 마커 
		};

		// 이미지 지도를 생성합니다
		var staticMap = new kakao.maps.StaticMap(staticMapContainer,
				staticMapOption);
	}

	smallmap(lat, lng);
</script>
</html>