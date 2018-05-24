<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>What Color is LOVE?</title>
<link rel="stylesheet" type="text/css" href="color.css">
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

</style>
</head>
<body>
	<%
		String contentpage = request.getParameter("CONTENTPAGE");
	%>

	<div id="main">
	
	<h1><a href="first.jsp">단어에 <b class="grad">색</b> 입히기</a></h1>
	<button onclick="location.href='Main.jsp'" class="button" style="left:20%;"><span>참여하기</span></button> 
	<button onclick="location.href='showColor.jsp'" class="button" style="right:20%;"><span>무슨 색일까?</span></button>
	<div id="content">
	<jsp:include page="<%= contentpage %>"></jsp:include>
	</div>
	</div>
</body>
</html>
    