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
String name=request.getParameter("name");
String doubt=request.getParameter("doubt");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/jigyasa";
String Username="root";
String dbpassword="";
Connection con;
Statement stmt;
int i;
java.sql.ResultSet rs;
try{
	/*register driver*/
	Class.forName(driver);
	/*create connection*/
	con=DriverManager.getConnection(url,Username,dbpassword);
	/*create statement*/
	stmt=con.createStatement();
	/*execute query*/
i=stmt.executeUpdate("INSERT INTO `doubts`(`name`, `doubt`) VALUES ('"+name+"','"+doubt+"')");
	if(i>0){
		    
		
         %>
		<script>
		if(alert("Thanks for submitting your doubt!!!")){
			<% response.sendRedirect("doubtforum.jsp");%>
			
		}
		else{
			
	
		}
		
		</script>
		
<%		

	}
	else{
		response.sendRedirect("doubtforum.jsp");
	}

	}catch(Exception e){
   e.printStackTrace();			
	}
%>
</body>
</html>