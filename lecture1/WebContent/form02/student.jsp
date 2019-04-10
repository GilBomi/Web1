<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lecture1.form02.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
id=(id==null)?"":id;
String num=request.getParameter("num");
num=(num==null)?"":num;
String name=request.getParameter("name");
name=(name==null)?"":name;
String department=request.getParameter("department");
department=(department==null)?"":department;
String grade=request.getParameter("grade");
grade=(grade==null)?"":grade;
String error="";

if("POST".equals(request.getMethod())) {
	if(id.equals("")) 
		error="학생 등록 실패: id를 입력하세요";
	else if(num.equals(""))
		error="학생 등록 실패: 학번을 입력하세요";
	else if(name.equals(""))
		error="학생 등록 실패: 이름을 입력하세요";
	else if(grade.equals(""))
		error="학생 등록 실패: 학년을 입력하세요";
	else {
		Student student = new Student(Integer.parseInt(id),num, name, Integer.parseInt(department), Integer.parseInt(grade));
		/*Student 객체 만드는데 이름을 student라 하기*/
		session.setAttribute("student1",student);
		/*student1이라는 이름을 가진 데이터가 세션에 만들어지고 그 안에 위에서 만든 객체 student 넣기*/
		response.sendRedirect("student_success.jsp");
		return;
	}
}

%>
	<h1>학생 등록</h1>
	<hr /> <!-- 선 긋기 -->
	<div class="container">
		<form method="post">
			<h4>ID</h4>
			<input type="text" class="form-control" name="id" value="<%=id%>">
			<h4>학번</h4>
			<input type="text" class="form-control" name="num" value="<%=num%>">
			<h4>이름</h4>
			<input type="text" class="form-control" name="name" value="<%=name%>">
			<h4>학과</h4>
			<select class="form-control" name="department">
				<option value="0" <%=department.equals("0")?"selected":"" %>>소프트웨어공학과</option>
				<option value="1" <%=department.equals("1")?"selected":"" %>>컴퓨터공학과</option>
				<option value="2" <%=department.equals("2")?"selected":"" %>>정보통신공학과</option>
			</select>
			<h4>학년</h4>
			<input type="text" class="form-control" name="grade" value="<%=grade%>">
			<br>
			<input type="submit" class="btn btn-primary" value="저장">
		</form>
	</div>
	<hr>
	<% if(error.length()!=0) {%>
	<div class="alert alert-danger">
	<%=error %>
	</div>
	<%}%>
</body>
</html>