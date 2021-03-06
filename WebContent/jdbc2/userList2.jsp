<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*" %>
<%
String s = request.getParameter("departmentId");
int departmentId = (s == null) ? 0 : Integer.parseInt(s);
List<User> list;
if (departmentId == 0) list = UserDAO2.findAll();
else list = UserDAO2.findDepartment(departmentId);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
      thead th { background-color: #eee; }
      table.table { width: 700px; margin-top: 10px; }
  </style>
</head>
<body>

<div class="container">

<h1>학생목록</h1>

<form class="form-inline">
  <div class="form-group">
    <label>학과</label>
    <select name="departmentId" class="form-control">
      <option value="0" <%= departmentId == 0 ? "selected" : "" %>>전체</option>
      <% for (User u : UserDAO2.findAll()) { %>      
        <option value="<%= u.getId() %>" <%= departmentId == u.getId() ? "selected" : "" %>>
          <%= u.getDepartmentName() %>
        </option>
      <% } %>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">조회</button>
</form>

<table class="table table-bordered table-condensed">
    <thead>
        <tr>
            <th>아이디</th>
            <th>이름</th>
            <th>학과</th>
            <th>학년</th>
            <th>타입</th>
        </tr>
    </thead>
    <tbody>
        <% for (User user : list) { %>
            <tr>
                <td><%= user.getUserid() %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getDepartmentName() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getUserType() %></td>
            </tr>
        <% } %>
    </tbody>
</table>

</div>
</body>
</html>
