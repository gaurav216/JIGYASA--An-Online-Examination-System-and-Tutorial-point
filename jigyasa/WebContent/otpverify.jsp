<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page import="javax.mail.*"%>
<%@page import="javax.mail.Message" %>
<%@page import="javax.mail.MessagingException" %>
<%@page import="javax.mail.Session" %>
<%@page import="javax.mail.Transport" %>
<%@page import="javax.mail.Message.RecipientType" %>
<%@page import="javax.mail.internet.AddressException" %>
<%@page import="javax.mail.internet.InternetAddress" %>
<%@page import="javax.mail.internet.MimeMessage" %>
<%@page import="java.util.*"%>

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

  <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>

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



<%Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", 465);
		props.put("mail.smtp.user", "a3g.jigyasa@gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.debug", "true");
		props.put("mail.smtp.socketFactory.port", 465);
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		String from="a3g.jigyasa@gmail.com";
        String to=(String)session.getAttribute("email");
        Random rng = new Random();
        int count=10;
        int end=32000;
        int start=1000;
        int i, qid;
            	    int[] otp = new int[count];
            	    int cur = 0;
            	    int remaining = end - start;
            	    for (int j = start; j < end && count > 0; j++) {
            	        double probability = rng.nextDouble();
            	        if (probability < ((double) count) / (double) remaining) {
            	            count--;
            	            otp[cur++] = j;
            	        }
            	        remaining--;
            	    }
        System.out.println(otp[5]);
        String subject="OTP For password reset"; 
        String text="Here is your OTP to reset password: "+otp[5]+". Don't share this OTP with anyone";
        String otpass=""+otp[5];
        Session mailSession = Session.getDefaultInstance(props);
        mailSession.setDebug(true);
		Message simpleMessage = new MimeMessage(mailSession);
        InternetAddress fromAddress = null;
		InternetAddress toAddress = null;
		try {
			fromAddress = new InternetAddress(from);
			toAddress = new InternetAddress(to);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			simpleMessage.setFrom(fromAddress);
			simpleMessage.setRecipient(RecipientType.TO, toAddress);
			simpleMessage.setSubject(subject);
			simpleMessage.setText(text);
            simpleMessage.saveChanges(); 
			Transport transport=mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com","a3g.jigyasa@gmail.com","a3gforever");
            
            transport.sendMessage(simpleMessage, simpleMessage.getAllRecipients());
            transport.close();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>
  <div class="container">

   
   
   
    
    <form name="otp_form" class="login-form" action="resetpassword.jsp" method="post">
       <div class="span11">
	            <div class="logo">
	    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
	    &nbsp        <a href="index.html"><img src="img/logo.png" alt="" /></a>        
	            </div>
	          </div>
      <br><br><br>
      
      
      <div class="login-wrap">
       
        <div class="input-group">
          <span class="input-group-addon"><i class="icon-envelope"></i></span>
          <input id="otp1" type="text" class="form-control" placeholder="Enter OTP" name="otp" autofocus>
        </div>
        
       <input id="otp2" type="hidden" name="otp2" value="<%= otpass %>" readonly="readonly" />
                
       
    <button class="btn btn-primary btn-block" type="button" onclick="do_check()">Submit OTP</button>
    
    <button class="btn btn-theme btn-block" type="button" onclick="document.location.reload(true)">Resend OTP</button>
    
       </div>
    </form>
  
   
  </div>


<script>
function do_check()
{
  var str1 = $("#otp1").val();
  var str2 = $("#otp2").val();
  if (str1 == ""){
	    alert("Please fill the otp");
	  }
  else if (str1 == str2)
  {
  	var frm = document.getElementsByName('otp_form')[0];
	   frm.submit(); // Submit the form
	   frm.reset();  // Reset all form data
	   return false; // Prevent page refresh
  }
  else
  {
    alert("Incorrect OTP!!!");
  }
}
   </script>

   <script src="js2/jquery.js"></script>
  <script src="js2/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js2/jquery.scrollTo.min.js"></script>
  <script src="js2/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custom script for all page-->
  <script src="js2/scripts.js"></script>
</body>

</html>