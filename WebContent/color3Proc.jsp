<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAD</title>
<link rel="stylesheet" type="text/css" href="color.css">
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

</style>
</head>
<body>
<%
String name = (String)session.getAttribute("name");
%>

<h2><b>"<%= name %>"</b>님이 생각하는 <b class="grad">희망(hope)</b>은 무슨 색인가요?</h2><br>
<form action="saveColor.jsp">
<input type="hidden" name="word" value="hope">
<jsp:include page="colorForm.jsp" flush="false"/>
</form>
</body>
</html>
