<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Library Management System</h1>
<br><hr><br>
<form action="login.jsp" method="post" >
<table>
<tr>
<td>Enter Username</td>
<td><input type="text" name="name" /></td>
</tr>
<tr>
<td>Enter Password</td>
<td><input type="text" name="password" /></td>
</tr>
<tr>
<td>Select User Type</td>
<td><input type="radio" name="usertype" value="admin" /> Admin <input type="radio" name="usertype" value="user" /> User </td>
</tr>
<tr>
<td><button type="button"><a href="registerPage.jsp">Register Here</a></button></td>
<td><input type="reset" name="RESET"/></td>
<td><input type="submit" name="SUBMIT"/></td>
</tr>
</table>
</form>
</body>
</html>