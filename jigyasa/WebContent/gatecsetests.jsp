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

<body onload="countdown()">
  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->

    <header class="header dark-bg">
      

      <!--logo start-->
   <a onclick="myFunction()"><img src="img/logo.png" alt="" /></a>
      <!--logo end-->

      

      <div class="top-nav notification-row">
        <!-- notification dropdown start-->
        <div> 
        Time Left :: 
        <input id="minutes" type="text" style="width: 20px; 
             border: none; font-size: 16px;  
            font-weight: bold; color: black; "><font size="5"> : 
                        </font> 
        <input id="seconds" type="text" style="width: 20px; 
                        border: none; font-size: 16px; 
                        font-weight: bold; color: black;"> 
    </div> 
        
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
      java.sql.ResultSet rs;
      int max_id, min_id;
  	/*register driver*/
  	Class.forName(driver);
  	/*create connection*/
  	con=DriverManager.getConnection(url,Username,dbpassword);
  	/*create statement*/
  	stmt=con.createStatement();
  	/*execute query*/
     rs=stmt.executeQuery("SELECT MAX(`qid`) FROM `gatecseq`");
	rs.next();
	max_id=rs.getInt(1);   
	
	rs=stmt.executeQuery("SELECT MIN(`qid`) FROM `gatecseq`");
	
	rs.next();
	min_id=rs.getInt(1);
	
    	    Random rng = new Random();
int count=10;
int end=max_id;
int start=min_id;
int i, qid;
    	    int[] result = new int[count];
    	    int cur = 0;
    	    int remaining = end - start;
    	    for (int j = start; j < end && count > 0; j++) {
    	        double probability = rng.nextDouble();
    	        if (probability < ((double) count) / (double) remaining) {
    	            count--;
    	            result[cur++] = j;
    	        }
    	        remaining--;
    	    }
    	    
    	 
    
      session.setAttribute("qids", result);
      
 int sid=1;
String ques=null;
String opa=null, opb=null, opc=null, opd=null;
try{
	%>
	<form name="gatecse_quiz" action="resultcheck.jsp" method="post">
	
	
	<% 
	
	for(i=0;i<10;i++){
	qid=result[i];
	
	rs=stmt.executeQuery("SELECT * FROM `gatecseq` WHERE qid="+qid);
	rs.next();
	ques=rs.getString("question");
	opa=rs.getString("opa");
	opb=rs.getString("opb");
	opc=rs.getString("opc");
	opd=rs.getString("opd");
	%>
	
	<div style="margin-left:50px;text-align:justify;"><h3> Q<%=i+1 %>. <%= ques %> </h3></div>
	<div class="radio" style="margin-left:90px;">
                        <label>
                                                  <input type="radio" name="option<%=i+1%>"  value="a">
                                                  <%= opa %>
                                              </label>
                      </div>
                      <div class="radio" style="margin-left:90px;">
                        <label>
                                                  <input type="radio" name="option<%=i+1%>"  value="b">
                                                 <%= opb %>
                                              </label>
                      </div>
	                 <div class="radio" style="margin-left:90px;">
                        <label>
                                                  <input type="radio" name="option<%=i+1%>"  value="c">
                                                  <%= opc %>
                                              </label>
                      </div>
                      <div class="radio" style="margin-left:90px;">
                        <label>
                                                  <input type="radio" name="option<%=i+1%>"  value="d">
                                                  <%= opd %>
                                              </label>
                      </div>
	
	
	
	<%
	}
	%>	
	<input type="hidden" name="subject" value="gatecse" readonly="readonly" />
	<button type="button" class="btn btn-primary btn-lg" style="margin-left:50px;" onclick="submitForm()">Submit</button>
		</form>
<%	}catch(Exception e){
   e.printStackTrace();			
	}
%>
      
      
      
      
      
      
      
      
      
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
  <!--custom script for all page-->
  <script src="js2/scripts.js"></script>
  <script>
  function myFunction() {
	  if (confirm("You are about to log out!!! Want to continue??")) {
	   function redirect(){window.location = "homeendsession.jsp";}
	   redirect();
	  } else {
		  function redirect2(){window.location = "gatecsetests.jsp#";};
		  redirect2();
	  
	  }
  }
  
  
  </script>
<script> 
       
function submitForm() {
	   // Get the first form with the name
	   // Usually the form name is not repeated
	   // but duplicate names are possible in HTML
	   // Therefore to work around the issue, enforce the correct index
	   var frm = document.getElementsByName('gatecse_quiz')[0];
	   frm.submit(); // Submit the form
	   frm.reset();  // Reset all form data
	   return false; // Prevent page refresh
	}
        //set minutes 
        var mins = 25; 
  
        //calculate the seconds 
        var secs = mins * 60; 
  
        //countdown function is evoked when page is loaded 
        function countdown() { 
            setTimeout('Decrement()', 60); 
        } 
  
        //Decrement function decrement the value. 
        function Decrement() { 
            if (document.getElementById) { 
                minutes = document.getElementById("minutes"); 
                seconds = document.getElementById("seconds"); 
  
                //if less than a minute remaining 
                //Display only seconds value. 
                if (seconds < 59) { 
                    seconds.value = secs; 
                } 
  
                //Display both minutes and seconds 
                //getminutes and getseconds is used to 
                //get minutes and seconds 
                else { 
                    minutes.value = getminutes(); 
                    seconds.value = getseconds(); 
                } 
                //when less than a minute remaining 
                //colour of the minutes and seconds 
                //changes to red 
                if (mins < 1) { 
                    minutes.style.color = "red"; 
                    seconds.style.color = "red"; 
                } 
                //if seconds becomes zero, 
                //then page alert time up 
                if (mins < 0) { 
                    alert('time up'); 
                    minutes.value = 0; 
                    seconds.value = 0;
                    submitForm();
                } 
                //if seconds > 0 then seconds is decremented 
                else { 
                    secs--; 
                    setTimeout('Decrement()', 1000); 
                } 
            } 
        } 
  
        function getminutes() { 
            //minutes is seconds divided by 60, rounded down 
            mins = Math.floor(secs / 60); 
            return mins; 
        } 
  
        function getseconds() { 
            //take minutes remaining (as seconds) away  
            //from total seconds remaining 
            return secs - Math.round(mins * 60); 
        } 
    </script> 
  
</body>

</html>
