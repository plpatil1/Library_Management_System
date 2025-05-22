<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.DAO.BookDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="book" class="com.app.entity.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>

<%
	int addBook=BookDAO.addBook(book);
	if(addBook>0){
		/* out.print("Book data inserted Successfully!!"); */
		response.sendRedirect("booklist.jsp");
	}
	else{
		out.print("Book data insertion failed");
		request.getRequestDispatcher("addBookForm.jsp").include(request, response);
	}
%>
</body>
</html>