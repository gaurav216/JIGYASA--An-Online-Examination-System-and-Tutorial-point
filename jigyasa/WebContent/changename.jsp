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
    <style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column1 {
  float: left;
  width: 25%;
  padding: 2px;
   
}
.column2 {
  float: left;
  width: 33.33%;
  padding: 2px;
   
}
.column3 {
  float: left;
  width: 100%;
  padding: 2px;
   
}

/* Clear floats after the columns */
.row1:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column1 {
    width: 100%;
  }
}
@media screen and (max-width: 600px) {
  .column2 {
    width: 100%;
  }
}
</style>
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
       <div>
       
       
        </div>
        <!-- page start-->
    <div class="row">
              <!-- Bootsrep Editor -->
              <div class="panel-body">
           
              
            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
            <form name="name_form" action="change.jsp" method="post" role="form" class="contactForm">
               
             
              <div class="form-group">
                <input type="text" class="form-control"   data-rule="required" name="name"  placeholder="Enter your new name" />
                <div class="validation"></div>
              </div>
              
              <div class="text-center"><button type="button" class="btn btn-primary btn-lg" onclick="validation()">Change name</button></div>
              <input type="hidden" name="todo" value="changename" readonly="readonly" />
	
            </form>
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
		  function redirect2(){window.location = "changename.jsp#";};
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
  
<script type="text/javascript">

function validation(){  
	 
	    var u = document.forms["name_form"]["name"].value;
		  
		    
		  if (u == "") {
		    alert("All fields must be filled out");
		  }
		  else
			  {
			  var frm = document.getElementsByName('name_form')[0];
				frm.submit(); // Submit the form
				frm.reset(); // Reset all form data
				return false; // Prevent page refresh
			  }
	   
}  
</script>



</body>

</html>
