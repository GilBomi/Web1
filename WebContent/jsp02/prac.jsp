<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  for (int i=1; i <= 10; ++i) { %>
     4 * i = 4 * i
<%  } %>
<br>
<%  for (int i=1; i <= 10; ++i) { %>
     <%= 4 * i %> = <%= 4 * i %>
<%  } %>
<br>
<%  for (int i=1; i <= 10; ++i) { %>
     <%= 4 %> * <%= i %> = <%= 4 * i %>
<%  } %>
<br>
<%  for (int i=1; i <= 10; ++i) { %>
     4 * <%= i %> = <%= 4 * i %>
<%  } %>
<br>
<tr>
<%  for (int i=1; i <= 10; ++i) { %>
     <td>4 * <%= i %> = <%= 4 * i %></td>
<%  } %>
</tr>
<br>
<td>
<%  for (int i=1; i <= 10; ++i) { %>
     4 * <%= i %> = <%= 4 * i %><br />
<%  } %>
</td>
<br>
<br>
<%="asdfeg" %>
<%out.println("asdfeg2"); %>

</body>
</html>