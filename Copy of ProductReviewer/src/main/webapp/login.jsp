<%@ page import="com.psl.bean.Login" %>
<%@ page import="com.psl.dao.LoginDaoImpl" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign-in Page</title>
</head>
<body>
<%
   String user = request.getParameter("uname");    
   String pwd = request.getParameter("pwd");
  System.out.println("username " +user);
  System.out.println("username " +pwd);
 
  
  LoginDaoImpl obj=new LoginDaoImpl();
    
    System.out.println("here");
    
    
    
    String message = "";
 	if(obj.verifyLogin(user, pwd)){
	
		message = "Login successful";
	 	System.out.println("Success");
	 	request.setAttribute("username", user);
	 	RequestDispatcher rs = request.getRequestDispatcher("validlogin.jsp");
		rs.forward(request, response); 
	 	//response.sendRedirect("validlogin.jsp"); 
	}
 else{
	 message = "Invalid username or password..";
	 System.out.println("fail");
	%>
	<script>
	alert(message);
	
	</script>
	<%
	 //response.sendRedirect("Invalidlogin.html");
 }
 %>
       
       

</body>
</html>
