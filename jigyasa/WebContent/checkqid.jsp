<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String subject=(String)session.getAttribute("subject");
int qid=Integer.parseInt(request.getParameter("qid"));
session.setAttribute("qid",qid);
System.out.println(subject);
System.out.println(qid);

String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/jigyasa";
String Username="root";
String dbpassword="";
Connection con;
Statement stmt;
java.sql.ResultSet rs;
try{
	/*register driver*/
	Class.forName(driver);
	/*create connection*/
	con=DriverManager.getConnection(url,Username,dbpassword);
	/*create statement*/
	stmt=con.createStatement();
	/*execute query*/
	rs=stmt.executeQuery("SELECT * FROM `"+subject+"q` WHERE qid='"+qid+"'");
	if(rs.next()){
	response.sendRedirect("changequestion.jsp");
	
	}
	else{
		response.sendRedirect("nosuchquestion.jsp");
	}
}catch(Exception e){
	e.printStackTrace();
}
 %>
	



</body>
</html>