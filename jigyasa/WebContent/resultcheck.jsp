<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
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
		String subject = request.getParameter("subject");
		int[] qids = (int[]) session.getAttribute("qids");
		int correct_responses = 0, no_of_ques_attempted=0;
		String username = (String) session.getAttribute("username");
		String res[] = new String[10];
	    int unatt_ques[]=new int[10];
		int wrong_ques[]=new int[10];
		String op = null, c = null;
		int i, j, k=0, l=0, m=0;
		String wrong_res[]=new String[10];
		/*register driver*/
		Class.forName(driver);
		/*create connection*/
		con = DriverManager.getConnection(url, Username, dbpassword);
		/*create statement*/
		stmt = con.createStatement();
		/*execute query*/
		

		for (i = 0; i < 10; i++) {
			j = i + 1;
			op = "option" + Integer.toString(j);
			c = request.getParameter(op);
			if (c == null) {
				res[i] = "n";
			} else {
				res[i] = c;
			}
		}

		if (subject.equalsIgnoreCase("maths")) {
    
			for (i = 0; i < 10; i++) {
				rs = stmt.executeQuery("SELECT correct FROM `mathsq` WHERE qid=" + qids[i]);
				rs.next();
				if (res[i] != "n") {
					if (res[i].equalsIgnoreCase(rs.getString("correct")))

					{
						no_of_ques_attempted++;
						correct_responses++;
					}
					else{
						wrong_res[l]=res[i];
						wrong_ques[k]=qids[i];
						no_of_ques_attempted++;
						k++;
						l++;
					}
				}
				else{
					unatt_ques[m]=qids[i];
					m++;
				}
			}

		}
		if (subject.equalsIgnoreCase("reasoning")) {
		
			for (i = 0; i < 10; i++) {
				rs = stmt.executeQuery("SELECT correct FROM `reasoningq` WHERE qid=" + qids[i]);
				rs.next();
				if (res[i] != "n") {
					if (res[i].equalsIgnoreCase(rs.getString("correct")))

					{   
						no_of_ques_attempted++;
						correct_responses++;
					}
					else{
						wrong_res[l]=res[i];
						wrong_ques[k]=qids[i];
						no_of_ques_attempted++;
						k++;
						l++;
					}
				}
				else{
					unatt_ques[m]=qids[i];
					m++;
				}
			}

		}
		if (subject.equalsIgnoreCase("english")) {

			for (i = 0; i < 10; i++) {
				rs = stmt.executeQuery("SELECT correct FROM `englishq` WHERE qid=" + qids[i]);
				rs.next();
				if (res[i] != "n") {
					if (res[i].equalsIgnoreCase(rs.getString("correct")))

					{
						no_of_ques_attempted++;
						correct_responses++;
					}
					else{
						wrong_res[l]=res[i];
						wrong_ques[k]=qids[i];
						no_of_ques_attempted++;
						k++;
						l++;
					}
				}
				else{
					unatt_ques[m]=qids[i];
					m++;
				}
			}

		}
		if (subject.equalsIgnoreCase("gensc")) {

			for (i = 0; i < 10; i++) {
				rs = stmt.executeQuery("SELECT correct FROM `genscq` WHERE qid=" + qids[i]);
				rs.next();
				if (res[i] != "n") {
					if (res[i].equalsIgnoreCase(rs.getString("correct")))

					{
						no_of_ques_attempted++;
						correct_responses++;
					}
					else{
						wrong_res[l]=res[i];
						wrong_ques[k]=qids[i];
						no_of_ques_attempted++;
						k++;
						l++;
					}
				}
				else{
					unatt_ques[m]=qids[i];
					m++;
				}
			}

		}
		if (subject.equalsIgnoreCase("genaw")) {

			for (i = 0; i < 10; i++) {
				rs = stmt.executeQuery("SELECT correct FROM `genawq` WHERE qid=" + qids[i]);
				rs.next();
				if (res[i] != "n") {
					if (res[i].equalsIgnoreCase(rs.getString("correct")))

					{
						no_of_ques_attempted++;
						correct_responses++;
					}
					else{
						wrong_res[l]=res[i];
						wrong_ques[k]=qids[i];
						no_of_ques_attempted++;
						k++;
						l++;
					}
				}
				else{
					unatt_ques[m]=qids[i];
					m++;
				}
			}

		}
		if (subject.equalsIgnoreCase("jee")) {

			for (i = 0; i < 10; i++) {
				rs = stmt.executeQuery("SELECT correct FROM `jeeq` WHERE qid=" + qids[i]);
				rs.next();
				if (res[i] != "n") {
					if (res[i].equalsIgnoreCase(rs.getString("correct")))

					{
						no_of_ques_attempted++;
						correct_responses++;
					}
					else{
						wrong_res[l]=res[i];
						wrong_ques[k]=qids[i];
						no_of_ques_attempted++;
						k++;
						l++;
					}
				}
				else{
					unatt_ques[m]=qids[i];
					m++;
				}
			}

		}
		if (subject.equalsIgnoreCase("gatecse")) {

			for (i = 0; i < 10; i++) {
				rs = stmt.executeQuery("SELECT correct FROM `gatecseq` WHERE qid=" + qids[i]);
				rs.next();
				if (res[i] != "n") {
					if (res[i].equalsIgnoreCase(rs.getString("correct")))

					{
						no_of_ques_attempted++;
						correct_responses++;
					}
					else{
						wrong_res[l]=res[i];
						wrong_ques[k]=qids[i];
						no_of_ques_attempted++;
						k++;
						l++;
					}
				}
				else{
					unatt_ques[m]=qids[i];
					m++;
				}
			}

		}
		%>
		
		<%
		session.setAttribute("un_ques", unatt_ques);
		session.setAttribute("wrong_res", wrong_res);
		session.setAttribute("correct_responses", correct_responses);
		session.setAttribute("no_of_ques", no_of_ques_attempted);
        session.setAttribute("subject", subject);
		session.setAttribute("wrong_qids", wrong_ques);
		stmt.executeUpdate("INSERT INTO `results`(`username`, `subject`, `marks`) VALUES ('" + username + "','"
				+ subject + "','" + correct_responses + "')");
		response.sendRedirect("result.jsp");
		System.out.println(correct_responses);

		System.out.println(Arrays.toString(qids));
		System.out.println(Arrays.toString(res));
	%>
</body>
</html>