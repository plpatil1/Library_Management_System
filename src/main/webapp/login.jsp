<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.app.entity.User,com.app.DAO.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String username = request.getParameter("name");
	String password = request.getParameter("password");
	String usertype = request.getParameter("usertype");
	boolean isLog = UserDAO.isLogin(username, password, usertype);
	
	if(isLog){
		/* out.print("Welcome "+username); */
		
		session.setAttribute("username", username);
		session.setAttribute("usertype", usertype);
		session.setMaxInactiveInterval(10); 
		response.sendRedirect("booklist.jsp");
	}
	else{
		out.print("Login Failed");
		request.getRequestDispatcher("index.jsp").include(request, response);
	}
%>
</body>
</html>