<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lecture1.form02.*"%>
<%Student student=(Student)session.getAttribute("student1"); %>
<!-- session에서 만들어진 student1을 다시 받아오는데 받아올때는 형변환 필요 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%

%>
	<h1>학생등록 성공</h1>
	<hr>
	<table class="table">
		<tr>
			<td>ID</td>
			<td><%=student.getId() %></td>
		</tr>
		<tr>
			<td>학번</td>
			<td><%=student.getStudentNumber() %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=student.getName() %></td>
		</tr>
		<tr>
			<td>학과ID</td>
			<td><%=student.getDepartmentId() %></td>
		</tr>
		<tr>
			<td>학년</td>
			<td><%=student.getYear() %></td>
		</tr>
		
	</table>
</body>
</html>