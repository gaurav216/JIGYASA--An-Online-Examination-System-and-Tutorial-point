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
  
     
     
     
      <div class="row1">
  <div class="column1">
   
    <div id="piechart2"></div>
  </div>
  <div class="column1">
    
    
     <div id="piechart3"></div>
  </div>
  <div class="column1">
   
    <div id="piechart4"></div>
  </div>
  <div class="column1">
    
    
     <div id="piechart5"></div>
  </div>
</div>
<div class="row1">
  <div class="column2">
   
    <div id="piechart6"></div>
  </div>
  <div class="column2">
    
    
     <div id="piechart7"></div>
  </div>
  <div class="column2">
   
    <div id="piechart8"></div>
  </div>
  
</div>
   <div class="row1">
          <div class="column3">
              <div id="piechart"></div>
             
        </div>
        </div>
        <div class="row1">
          <div class="column3">
         <div class="panel-body">
                <div class="alert alert-active fade in">
                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                  *These pie charts only show the top 5 test scores of the user in each subject.
                </div>
        </div>
        </div>
        </div>
 
    
   
     
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
   
  </section>
   
     <%
     String driver="com.mysql.jdbc.Driver";
     String url="jdbc:mysql://localhost:3306/jigyasa";
     String Username="root";
     String dbpassword="";
     Connection con;
     Statement stmt;
     int maths_marks, reasoning_marks, genaw_marks, gensc_marks, jee_marks, english_marks, gatecse_marks;
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
 	int maths[]=new int[5];
 	int reasoning[]=new int[5];
 	int english[]=new int[5];
 	int genaw[]=new int[5];
 	int gensc[]=new int[5];
 	int jee[]=new int[5];
 	int gatecse[]=new int[5];
 	rs=stmt.executeQuery("SELECT MAX(`marks`) FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"maths"+"'");
    rs.next();
    maths_marks=rs.getInt("MAX(`marks`)");
    rs=stmt.executeQuery("SELECT MAX(`marks`) FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"reasoning"+"'");
    rs.next();
    reasoning_marks=rs.getInt("MAX(`marks`)");
    rs=stmt.executeQuery("SELECT MAX(`marks`) FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"genaw"+"'");
    rs.next();
    genaw_marks=rs.getInt("MAX(`marks`)");
    rs=stmt.executeQuery("SELECT MAX(`marks`) FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"gensc"+"'");
    rs.next();
    gensc_marks=rs.getInt("MAX(`marks`)");
    rs=stmt.executeQuery("SELECT MAX(`marks`) FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"jee"+"'");
    rs.next();
    jee_marks=rs.getInt("MAX(`marks`)");
    rs=stmt.executeQuery("SELECT MAX(`marks`) FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"english"+"'");
    rs.next();
    english_marks=rs.getInt("MAX(`marks`)");
    rs=stmt.executeQuery("SELECT MAX(`marks`) FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"gatecse"+"'");
    rs.next();
    gatecse_marks=rs.getInt("MAX(`marks`)");
    rs=stmt.executeQuery("SELECT `marks` FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"maths"+"' ORDER BY `marks` DESC limit 5");
    int i=0;
    while(rs.next())
    {	maths[i]=rs.getInt(1);
        ++i;
    }	
        
     i=0;   
    
    
    rs=stmt.executeQuery("SELECT `marks` FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"reasoning"+"' ORDER BY `marks` DESC limit 5");
    while(rs.next())
    {	reasoning[i]=rs.getInt(1);
        ++i;
    }	
        
     i=0;   
    
    rs=stmt.executeQuery("SELECT `marks` FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"english"+"' ORDER BY `marks` DESC limit 5");
    while(rs.next())
    {	english[i]=rs.getInt(1);
        ++i;
    }	
        
     i=0;   
    rs=stmt.executeQuery("SELECT `marks` FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"genaw"+"' ORDER BY `marks` DESC limit 5");
    while(rs.next())
    {	genaw[i]=rs.getInt(1);
        ++i;
    }	
        
     i=0;   
    rs=stmt.executeQuery("SELECT `marks` FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"gensc"+"' ORDER BY `marks` DESC limit 5");
    while(rs.next())
    {	gensc[i]=rs.getInt(1);
        ++i;
    }	
        
     i=0;   
    rs=stmt.executeQuery("SELECT `marks` FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"jee"+"' ORDER BY `marks` DESC limit 5");
    while(rs.next())
    {	jee[i]=rs.getInt(1);
        ++i;
    }	
        
     i=0;   
    rs=stmt.executeQuery("SELECT `marks` FROM `results` WHERE `username`='"+u+"' AND `subject`='"+"gatecse"+"' ORDER BY `marks` DESC limit 5");
    while(rs.next())
    {	gatecse[i]=rs.getInt(1);
        ++i;
    }	
        
     i=0;   
    
     %>
     
    
     
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
		  function redirect2(){window.location = "testserieshome.jsp#";};
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
  

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Subject', 'Maximum Marks'],
  ['Maths', <%= maths_marks %>],
  ['Reasoning', <%= reasoning_marks %>],
  ['English', <%= english_marks %>],
  ['General Awareness', <%= genaw_marks %>],
  ['General Science', <%= gensc_marks %>],
  ['JEE', <%= jee_marks %>],
  ['Gate CSE', <%= gatecse_marks %>]
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Best performance in all tests', 'width':1312, 'height':500};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Test', 'Marks'],
  ['Test 1', <%= maths[0] %>],
  ['Test 2', <%= maths[1] %>],
  ['Test 3', <%= maths[2] %>],
  ['Test 4', <%= maths[3] %>],
  ['Test 5', <%= maths[4] %>]
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Maths*', 'width':330, 'height':330};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart2'));
  chart.draw(data, options);
}
</script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
	  ['Test', 'Marks'],
	  ['Test 1', <%= reasoning[0] %>],
	  ['Test 2', <%= reasoning[1] %>],
	  ['Test 3', <%= reasoning[2] %>],
	  ['Test 4', <%= reasoning[3] %>],
	  ['Test 5', <%= reasoning[4] %>]
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Reasoning*', 'width':330, 'height':330};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart3'));
  chart.draw(data, options);
}
</script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
	  ['Test', 'Marks'],
	  ['Test 1', <%= english[0] %>],
	  ['Test 2', <%= english[1] %>],
	  ['Test 3', <%= english[2] %>],
	  ['Test 4', <%= english[3] %>],
	  ['Test 5', <%= english[4] %>]
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'English*', 'width':330, 'height':330};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart4'));
  chart.draw(data, options);
}
</script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
	  ['Test', 'Marks'],
	  ['Test 1', <%= gensc[0] %>],
	  ['Test 2', <%= gensc[1] %>],
	  ['Test 3', <%= gensc[2] %>],
	  ['Test 4', <%= gensc[3] %>],
	  ['Test 5', <%= gensc[4] %>]
  
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'General Science*', 'width':330, 'height':330};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart5'));
  chart.draw(data, options);
}
</script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
	  ['Test', 'Marks'],
	  ['Test 1', <%= genaw[0] %>],
	  ['Test 2', <%= genaw[1] %>],
	  ['Test 3', <%= genaw[2] %>],
	  ['Test 4', <%= genaw[3] %>],
	  ['Test 5', <%= genaw[4] %>]
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'General Awareness*', 'width':440, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart6'));
  chart.draw(data, options);
}
</script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
	  ['Test', 'Marks'],
	  ['Test 1', <%= jee[0] %>],
	  ['Test 2', <%= jee[1] %>],
	  ['Test 3', <%= jee[2] %>],
	  ['Test 4', <%= jee[3] %>],
	  ['Test 5', <%= jee[4] %>]
  
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'JEE*', 'width':440, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart7'));
  chart.draw(data, options);
}
</script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
	  ['Test', 'Marks'],
	  ['Test 1', <%= gatecse[0] %>],
	  ['Test 2', <%= gatecse[1] %>],
	  ['Test 3', <%= gatecse[2] %>],
	  ['Test 4', <%= gatecse[3] %>],
	  ['Test 5', <%= gatecse[4] %>]
  
  
  ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'GATE CSE*', 'width':439.5, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart8'));
  chart.draw(data, options);
}
</script>


</body>

</html>
