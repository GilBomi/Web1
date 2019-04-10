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
String number1=request.getParameter("number1");
number1=number1==null?"":number1;
Boolean selectOne=("one").equals(number1);
Boolean selectTwo=("two").equals(number1);
Boolean selectThree=("three").equals(number1);
%>
	<form>
	<h3>select1:</h3>
	<select name="number1">
		<option value="one" <%=selectOne?"selected":""%>>one</option>
		<option value="two" <%=selectTwo?"selected":""%>>two</option>
		<option value="three" <%=selectThree?"selected":""%>>three</option>
	</select>
	<br>
	<label><input type="radio" name="number2" value="one" <%=selectOne?"checked":""%>>one</label>
	<label><input type="radio" name="number2" value="two" <%=selectTwo?"checked":""%>>two</label>
	<label><input type="radio" name="number2" value="three" <%=selectThree?"checked":""%>>three</label>
	<br>
	<input type="text" name="number3" value="<%=number1 %>">
	<br>
	<input type="submit" name="submit" value="확인">
	</form>
</body>
</html>