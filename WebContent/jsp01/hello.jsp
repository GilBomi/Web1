<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!--서버에 전달(톰캣 서버가 웹브라우저에는 전달 안함)  -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <!-- 웹브라우저에 전달(meta~) -->
</head>
<body>

<h1>안녕 JSP!</h1>
<% out.print("<H1>안녕 JSP!123</H1>"); %> <!--동적(out은 서버에서 실행해서 웹 브라우저에 전달은 안하고 출력만 되게함)  -->

</body>
</html>
