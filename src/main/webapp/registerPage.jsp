<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp" %>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="/resources/style/register.css">
</style>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="reg.jsp" method="post" >
<table>
<tr>
<td>Enter Username</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Enter password</td>
<td><input type="text" name="password"></td>
</tr>
<tr>
<td>Enter email</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Enter phone</td>
<td><input type="text" name="phone" /></td>
</tr>
<tr>
<td>Enter address</td>
<td><input type="text" name="address"></td>
</tr>
<tr>
<td>Select user type</td>
<td><input type="radio" name="userType" value="admin" /> Admin <input type="radio" name="userType" value="user" /> user </td>
</tr>
<tr>
<td><button type="button"><a href="index.jsp">Register Here</a></button></td>
<td><input type="Reset" name="RESET"/></td>
<td><input type="submit" name="SUBMIT"/></td>
</tr>
</table>
</form>
</body>
</html>