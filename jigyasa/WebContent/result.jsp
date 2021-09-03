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
                <a href="#"><!-- <i class="icon_profile"></i> -->My Profile</a>
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
<%
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/jigyasa";
String Username = "root";
String dbpassword = "";
Connection con;
Statement stmt;
java.sql.ResultSet rs;
   String subject=(String)session.getAttribute("subject");
   int correct=(int)session.getAttribute("correct_responses");
   int no_of_ques=(int)session.getAttribute("no_of_ques");
   int wrong_qids[]=(int[])session.getAttribute("wrong_qids");
   int un_ques[]=(int[])session.getAttribute("un_ques");
   int wrong=no_of_ques-correct;
   int unatt_ques=10-no_of_ques;
   String wrong_res[]=(String [])session.getAttribute("wrong_res");
   /*register driver*/
	Class.forName(driver);
	/*create connection*/
	con = DriverManager.getConnection(url, Username, dbpassword);
	/*create statement*/
	stmt = con.createStatement();
	/*execute query*/
%>
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            
          </div>
        </div>
        <!-- page start-->
        <center><h2><b>Your Result</b></h2></center>
      
            <section class="panel" style="margin-left:530px;margin-right:500px;margin-top:50px;">
              
              <table class="table" style="height:100%;width:150%">
              
                <tbody>
                 <tr class="warning">
                  
                    <td>Questions attempted:</td>
                    <td><%= no_of_ques %></td>
                  </tr>
                  
                  <tr class="success">
                   
                    <td>Correct responses:</td>
                    <td><%= correct %></td>
                  </tr>
                  
                  <tr class="danger">
                  
                    <td>Incorrect responses:</td>
                    <td><%= wrong %></td>
                  </tr>
                  <tr class="active">
                 
                    <td>Final score:</td>
                    <td><%= correct %></td>
                  </tr>
                </tbody>
              </table>
              
            </section>
         
     <div>
      <h2 style="margin-left:20px;"> <b>Incorrect Questions: </b><%= wrong %></h2>
      <%
          int i;
          String wr_ques;
          String opa, opb, opc, opd, corr;
          for(i=0;i<wrong;i++){
        	 if(subject.equalsIgnoreCase("maths")){
        		 rs = stmt.executeQuery("SELECT * FROM `mathsq` WHERE qid=" + wrong_qids[i]); 
        	 }
        	 else if(subject.equalsIgnoreCase("reasoning")){
        		 rs = stmt.executeQuery("SELECT * FROM `reasoningq` WHERE qid=" + wrong_qids[i]); 
        	 }
        	 else if(subject.equalsIgnoreCase("english")){
        		 rs = stmt.executeQuery("SELECT * FROM `englishq` WHERE qid=" + wrong_qids[i]); 
        	 }
        	 else if(subject.equalsIgnoreCase("genaw")){
        		 rs = stmt.executeQuery("SELECT * FROM `genawq` WHERE qid=" + wrong_qids[i]); 
        	 }
        	 else if(subject.equalsIgnoreCase("gensc")){
        		 rs = stmt.executeQuery("SELECT * FROM `genscq` WHERE qid=" + wrong_qids[i]); 
        	 }
        	 else if(subject.equalsIgnoreCase("jee")){
        		 rs = stmt.executeQuery("SELECT * FROM `jeeq` WHERE qid=" + wrong_qids[i]); 
        	 }
        	 else{
        		 rs = stmt.executeQuery("SELECT * FROM `gatecseq` WHERE qid=" + wrong_qids[i]); 
        	 }
        	  rs.next();
        	  wr_ques=rs.getString("question");
        	  opa=rs.getString("opa");
        	  opb=rs.getString("opb");
        	  opc=rs.getString("opc");
        	  opd=rs.getString("opd");
        	  corr=rs.getString("correct");
        	  
        	  %>
        	 
        	 <div style="margin-left:20px;text-align:justify;"><h3> Q<%=i+1 %>. <%= wr_ques %> </h3></div>

                        <ol type="A">
                       
                                                  
                                               <li>   <%= opa %>
                                               </li>                                              
                 
                    
                      
                                           <li>       
                                                  <%= opb %>
                                            </li>
                 
	                 
                        
                                                <li>  
                                                  <%= opc %>
                                          </li>
                     
                      <li>
                                                  
                                                  <%= opd %>
                          </li>                   
                                              </ol>
                      </div>
	
	                  <div class="panel-body">
                <div class="alert alert-danger fade in">
                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                  <strong>Your Response:</strong>  <%= wrong_res[i] %>               
                  
                  </div>
                  <div class="alert alert-success fade in">
                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                  <strong>Correct Response:</strong>  <%= corr %>               
                  
        	 </div>
        	 <a class="btn btn-default" href="reportquestion.jsp?qid=<%= wrong_qids[i] %>&subject=<%= subject %>" title="Report this question">Report this question</a>
                  </div>
	                 
	                <% } %>
	                
	                
	                 <h2 style="margin-left:20px;"> <b>Unattempted Questions: </b><%= unatt_ques %></h2>
      <%
         
          String u_ques;
       
          for(i=0;i<unatt_ques;i++){
        	 if(subject.equalsIgnoreCase("maths")) 
        	  {
        		 rs = stmt.executeQuery("SELECT * FROM `mathsq` WHERE qid=" + un_ques[i]);
        	  }
        	 else if(subject.equalsIgnoreCase("english")) 
       	  {
       		 rs = stmt.executeQuery("SELECT * FROM `englishq` WHERE qid=" + un_ques[i]);
       	  }
        	
        	 else if(subject.equalsIgnoreCase("reasoning")) 
       	    {
       		 rs = stmt.executeQuery("SELECT * FROM `reasoningq` WHERE qid=" + un_ques[i]);
       	    }
        	 else if(subject.equalsIgnoreCase("genaw")) 
       	  {
       		 rs = stmt.executeQuery("SELECT * FROM `genawq` WHERE qid=" + un_ques[i]);
       	  }
        	 else if(subject.equalsIgnoreCase("gensc")){
        		 rs = stmt.executeQuery("SELECT * FROM `genscq` WHERE qid=" + un_ques[i]);
              	  	 
        	 }
        	 else if(subject.equalsIgnoreCase("jee")){
        		 rs = stmt.executeQuery("SELECT * FROM `jeeq` WHERE qid=" + un_ques[i]);
              	  	 
        	 }
        	 else{
        		 rs = stmt.executeQuery("SELECT * FROM `gatecseq` WHERE qid=" + un_ques[i]);
               	 
        	 }
       	
       	
        	 rs.next();
        	  u_ques=rs.getString("question");
        	  opa=rs.getString("opa");
        	  opb=rs.getString("opb");
        	  opc=rs.getString("opc");
        	  opd=rs.getString("opd");
        	  corr=rs.getString("correct");
        	  
        	  %>
        	 
        	 <div style="margin-left:20px;text-align:justify;"><h3> Q<%=i+1 %>. <%= u_ques %> </h3></div>

                        <ol type="A">
                       
                                                  
                                               <li>   <%= opa %>
                                               </li>                                              
                 
                    
                      
                                           <li>       
                                                  <%= opb %>
                                            </li>
                 
	                 
                        
                                                <li>  
                                                  <%= opc %>
                                          </li>
                     
                      <li>
                                                  
                                                  <%= opd %>
                          </li>                   
                                              </ol>
                      </div>
	
	                  <div class="panel-body">
            
                  <div class="alert alert-warning fade in">
                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                  <strong>Correct Response:</strong>  <%= corr %>               
                  
        	 </div>
        	  <a class="btn btn-default" href="reportquestion.jsp?qid=<%= un_ques[i] %>&subject=<%= subject %>" title="Report this question">Report this question</a>
                  </div>
	                 
	                 
        	  <%
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
  <!--custome script for all page-->
  <script src="js2/scripts.js"></script>
  <script>
  function myFunction() {
	  if (confirm("You are about to log out!!! Want to continue??")) {
	   function redirect(){window.location = "homeendsession.jsp";}
	   redirect();
	  } else {
		  function redirect2(){window.location = "result.jsp#";};
		  redirect2();
	  
	  }
  }
  
  </script>


</body>

</html>
