<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<button type="button" ><a href="logout.jsp">LOGOUT</a></button>>
<form action="addBook.jsp" method="post">
<table border="1">
<tr>
<td>Enter Title</td>
<td><input type="text" name="title"/></td>
</tr>
<tr>
<td>Enter Author</td>
<td><input type="text" name="author" /></td>
</tr>
<tr>
<td>Enter Quantity </td>
<td><input type="text" name="quantity" /></td>
</tr>
<tr>
<td>Enter Availaiblity</td>
<td><input type="text" name="availaible"/></td>
</tr>
<tr>
<td><input type="reset" name="RESET"></td>
<td><input type="submit" name="SUBMIT"></td>
</tr>
</table>
</form>
</body>
</html>