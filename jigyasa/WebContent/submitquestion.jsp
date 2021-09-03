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
		String subjectname = request.getParameter("subject");
		String email = (String) session.getAttribute("email");
		Connection con;
		Statement stmt;
		java.sql.ResultSet rs;
		String question = request.getParameter("question");
		String opa = request.getParameter("opa");
		String opb = request.getParameter("opb");
		String opc = request.getParameter("opc");
		String opd = request.getParameter("opd");
		String correct = request.getParameter("correct");

		try {
			/*register driver*/
			Class.forName(driver);
			/*create connection*/
			con = DriverManager.getConnection(url, Username, dbpassword);
			/*create statement*/
			stmt = con.createStatement();
			/*execute query*/
			if (subjectname.equals("maths")) {
				stmt.executeUpdate(
						"INSERT INTO `mathsq`(`question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES ('"
								+ question + "','" + opa + "','" + opb + "','" + opc + "','" + opd + "','" + correct
								+ "','" + email + "')");
				response.sendRedirect("questionsubmitted.jsp");
			}
			if (subjectname.equals("reasoning")) {
				stmt.executeUpdate(
						"INSERT INTO `reasoningq`(`question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES ('"
								+ question + "','" + opa + "','" + opb + "','" + opc + "','" + opd + "','" + correct
								+ "','" + email + "')");
				response.sendRedirect("questionsubmitted.jsp");
			}
			if (subjectname.equals("english")) {
				stmt.executeUpdate(
						"INSERT INTO `englishq`(`question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES ('"
								+ question + "','" + opa + "','" + opb + "','" + opc + "','" + opd + "','" + correct
								+ "','" + email + "')");
				response.sendRedirect("questionsubmitted.jsp");
			}
			if (subjectname.equals("genaw")) {
				stmt.executeUpdate(
						"INSERT INTO `genawq`(`question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES ('"
								+ question + "','" + opa + "','" + opb + "','" + opc + "','" + opd + "','" + correct
								+ "','" + email + "')");
				response.sendRedirect("questionsubmitted.jsp");
			}
			if (subjectname.equals("gensc")) {
				stmt.executeUpdate(
						"INSERT INTO `genscq`(`question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES ('"
								+ question + "','" + opa + "','" + opb + "','" + opc + "','" + opd + "','" + correct
								+ "','" + email + "')");
				response.sendRedirect("questionsubmitted.jsp");
			}
			if (subjectname.equals("jee")) {
				stmt.executeUpdate(
						"INSERT INTO `jeeq`(`question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES ('"
								+ question + "','" + opa + "','" + opb + "','" + opc + "','" + opd + "','" + correct
								+ "','" + email + "')");
				response.sendRedirect("questionsubmitted.jsp");
			}
			if (subjectname.equals("gatecse")) {
				stmt.executeUpdate(
						"INSERT INTO `gatecseq`(`question`, `opa`, `opb`, `opc`, `opd`, `correct`, `admin_emailid`) VALUES ('"
								+ question + "','" + opa + "','" + opb + "','" + opc + "','" + opd + "','" + correct
								+ "','" + email + "')");
				response.sendRedirect("questionsubmitted.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>



</body>
</html>