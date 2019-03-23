<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1; style="border-collapse:collapse;">
<%for(int i=0;i<2;i++) { 
	out.println("<tr>");
	for(int j=2;j<6;j++) {
		out.println("<td>");
		for(int k=1;k<10;k++) {
			out.print((j+4*i)+"*"+k+"="+(j+4*i)*k+"<br>");
		}
		out.println("</td>");
	}
	out.println("</tr>");
}%>
</table>
</body>
</html>