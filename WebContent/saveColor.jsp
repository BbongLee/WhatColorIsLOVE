<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	String word;
	String palate;
	String name;
	int color;
%>
	<%
	request.setCharacterEncoding("UTF-8");
	word = request.getParameter("word");
	palate = request.getParameter("palate");
	name = (String)session.getAttribute("name");
	
	String colors[] = {"#FF0000","#FF5E00","#FFBB00","#FFE400","#ABF200","#1DDB16","#5CD1E5",
			"#0054FF","#050099","#5F00FF","#A566FF","#FF48FF","#FF007F","#000000"};
	
	for(int i=0; i<14; i++){
		String num = ("c"+i).toString();
		if(palate.equals(num)){
			color = i;
		}
	}
	
	
	PrintWriter writer = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/bbs/"+word+".txt");
		//out.println(filePath);
		writer = new PrintWriter(new FileWriter(filePath, true));
		writer.println(name+'\t'+color);
		
		//out.println("<font color='red'>게시물</font>저장되어쑤");
		writer.flush();
	}
	catch(Exception e){
		out.println("오류 발생");
		e.printStackTrace();
	}
		if (word.equals("love")) {
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color2.jsp';</script>");
		}else if (word.equals("sorrow")) {
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color3.jsp';</script>");
		}else if (word.equals("hope")) {
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color4.jsp';</script>");
		}else if (word.equals("hate")) {
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color5.jsp';</script>");
		}else if (word.equals("joy")) {
			out.println("<script>alert('끝이에요!'); location.href='colorWait.jsp';</script>");
		}
	%>

	<div style="color:<%=color%>">
		<%=word%>
	</div>

</body>
</html>
