<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
#word {
	font-size: 12em;
	font-family: 'Nanum Myeongjo'; 
	margin:5px;
	text-align: center;
}
#colorBars{
height:90%:
}
.colorbar{
height:20px;
display:inline-block;
}
.centre-align {
    padding: 10px;
    display: table;
    text-align: center;
    vertical-align: middle;
}
.names{
	height: 100px;
	display:inline-block;
   text-align: center;
   font-size:18px;
   margin-top:40px;
   padding:2.5px;
   vertical-align: top;
}
</style>
<link rel="stylesheet" type="text/css" href="color.css">
</head>
<body>
	<%
		String word = request.getParameter("word");
	%>
	<%
		int colorCount[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
		String colorName[] = {"","","","","","","","","","","","","",""};
		String colors[] = {"#FF0000", "#FF5E00", "#FFBB00", "#FFE400", "#ABF200", "#1DDB16", "#5CD1E5", "#0054FF",
				"#050099", "#5F00FF", "#A566FF", "#FF48FF", "#FF007F", "#000000"};
		int cnt = 0;
		String korWords[] = {"사랑", "슬픔", "희망", "미움", "기쁨"};
		String engWords[] = {"love", "sorrow", "hope", "hate", "joy"};

		BufferedReader reader = null;
		try {
			String filePath = application.getRealPath("/WEB-INF/bbs/" + word + ".txt");
			reader = new BufferedReader(new FileReader(filePath));

			while (true) {
				String str = reader.readLine();
				if (str == null)
					break;
				String name = str.split("\t")[0];
				int colorIndex = Integer.parseInt(str.split("\t")[1]);
				colorName[colorIndex]+=name+"<br>";
				//out.print(name+" "+colorIndex+" "+colorName[colorIndex]+"<br>");
				colorCount[colorIndex]++; //색 count
				cnt++;
				
				//out.print(str+"<br>");
			}
		} catch (Exception e) {
			out.println("파일을 읽을 수 옶서요");
		}
		String colorCss = "";
		int perc = 0;
		int countSub = 0;
		int nuPerc = 0;
		String colorBar =""; 
		for (int i = 0; i < 14; i++) {
			String colorNames = "";
			//out.println("ggg "+i+" "+colorCount[i]+" "+cnt+" pe:"+perc+"<br>");
			if (colorCount[i] != 0) { //colorCount가 차있을때!
				perc = (int) ((double) colorCount[i] / (double) cnt * 100);
				nuPerc += perc;
				if (i < 14) {
					//out.print("wait:"+i+"<br>");
					
					colorCss += colors[i] + " " + nuPerc + "%, ";
					//out.print("color:"+colors[i]+"<br>");
				} else {
					//colorCss += colors[i]+" ";
					colorCss += colors[i] + " " + nuPerc + "%";
				}
				//for(int j=0; j<colorCount[i]; j++){
					colorNames += colorName[i];
				//}
				colorBar += "<div class='colorbar' style='width:"+perc+"%; background:"+colors[i]+";'>"+
				"<div class='centre-align'><div class='names'>"+colorNames+"</div></div></div>";
				countSub++;
			}

			//	out.println("삐삐ㅃ"+i+" "+countSub+" "+colorCss.substring(0, colorCss.length()-3));
		}
		%>
		
		<%
		if (countSub < 14) {
			colorCss = colorCss.substring(0, colorCss.length() - 2);
		}
		String korWord = "";
		String engWord = "";
		for (int i = 0; i < engWords.length; i++) {
			if (engWords[i].equals(word)) {
				korWord = korWords[i];
				engWord = engWords[i].toUpperCase();
				break;
			}
		}
	%>
	<div id="main">
		<h1>당신이 생각하는 단어의 <b class="grad">색</b></h1>
		<button onclick="location.href='Main.jsp'" class="button">
			<span>참여하기</span>
		</button>
		<button onclick="location.href='showColor.jsp'" class="button">
			<span>무슨 색일까?</span>
		</button>
		
		<div id="content">
			<!-- <h3>파일 이름 : word</h3> -->
			<div style="left: 40%; bottom: 50px; margin-bottom:20px;">
				<button onclick="toKor()" class="button" style="background-color:#F17C67; width:60px; float:left;">한글</button>
				<button onclick="toEng()" class="button" style="background-color:#F17C67; width:60px; float:right;">영어</button>
			</div>
			<b id='word' style="background:linear-gradient(to right, <%=colorCss%>);-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;"><%=korWord%></b><br>
		<div id="colorBars"><%=colorBar%></div>
			<script type="text/javascript">
			function toKor(){
				document.getElementById("word").innerHTML="<%=korWord%>";
			}
			function toEng(){
				document.getElementById("word").innerHTML="<%=engWord%>";
			}
			</script>
			
		</div>
	</div>
	<br>
	<br>
</body>
</html>
