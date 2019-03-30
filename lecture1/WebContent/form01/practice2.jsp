<!-- 03입력폼#1 2)구현 실습 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String n=request.getParameter("number");
int number=(n==null)?0:Integer.parseInt(n);
String plus=request.getParameter("plus");
number=(plus!=null)?++number:number;
String minus=request.getParameter("minus");
number=(minus!=null)?--number:number;
%>
	<form>
		<h5>number:</h5>
		<input type="text" name="number" value="<%=number%>">
		<br><br>
		<input type="submit" name="plus" value="++">
		<input type="submit" name="minus" value="--">
	</form>
</body>
</html>