<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<body>

 <%
String name=request.getParameter("name");
String reply=request.getParameter("reply");
String driver2="com.mysql.jdbc.Driver";
String url2="jdbc:mysql://localhost:3306/jigyasa";
String Username2="root";
String dbpassword2="";
Connection con2;
Statement stmt2;
//String sid=request.getParameter("doubt_id"); 
int did=Integer.parseInt(request.getParameter("doubt_id"));


//java.sql.ResultSet rs;
try{
	/*register driver*/
	Class.forName(driver2);
	/*create connection*/
	con2=DriverManager.getConnection(url2,Username2,dbpassword2);
	/*create statement*/
	stmt2=con2.createStatement();
	/*execute query*/
stmt2.executeUpdate("INSERT INTO `replies`(`name`, `reply`, `doubt_id`) VALUES ('"+name+"','"+reply+"', '"+did+"')");
response.sendRedirect("doubtforum.jsp");

	}catch(Exception e){
   e.printStackTrace();			
	}
%>





           
         

</body>

</html>
