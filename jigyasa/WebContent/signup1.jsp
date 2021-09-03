<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <title>JIGYASA - desire to learn</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Your page description here" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Handlee|Open+Sans:300,400,600,700,800" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet" />
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/flexslider.css" rel="stylesheet" />
  <link href="css/prettyPhoto.css" rel="stylesheet" />
  <link href="css/camera.css" rel="stylesheet" />
  <link href="css/jquery.bxslider.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet" />

  <!-- Theme skin -->
  <link href="color/default.css" rel="stylesheet" />

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />

  <!-- =======================================================
    Theme Name: Eterna
    Theme URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>
<body>
<%


String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/jigyasa";
String Username="root";
String dbpassword="";
Connection con;
Statement stmt;
java.sql.ResultSet rs;


						
						
						
						String username=request.getParameter("username");
						String password=request.getParameter("password");
						String name=request.getParameter("name");
						String email=request.getParameter("email");
												
						try{
							/*register driver*/
							Class.forName(driver);
							/*create connection*/
							con=DriverManager.getConnection(url,Username,dbpassword);
							/*create statement*/
							stmt=con.createStatement();
							/*execute query*/
							int i=stmt.executeUpdate("INSERT INTO `user_profile`(`name`, `email`, `username`, `password`) VALUES ('"+name+"','"+email+"', '"+username+"','"+password+"')");
						    //out.println("Thanks for the feedback");
						 if(i>0){
						    		
						   
							 response.sendRedirect("signupsuccess.jsp");
						 }
						 else{
							 %>
				          			 
				
				    <script>  

 
                   </script>  
				
				
				
				
				<%		 }
						 }catch(Exception e){
						   e.printStackTrace();			
							}

						
						%>
						

</body>
</html>