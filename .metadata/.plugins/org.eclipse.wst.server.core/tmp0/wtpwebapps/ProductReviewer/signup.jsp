 <%@page import="com.psl.bean.CustomerStatus"%>
<%@ page import="com.psl.dao.LoginDaoImpl" %>
<%@ page import="com.psl.dao.CustomerDaoImpl" %>
<%@ page import="com.psl.bean.Login" %>
<%@ page import="com.psl.bean.Customer" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign-up Page</title>
</head>
<body>
<%
String firstName = request.getParameter("fname");    
String lasName = request.getParameter("lname");    
String userName = request.getParameter("uname"); 
String email = request.getParameter("email");
String contact = request.getParameter("contact");    
String pwd = request.getParameter("pwd");
String confirmPwd = request.getParameter("confirmpwd");

System.out.println(firstName);


Customer cust = new Customer();
cust.setFirstName(firstName);
cust.setLastName(lasName);
cust.setEmail(email);
cust.setContactNo(contact);
cust.setStatus(CustomerStatus.ACTIVE);

Login login=new Login();
login.setUsername(userName);
login.setPassword(pwd);
login.setCustomer(cust);

cust.setLogin(login);



CustomerDaoImpl custDao = new CustomerDaoImpl();

custDao.insertCustomer(cust);







//loginDao.insertLogin(login);


%>
</body>
</html>