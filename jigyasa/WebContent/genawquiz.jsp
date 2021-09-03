<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


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
  <link href="css2/daterangepicker.css" rel="stylesheet" />
  <link href="css2/bootstrap-datepicker.css" rel="stylesheet" />
  <link href="css2/bootstrap-colorpicker.css" rel="stylesheet" />
  <!-- date picker -->

  <!-- color picker -->

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
            <a class="" href="testseriesadmin.jsp">
                       
                          <span>Dashboard </span>
                      </a>
          </li>
         
          <li>
            <a class="" href="mathsquiz.jsp">
                          
                          <span>Maths</span>
                      </a>
          </li>
          <li>
            <a class="" href="reasoningquiz.jsp">
                          
                          <span>Reasoning</span>

                      </a>

          </li>
          <li>
            <a class="" href="englishquiz.jsp">
                          
                          <span>English</span>

                      </a>

          </li>
          <li>
            <a class="" href="genawquiz.jsp">
                          
                          <span>General Awareness</span>

                      </a>

          </li>
          <li>
            <a class="" href="genscquiz.jsp">
                          
                          <span>General Science</span>

                      </a>

          </li>
          <li>
            <a class="" href="jeequiz.jsp">
                          
                          <span>JEE</span>

                      </a>

          </li>
          <li>
            <a class="" href="gatecsequiz.jsp">
                          
                          <span>GATE CSE</span>

                      </a>

          </li>
                    <li>
            <a class="" href="modifyquestion.jsp">
                          
                          <span>Modify a question</span>

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
  <h3> General Awareness Questions</h3>
  
  
  
  
    <div class="row">
              <!-- Bootsrep Editor -->
              <div class="panel-body">
           
              
            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
            <form name="submit_ques_form" action="submitquestion.jsp" method="post" role="form" class="contactForm">
               <div class="form-group">
                <textarea class="form-control" name="question" rows="5" data-rule="required" data-msg="Please write your question here" placeholder="Question"></textarea>
                <div class="validation"></div>
              </div>
             
              <div class="form-group">
                <input type="text"class="form-control"   data-rule="required" name="opa"  placeholder="Option A" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control"  data-rule="required" name="opb" placeholder="Option B"  />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control"  data-rule="required" name="opc"  placeholder="Option C" />
                <div class="validation"></div>
              </div>
             <div class="form-group">
                <input type="text" class="form-control"  data-rule="required" name="opd"  placeholder="Option D" />
                <div class="validation"></div>
              </div>
               <div class="form-group">
                <input type="text" class="form-control"  data-rule="required" name="correct"  placeholder="Correct Option (Enter a, b, c or d)"  data-msg="Enter a, b, c or d" />
                <div class="validation"></div>
              </div>
              <div class="text-center"><button type="button" class="btn btn-primary btn-lg" onclick="validation()">Submit question</button></div>
              <input type="hidden" name="subject" value="genaw" readonly="readonly" />
	
            </form>
</div>








        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
   
  </section>
  <!-- container section end -->
 <script src="js2/jquery.js"></script>
  <script src="js2/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js2/jquery.scrollTo.min.js"></script>
  <script src="js2/jquery.nicescroll.js" type="text/javascript"></script>

  <!-- jquery ui -->
  <script src="js2/jquery-ui-1.9.2.custom.min.js"></script>

  <!--custom checkbox & radio-->
  <script type="text/javascript" src="js2/ga.js"></script>
  <!--custom switch-->
  <script src="js2/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="js2/jquery.tagsinput.js"></script>

  <!-- colorpicker -->

  <!-- bootstrap-wysiwyg -->
  <script src="js2/jquery.hotkeys.js"></script>
  <script src="js2/bootstrap-wysiwyg.js"></script>
  <script src="js2/bootstrap-wysiwyg-custom.js"></script>
  <script src="js2/moment.js"></script>
  <script src="js2/bootstrap-colorpicker.js"></script>
  <script src="js2/daterangepicker.js"></script>
  <script src="js2/bootstrap-datepicker.js"></script>
  <!-- ck editor -->
  <script type="text/javascript" src="assets2/ckeditor/ckeditor.js"></script>
  <!-- custom form component script for this page-->
  <script src="js2/form-component.js"></script>
  <!-- custome script for all page -->
  <script src="js2/scripts.js"></script>
  <script>
  function myFunction() {
	  if (confirm("You are about to log out!!! Want to continue??")) {
	   function redirect(){window.location = "homeendsession.jsp";}
	   redirect();
	  } else {
		  function redirect2(){window.location = "genawquiz.jsp#";};
		  redirect2();
	  
	  }
  }
  
  </script>
  <script type ="text/javascript">  
function validation(){  
	 var c = document.forms ["submit_ques_form"]["question"].value;  
	    var c1 = document.forms ["submit_ques_form"]["opa"].value;  
	    var u = document.forms["submit_ques_form"]["opb"].value;
		  var p = document.forms["submit_ques_form"]["opc"].value;
		  var n = document.forms["submit_ques_form"]["opd"].value;  
		  var e = document.forms["submit_ques_form"]["correct"].value;  
		  if (c == "" || c1 == "" || u == "" || p == "" ||n == "" ||e == "" ) {
		    alert("All fields must be filled out");
		    
		  }
		  else
		     {
		     	var frm = document.getElementsByName('submit_ques_form')[0];
		  	   frm.submit(); // Submit the form
		  	   frm.reset();  // Reset all form data
		  	   return false; // Prevent page refresh
		     }
}  
</script>


</body>

</html>
