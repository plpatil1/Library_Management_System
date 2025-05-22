<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.entity.Book,com.app.DAO.BookDAO" %>
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
	book.setId(Integer.parseInt(request.getParameter("id").trim()));
	int status = BookDAO.updateBook(book);
	if(status==1){
		out.print("Book Information updated Successfully");
		request.getRequestDispatcher("booklist.jsp").include(request, response);
	}
	else{
		out.print("Update failed!!");
		request.getRequestDispatcher("editBookForm.jsp").include(request, response);
	}
%>
</body>
</html>