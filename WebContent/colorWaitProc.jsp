<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAD</title>

</head>
<body>
<%
String name = (String)session.getAttribute("name");
%>

<b><%= name %></b>님! 기다려주세용 !<br>

</body>
</html>
