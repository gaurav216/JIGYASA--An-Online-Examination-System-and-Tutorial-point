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

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="ico/favicon.png">

 

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome1.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style1.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Handlee|Open+Sans:300,400,600,700,800" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet" />
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/flexslider.css" rel="stylesheet" />
  <link href="css/prettyPhoto.css" rel="stylesheet" />
  <link href="css/jquery.bxslider.css" rel="stylesheet" />
    <link href="color/default.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
<body style="
background-image:url(img/library.jpg);
-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">
  <%  
StringBuffer sb=new StringBuffer();  
for(int i=1;i<=5;i++)  
{  
    sb.append((char)(int)(Math.random()*79+23+7));  
}  
String cap=new String(sb);  
%>  

  <div class="container">

   
   
   
    
    <form name="signup_form" class="login-form"  action="signup1.jsp" method="post" onsubmit="return validation()">
       <div class="span11">
	            <div class="logo">
	    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
	    &nbsp        <a href="index.html"><img src="img/logo.png" alt="" /></a>        
	            </div>
	          </div>
      <br><br><br>
      
      
      <div class="login-wrap">
       
        <div class="input-group">
          <span class="input-group-addon"><i class="icon-user"></i></span>
          <input type="text" class="form-control" placeholder="Username" name="username" autofocus>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon-lock"></i></span>
          <input type="password" class="form-control" placeholder="Password" name="password">
        </div>
         <div class="input-group">
          <span class="input-group-addon"><i class="icon-pencil"></i></span>
          <input type="text" class="form-control" placeholder="Name" name="name">
        </div>
         <div class="input-group">
          <span class="input-group-addon"><i class="icon-envelope"></i></span>
          <input type="email" class="form-control" placeholder="email id" name="email">
        </div>
        <div class="input-group">
          <table border="0">  
    <tbody>  
       <tr>  
        <td>  
          <div style="background-color: white"><h2><s><i><font face="casteller"><%=cap%></font></i></s></h2></div>  
        </td>  
        <td><input type="text" name="cap1" value="" placeholder="Please enter Captcha"  /></td>  
        <td><input type="hidden" name="cap2" value='<%=cap%>' readonly="readonly" /></td>  
      </tr>  
   </tbody>  
</table>  </div>
       
                
        <button class="btn btn-info btn-lg btn-block" type="submit">Signup</button>
      </div>
    </form>
   
  </div>


<!-- <script type="text/javascript">
function validateForm() {
	  var u = document.forms["signup_form"]["username"].value;
	  var p = document.forms["signup_form"]["password"].value;
	  var n = document.forms["signup_form"]["name"].value;  
	  var e = document.forms["signup_form"]["email"].value;  
	  if (u == "" || p == "" ||n == "" ||e == "" ) {
	    alert("All fields must be filled out");
	    return false;
	  }
	}

   
   </script>-->
<script type ="text/javascript">  
function validation(){  
	 var c = document.forms ["signup_form"]["cap1"].value;  
	    var c1 = document.forms ["signup_form"]["cap2"].value;  
	    var u = document.forms["signup_form"]["username"].value;
		  var p = document.forms["signup_form"]["password"].value;
		  var n = document.forms["signup_form"]["name"].value;  
		  var e = document.forms["signup_form"]["email"].value;  
		  if (u == "" || p == "" ||n == "" ||e == "" ) {
		    alert("All fields must be filled out");
		    return false;
		  }
	    if(c==null||c=="")  
	    {  
	       alert ("Please Enter Captcha");  
	       return false;  
	    }  
	    else if(c==c1)
	    	{
	    	return true;
	    	}
	    else{
	    	alert ("Wrong captcha!!!");  
	        return false;  
	    }
}  
</script>

</body>

</html>