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


						
						
						
						String email=request.getParameter("email");
						String name=request.getParameter("name");
						String subject=request.getParameter("subject");
						String message=request.getParameter("message");
												
						try{
							/*register driver*/
							Class.forName(driver);
							/*create connection*/
							con=DriverManager.getConnection(url,Username,dbpassword);
							/*create statement*/
							stmt=con.createStatement();
							/*execute query*/
							stmt.executeUpdate("INSERT INTO `feedback`(`name`, `email`, `subject`, `message`) VALUES ('"+name+"','"+email+"', '"+subject+"','"+message+"')");
						    //out.println("Thanks for the feedback");
						 //response.sendRedirect("contact.jsp");
							}catch(Exception e){
						   e.printStackTrace();			
							}

						
						%>
						
		  <div id="wrapper">				 <!-- start header -->
     <header>
	    <div class="row">
	        <div class="span6">
	     </div>
	      </div>
	      <div class="container">


	        <div class="row nomargin">
	          <div class="span4">
	            <div class="logo">
	              <a href="index.html"><img src="img/logo.png" alt="" /></a>
	            </div>
	          </div>
	          <div class="span8">
	            <div class="navbar navbar-static-top">
	              <div class="navigation">
	                <nav>
	                  <ul class="nav topnav">
	                    <li class="dropdown active">
	                      <a href="index.html"><i class="icon-home"></i> Home <i class=""></i></a>

	                    </li>
	                    </li>
	                    <li class="dropdown">
	                      <a href="#">Study Material <i class="icon-angle-down"></i></a>
	                      <ul class="dropdown-menu">

	                        <li class="dropdown"><a href="#">SSC Exams<i class="icon-angle-right"></i></a>
							                          <ul class="dropdown-menu sub-menu-level1">
							                            <li><a href="cgl.html">CGL</a></li>
							                            <li><a href="chsl.html">CHSL</a></li>
							                          </ul>







	                        </li>



							 <li class="dropdown"><a>Railways Exams<i class="icon-angle-right"></i></a>
							                          <ul class="dropdown-menu sub-menu-level1">
							                                         <li><a href="groupd.html">GROUP D</a></li>
							                            <li><a href="ntpc.html">NTPC</a></li>

							                          </ul>
	                        </li>

							    						  <li class="dropdown"><a>Bank Exams<i class="icon-angle-right"></i></a>
							                          <ul class="dropdown-menu sub-menu-level1">
							                                        <li><a href="clerk.html">CLERK</a></li>
							                            <li><a href="po.html">BANK PO</a></li>

							                          </ul>
	                        </li>



							  <li class="dropdown"><a>Defence Exam<i class="icon-angle-right"></i></a>
							                          <ul class="dropdown-menu sub-menu-level1">
							                                         <li><a href="nda.html">NDA</a></li>
							                            <li><a href="cds.html">CDS</a></li>


							                          </ul>
	                        </li>






	                        <li><a href="upsc.html">UPSC & State Services</a>

							                           </li>
	                        <li><a href="jee.html">JEE Exam</a></li>


							 <li class="dropdown"><a href="gatecs">GATE<i class="icon-angle-right"></i></a>
							                          <ul class="dropdown-menu sub-menu-level1">
							                                            <li><a href="gatecs.html">GATE CSE</a></li>


							                          </ul>
	                        </li>




							<ul class="dropdown-menu sub-menu-level1">
							                            <li><a href="gatecs.html">GATE CSE</a></li>
							                            </ul>

							</li>

	                      </ul>
	                    </li>
	                    <li class="dropdown">
	                      <a href="testseries.html">Test Series </a>

	                    </li>
	                    <li class="dropdown">
	                      <a href="doubtforum.jsp">Doubt Forum </a>

	                    </li>
	                    <li class="dropdown">
						                      <a href="login.jsp">Login<i class=""></i></a>

	                    </li>
	                    <li>
	                      <a href="contact.jsp">Contact Us </a>
	                    </li>
	                  </ul>
	                </nav>
	              </div>
	              <!-- end navigation -->
	            </div>
	          </div>
	        </div>
	      </div>
	    </header>

    <!-- end header -->
						<section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="inner-heading">
             <br><br><br><br>
              <h2 style="text-align:center;">Thanks for your feedback !!!</h2>
            </div>
          </div>
        </div>
      </div>
    </section>
    
     <footer style="position:fixed; bottom:0;width:100%">
      <div class="container">
        <div class="row">
          <div class="span5">
            <div class="widget">
              <h5 class="widgetheading">Product</h5>
              <ul class="link-list">
                <li><a href="#">Test Series</a></li>
                <li><a href="#">Online courses</a></li>
                <li><a href="#">Online videos</a></li>
                <li><a href="#">Practice</a></li>
                <li><a href="#">Discuss</a></li>
              </ul>

            </div>
          </div>
          <div class="span5">
		                 <div class="widget">

						 		                 <h5 class="widgetheading">Get in touch</h5>
						 						 		                   <address>
						 						 		     							<strong> </strong><br>
						 						 		     							FGIET Raebareli
						 						 		     						</address>
						 						 		                   <p>
						 						 		                     <i class="icon-phone"></i> (818) 283-0425 <br>
						 						 		                     &nbsp<i class="icon-phone"></i>(741) 766-1500 <br>
						 						 		                     <i class="icon-envelope-alt"></i> a3gs@gmail.com
						 		                   </p>



		                 </div>
		               </div>
		                <div class="span2">
					               <div class="widget">
					                 <h5 class="widgetheading">Follow Us</h5>


					                  <a href="#"> <i class="icon-facebook icon-white"></i></a>
					                <br>  <a href="#">   <i class="icon-twitter icon-white"></i></a>
					                   <br>    <a href="#"><i class="icon-linkedin icon-white"></i></a>





					               </div>
					             </div>

		             </div>
		           </div>

      </div>
    </footer>
   </div>
  <a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bglight icon-2x active"></i></a>

    
						
				
	

</body>
</html>