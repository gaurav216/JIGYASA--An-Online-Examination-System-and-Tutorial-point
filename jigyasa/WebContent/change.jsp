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
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/jigyasa";
		String Username = "root";
		String dbpassword = "";
		Connection con;
		Statement stmt;
		java.sql.ResultSet rs;
        String u=(String)session.getAttribute("username");
		String todo = request.getParameter("todo");
		
		try {
			/*register driver*/
			Class.forName(driver);
			/*create connection*/
			con = DriverManager.getConnection(url, Username, dbpassword);
			/*create statement*/
			stmt = con.createStatement();
			/*execute query*/
			if(todo.equalsIgnoreCase("changename")){
				String name = request.getParameter("name");
				stmt
				.executeUpdate("UPDATE `user_profile` SET name='"+name+"' WHERE username='"+u+"'"); 
		        response.sendRedirect("profile.jsp");
	
			}
			else if(todo.equalsIgnoreCase("changeemail")){
				String email = request.getParameter("email");
				stmt
				.executeUpdate("UPDATE `user_profile` SET email='"+email+"' WHERE username='"+u+"'"); 
		        response.sendRedirect("profile.jsp");
	
			}
			else if(todo.equalsIgnoreCase("changepassword")){
				String password = request.getParameter("password");
				stmt
				.executeUpdate("UPDATE `user_profile` SET password='"+password+"' WHERE username='"+u+"'"); 
		        response.sendRedirect("profile.jsp");
	
			}
			
						
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>





	%>
</body>
</html>