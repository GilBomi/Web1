<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%for(int i=8;i<=30;i+=2) {%>
		<div style="font-size:<%=i %>pt;">
		안녕 JSP! <%=i %>pt
		</div>
	<% }%>
	
	<% int p;%>
	<%=p=3%>
	<%=Math.abs(-7) %>
	
</body>
</html>