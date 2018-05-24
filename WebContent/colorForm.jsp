<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>color form</title>
<link rel="stylesheet" type="text/css" href="color.css">
<style>
#radios{
padding:20px;
}
</style>
</head>
<body>
<div class="container">
	<div id="radios">
	<%
	String colors[] = {"#FF0000","#FF5E00","#FFBB00","#FFE400","#ABF200","#1DDB16","#5CD1E5",
			"#0054FF","#050099","#5F00FF","#A566FF","#FF48FF","#FF007F","#000000"};
	
	for (int i=0; i<14; i++){
		out.println("<label for=c"+i+" class='material-icons'>");
		out.println("<input type='radio' name='palate' id=c"+i+" value=c"+i+" required>");
		out.println("<span style='color:"+colors[i]+"'>&#127900;</span>");
		out.println("</label>");
	}
	%>
	
	</div>
</div>
	<br><br>
	<input type="submit" value="Next" class="button">
</body>
</html>
