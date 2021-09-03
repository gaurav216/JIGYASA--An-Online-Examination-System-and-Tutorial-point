<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

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
  <style>
#b {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

#b:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}

.next {
  
  background-color: #ff704d;
  color: white;
}

.round {
  border-radius: 50%;
}
</style>

  <!-- =======================================================
    Theme Name: Eterna
    Theme URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>

  <div id="wrapper">

    <!-- start header -->
   <!-- start header -->
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
              
              <h2>Reply</h2>
            </div>
          </div>
        </div>
      </div>
    </section>
<% String did=request.getParameter("doubt_id"); 
   int doubt_id=Integer.parseInt(did);
%>
    
    <section id="content">
      <div class="container">
       <%

 

//int did=Integer.parseInt("sid");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/jigyasa";
String Username="root";
String dbpassword="";
Connection con;
Statement stmt,st;
int i;
java.sql.ResultSet rs, rs2;
String name=null;
String name1=null;
String doubt=null;
String reply=null;
String id=null;


try{
	
	Class.forName(driver);
	
	con=DriverManager.getConnection(url,Username,dbpassword);
	
	stmt=con.createStatement();
    st=con.createStatement();
	rs=stmt.executeQuery("SELECT * FROM `replies` WHERE `doubt_id`="+doubt_id+" ORDER BY `reply_id` DESC");
	rs2=st.executeQuery("SELECT * FROM `doubts` WHERE `doubt_id`="+doubt_id);
	rs2.next();
	name1=rs2.getString("name");
	doubt=rs2.getString("doubt");
%>


          <div class="span8">

            <article class="single">
              <div class="row">
            <aside class="right-sidebar">
              <div class="widget">
              
<div class="about-author">
              
              <h5><strong><%= name1 %></strong></h5>
              <p>
                <%= doubt %>
              </p>
            </div>
           <form name= "doubt_forum" action="replybackend.jsp?doubt_id=<%= doubt_id %>" method="post" role="form" class="contactForm">
              <div class="row">
                <div class="span8 form-group field">
                  <input type="text" name="name" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div>

                <div class="span8 form-group">
                  <textarea name="reply" rows="5" data-rule="required" data-msg="Please write something for us"
                    placeholder="Your reply"></textarea>
                  <div class="validation"></div>
                  <div class="text-center">
                    <button class="btn btn-theme btn-medium margintop10" type="button" onclick="submitForm()">Post your reply</button>
         </div>
                 
            
              </div>
            </form>
           
            </aside>
          </div>
                 
              </div>
            </article>
      </div>
      </div>
    </section>
    
    <section id="inner-headline">
      <div class="container">
        <div class="row">
      <div class="span12">
            <div class="inner-heading">
              
              <h2>Previous Replies</h2>
              
              
              
            </div>
           <!--   <div class="span8">   -->
           
</br>

 




<div class="comment-area">

<%	
	while(rs.next()){
		 name=rs.getString("name");
		 reply=rs.getString("reply");
		 doubt_id=rs.getInt("doubt_id");
		// doubt_id=Integer.parseInt(id);
		 
		 %>
     <div class="media">
                    
                    <div class="media-body">
                      <div class="media-content">
                        <h6><%= name %></h6>
                        <p>
                          <%= reply %>
                        </p>

        
                      </div>
        </div>
        </div>
     
     
     <br>
<%
	}
%>
</div>
<%
	}catch(Exception e){
   e.printStackTrace();			
	}
%>
      
           
          </div>
          </div>
        
           </div>
      
        </div>
          
    </section>
  
    

         



      <footer>
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

  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/bootstrap.js"></script>

  <script src="js/modernizr.custom.js"></script>
  <script src="js/toucheffects.js"></script>
  <script src="js/google-code-prettify/prettify.js"></script>
  <script src="js/jquery.bxslider.min.js"></script>

  <script src="js/jquery.prettyPhoto.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>

  <script src="js/jquery.flexslider.js"></script>
  <script src="js/animate.js"></script>
  <script src="js/inview.js"></script>
  <script type="text/javascript">
		function submitForm() {
			// Get the first form with the name
			// Usually the form name is not repeated
			// but duplicate names are possible in HTML
			// Therefore to work around the issue, enforce the correct index
			var u = document.forms["doubt_forum"]["name"].value;
		  var e = document.forms["doubt_forum"]["reply"].value;  
		  if (u == "" || e == "" ) {
		    alert("All fields must be filled out");
		    
		  }
		  else{
			
			var frm = document.getElementsByName('doubt_forum')[0];
			frm.submit(); // Submit the form
			frm.reset(); // Reset all form data
			
			return false; // Prevent page refresh
		}
	}
	</script>
<script>
document.getElementById("success").innerHTML = "Thanks for submitting your doubt!!";
</script>
  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>


</body>

</html>
