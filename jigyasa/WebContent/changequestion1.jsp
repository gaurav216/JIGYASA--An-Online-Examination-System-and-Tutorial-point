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
int qid=(int)session.getAttribute("qid");;
String question=null, opa=null, opb=null, opc=null, opd=null, correct=null;
question=request.getParameter("question");
opa=request.getParameter("opa");
opb=request.getParameter("opb");
opc=request.getParameter("opc");
opd=request.getParameter("opd");
correct=request.getParameter("correct");
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
stmt.executeUpdate("UPDATE `"+subject+"q` SET question='"+question+"', opa='"+opa+"', opb='"+opb+"', opc='"+opc+"', opd='"+opd+"', correct='"+correct+"' WHERE qid='"+qid+"'");
	
	response.sendRedirect("changequestionsuccessfull.jsp");
	
	
}catch(Exception e){
	e.printStackTrace();
}
 %>
	



</body>
</html>