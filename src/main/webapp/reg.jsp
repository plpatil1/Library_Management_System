<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.entity.User,com.app.DAO.UserDAO" errorPage="error.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.app.entity.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
	int status=UserDAO.RegisterUser(user);
	if(status>0){
		out.print("User Registration succesfull!!");
		request.getRequestDispatcher("registerPage.jsp").include(request, response);
	}
	else{
		out.print("User Registration Failed!!");
		request.getRequestDispatcher("registerPage.jsp").include(request, response);
	}
	
%>
</body>
</html>