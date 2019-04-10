<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date,java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Date today=new Date();
	SimpleDateFormat f1=new SimpleDateFormat("yyyy-mm-dd a hh:mm:ss");
	SimpleDateFormat f2=new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
	SimpleDateFormat f3=new SimpleDateFormat("yy-mm-dd a hh:mm:ss");
	%>
	<H1>날짜 출력</H1>
	<%=f1.format(today) %>
	<%=f2.format(today) %>
	<%=f3.format(today) %>
</body>
</html>