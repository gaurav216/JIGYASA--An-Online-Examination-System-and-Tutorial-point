<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="ico/favicon.png">

  <title>JIGYASA - desire to learn</title>

 
  <!-- Bootstrap CSS -->
  <link href="css2/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css2/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css2/elegant-icons-style.css" rel="stylesheet" />
  <link href="css2/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style1.css" rel="stylesheet">
  <link href="css2/style-responsive.css" rel="stylesheet" />
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
      <script src="js2/html5shiv.js"></script>
      <script src="js2/respond.min.js"></script>
      <script src="js2/lte-ie7.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->

</head>

<body>
  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->

    <header class="header dark-bg">
      

      <!--logo start-->
   <a onclick="myFunction()"><img src="img/logo.png" alt="" /></a>
      <!--logo end-->

      

      <div class="top-nav notification-row">
        <!-- notification dropdown start-->
        <ul class="nav pull-right top-menu">

          <!-- task notification start -->
        
            
                       <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <!-- <i class="icon_profile"></i>-->
                            </span><%
							String uname=(String)session.getAttribute("username"); 
						%>
                            <span class="username"><%= uname %></span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="profile.jsp"><!-- <i class="icon_profile"></i> -->My Profile</a>
              </li>
             
             
              <li>
                <a href="logout.jsp"><!-- <i class="icon_key_alt"></i>--> Log Out</a>
              </li>
            
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="">
            <a class="" onclick="myFunction()">
                          
                          <span>Home </span>
                      </a>
          </li>
          <li class="">
            <a class="" href="testserieshome.jsp">
                       
                          <span>Dashboard </span>
                      </a>
          </li>
         
          <li>
            <a class="" href="mathstests.jsp">
                          
                          <span>Maths</span>
                      </a>
          </li>
          <li>
            <a class="" href="reasoningtests.jsp">
                          
                          <span>Reasoning</span>

                      </a>

          </li>
          <li>
            <a class="" href="englishtests.jsp">
                          
                          <span>English</span>

                      </a>

          </li>
          <li>
            <a class="" href="genawtests.jsp">
                          
                          <span>General Awareness</span>

                      </a>

          </li>
          <li>
            <a class="" href="gensctests.jsp">
                          
                          <span>General Science</span>

                      </a>

          </li>
          <li>
            <a class="" href="jeetests.jsp">
                          
                          <span>JEE</span>

                      </a>

          </li>
          <li>
            <a class="" href="gatecsetests.jsp">
                          
                          <span>GATE CSE</span>

                      </a>

          </li>

          </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
             
          </div>
        </div>
        <!-- page start-->
        <%
        String driver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/jigyasa";
        String Username="root";
        String dbpassword="";
        Connection con;
        Statement stmt;
        int total, maths_tests, reasoning_tests, genaw_tests, gensc_tests, jee_tests, english_tests, gatecse_tests;
        java.sql.ResultSet rs;
        int max_id, min_id;
    	/*register driver*/
    	Class.forName(driver);
    	/*create connection*/
    	con=DriverManager.getConnection(url,Username,dbpassword);
    	/*create statement*/
    	stmt=con.createStatement();
    	/*execute query*/
    	String u=(String)session.getAttribute("username");
    	String name, email, passw;
    	rs=stmt.executeQuery("SELECT name, email, password FROM `user_profile` WHERE username='"+u+"'" );
    	rs.next();
    	name=rs.getString("name");
    	email=rs.getString("email");
        passw=rs.getString("password");
        rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"'");
    	rs.next();
    	total=rs.getInt(1);
    	rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"' AND subject='"+"maths"+"'");
    	rs.next();
    	maths_tests=rs.getInt(1);
    	rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"' AND subject='"+"reasoning"+"'");
    	rs.next();
    	reasoning_tests=rs.getInt(1);
    	rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"' AND subject='"+"english"+"'");
    	rs.next();
    	english_tests=rs.getInt(1);
    	rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"' AND subject='"+"gensc"+"'");
    	rs.next();
    	gensc_tests=rs.getInt(1);
    	rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"' AND subject='"+"genaw"+"'");
    	rs.next();
        genaw_tests=rs.getInt(1);
    	rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"' AND subject='"+"jee"+"'");
    	rs.next();
    	jee_tests=rs.getInt(1);
    	rs=stmt.executeQuery("SELECT COUNT(*) FROM `results` WHERE username='"+u+"' AND subject='"+"gatecse"+"'");
    	rs.next();
    	gatecse_tests=rs.getInt(1);
    	
        %>
      <div id="profile" class="tab-pane">
                    <section class="panel">
                      <div class="bio-graph-heading">
                       <h1><b>Profile</b></h1> 
                        </div>
                      <div class="panel-body bio-graph-info">
                        
                        <div class="row">
                          <div class="bio-row">
                            <p><span>Name :</span> <%= name %> </p>
                          </div>
                          <div class="bio-row">
                            <p><span>User Name* :</span> <%= u %></p>
                          </div>
                          
                          <div class="bio-row">
                            <p><span>Email :</span><%= email %></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Password :</span> <%= passw %></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Number of total tests attempted :</span><%= total %></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Number of maths tests attempted :</span> <%= maths_tests %></p>
                          </div>
                        <div class="bio-row">
                            <p><span>Number of reasoning tests attempted :</span> <%= reasoning_tests %></p>
                          </div>
                        <div class="bio-row">
                            <p><span>Number of english tests attempted :</span> <%= english_tests %></p>
                          </div>
                        <div class="bio-row">
                            <p><span>Number of general awareness tests attempted :</span> <%= genaw_tests %></p>
                          </div>
                        <div class="bio-row">
                            <p><span>Number of general science tests attempted :</span> <%= gensc_tests %> </p>
                          </div>
                          <div class="bio-row">
                            <p><span>Number of jee tests attempted: </span> <%= jee_tests %></p>
                          </div>
                        <div class="bio-row">
                            <p><span>Number of gate cse tests attempted :</span> <%= gatecse_tests %></p>
                          </div>
                         
                        
                        </div>
                      </div>
                    </section>
                    <section>
                      <div class="row">
                      </div>
                    </section>
                  </div>
                  
     <a class="btn btn-primary btn-lg" href="changename.jsp" title="Change your name">Change your name</a>
      <a class="btn btn-success btn-lg" href="changeemail.jsp" title="Change your email">Change your email</a>
      <a class="btn btn-danger btn-lg" href="changepassword.jsp" title="Change your password">Change your password</a>
    <div class="panel-body">
                <div class="alert alert-danger fade in">
                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                  *Username cannot be changed.
                </div>
        </div>
     
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
   
  </section>
   
   
     
    
     
  <!-- container section end -->
  <!-- javascripts -->
  <script src="js2/jquery.js"></script>
  <script src="js2/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js2/jquery.scrollTo.min.js"></script>
  <script src="js2/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="js2/scripts.js"></script>
  <script>
  function myFunction() {
	  if (confirm("You are about to log out!!! Want to continue??")) {
	   function redirect(){window.location = "homeendsession.jsp";}
	   redirect();
	  } else {
		  function redirect2(){window.location = "profile.jsp#";};
		  redirect2();
	  
	  }
  }
  
  </script>
  
    <script src="js2/jquery-1.8.3.min.js"></script>
 
    <!-- nice scroll -->
   
 
    <!-- chartjs -->
    <script src="assets2/chart-master/Chart.js"></script>
    <!-- custom chart script for this page only-->
    <script src="js2/chartjs-custom.js"></script>
    <!--custome script for all page-->
  




</body>

</html>
