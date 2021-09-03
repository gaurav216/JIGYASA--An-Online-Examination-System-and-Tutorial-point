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
		String email = (String) session.getAttribute("email");
		String pass = request.getParameter("password");

		try {
			/*register driver*/
			Class.forName(driver);
			/*create connection*/
			con = DriverManager.getConnection(url, Username, dbpassword);
			/*create statement*/
			stmt = con.createStatement();
			/*execute query*/

			stmt.executeUpdate("UPDATE `user_profile` SET password='" + pass + "' WHERE email='" + email + "'");
			response.sendRedirect("passwordchangesuccess.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>





	%>
</body>
</html>