<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.entity.Book,com.app.DAO.BookDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Book book = BookDAO.getBookById(id);
	pageContext.setAttribute("book", book);
	
%>
<button type="button" ><a href="logout.jsp">LOGOUT</a></button>>
<form action="editBook.jsp" method="post">
<input type="hidden" name="id" value="<%= book.getId() %>"/>
<table border="1">
<tr>
<td>Enter Title</td>
<td><input type="text" name="title" value="<%= book.getTitle() %>"/></td>
</tr>
<tr>
<td>Enter Author</td>
<td><input type="text" name="author" value="<%= book.getAuthor() %>" /></td>
</tr>
<tr>
<td>Enter Quantity </td>
<td><input type="text" name="quantity"  value="<%=book.getQuantity()%>" /></td>
</tr>
<tr>
<td>Enter Availaiblity</td>
<td><input type="text" name="availaible" value="<%= book.getAvailaible() %>" /></td>
</tr>
<tr>
<td><input type="reset" name="RESET"></td>
<td><input type="submit" name="SUBMIT"></td>
</tr>
</table>
</form>

</body>
</html>