<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.entity.Book,com.app.DAO.BookDAO,java.util.*" errorPage="error.jsp" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="sessionvalid.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<button type="button" ><a href="addBookForm.jsp">AddBook</a></button>>
<button type="button" ><a href="logout.jsp">LOGOUT</a></button>>
<%
	session=request.getSession(false);
if(session!=null){
	List<Book> list=BookDAO.getAllBooks();
	pageContext.setAttribute("booklist", list);
}
else{
	response.sendRedirect("index.jsp");
}
	
	
%>
<table border="1" style="text-align:center;">
<tr>
<th>ID</th> 
<th>TITLE</th>
<th>AUTHOR</th>
<th>QUANTITY</th>
<th>AVAILAIBLITY</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach var="temp" items="${ booklist}" >
<tr>
<td>${temp.id }</td> 
<td>${temp.title }</td>
<td>${temp.author }</td>
<td>${temp.quantity }</td>
<td>${temp.availaible }</td>
<td><button type="button" ><a href="editBookForm.jsp?id=${temp.id }" >Edit</a></button></td>
<td><button type="button" ><a href="delBook.jsp?id=${temp.id }" >Delete</a></button></td>

</tr>
</c:forEach>
</table>

</body>
</html>