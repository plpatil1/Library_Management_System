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
	int id=Integer.parseInt(request.getParameter("id").trim());
	int status = BookDAO.delById(id);
	if(status>0){
		out.write("Book "+id+" data deleted successfully ");
		request.getRequestDispatcher("booklist.jsp").include(request, response);
	}
	else{
		out.write("Book "+id+" data deletion failed ");
		request.getRequestDispatcher("booklist.jsp").include(request, response);
	}
%>
</body>
</html>