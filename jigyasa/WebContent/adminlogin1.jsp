<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JIGYASA - desire to learn</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/jigyasa";
String Username="root";
String dbpassword="";
Connection con;
Statement stmt;
java.sql.ResultSet rs;
String name=null;
String emailid=null;
try{
	/*register driver*/
	Class.forName(driver);
	/*create connection*/
	con=DriverManager.getConnection(url,Username,dbpassword);
	/*create statement*/
	stmt=con.createStatement();
	/*execute query*/
	rs=stmt.executeQuery("SELECT * FROM `admin_profile` WHERE username='"+username+"' and password='"+password+"'");
	if(rs.next()){
	//out.println("You are successfully logged in");
    emailid=rs.getString("email");
	name=rs.getString("name");
	
	session.setAttribute("username",username);
	session.setAttribute("name",name);
	session.setAttribute("email", emailid);
    response.sendRedirect("testseriesadmin.jsp");
	}
	else{
		
		response.sendRedirect("adminloginfail.jsp");
	}
	}catch(Exception e){
   e.printStackTrace();			
	}
%>




</body>
</html>