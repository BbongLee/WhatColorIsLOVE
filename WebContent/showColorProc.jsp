<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="color.css">
<style>
form{
display:inline-block;
}
.hi input[type="submit"]{
padding:30px;
font-size:20px;
background:#FEAC5E;
color:black;
}
#btttt{
margin-top:15%;
}
</style>
</head>
<body>
<div id="btttt">
<form class="hi" action="showColorWordProc.jsp">
<input type="hidden" name="word" value="love">
<input type="submit" id="love" value="사랑"  class="button">
</form>
<form class="hi" action="showColorWordProc.jsp">
<input type="hidden" name="word" value="sorrow">
<input type="submit" id="sorrow" value="슬픔" class="button">
</form>
<form class="hi" action="showColorWordProc.jsp">
<input type="hidden" name="word" value="hope">
<input type="submit" id="hope" value="희망" class="button">
</form>
<form class="hi" action="showColorWordProc.jsp">
<input type="hidden" name="word" value="hate">
<input type="submit" id="hate" value="미움" class="button">
</form>
<form class="hi" action="showColorWordProc.jsp">
<input type="hidden" name="word" value="joy">
<input type="submit" id="joy" value="기쁨" class="button">
</form>
</div>
</body>
</html>
