<%-- 
    Document   : user
    Created on : 7 Feb, 2021, 7:41:21 AM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>job_recommend</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:10000 
	});
});
</script>
<!-- / Featured Slider -->
</head>
<body id="top">
<div class="wrapper row1">
  <div id="topnav">
    <ul>
      <li><a href="index.html"><strong>Home</strong></a></li>
      <li><a href="company.jsp"><strong>COMPANY</strong></a></li>
      <li class="active"><a href="user.jsp"><strong>USER</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">Job Recommendation</a></h1>
      <p>System</p>
    </div>
    
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="featured_slide_">
    <ul id="featured_slide_Content">
      <li class="featured_slide_Image"><a href="#"><img src="images/Blog.png" alt="" /></a>
        <div class="introtext">
          <h2>Abstract</h2>
          <p align='justify'>The developed system is recommendation system for campus recruitment which helps college placement office to match company's profile
          and student's profile with higher precision and lower cost. for profile matching two matching methods are used.semantic matching,tree-based knowledge matching and query matching.</p>
        
        </div>
      </li>
       <li class="featured_slide_Image"><a href="#"><img src="images/Blog.png" alt="" /></a>
        <div class="introtext">
          <h2>Abstract</h2>
          <p align='justify'>The developed system is recommendation system for campus recruitment which helps college placement office to match company's profile
          and student's profile with higher precision and lower cost. for profile matching two matching methods are used.semantic matching,tree-based knowledge matching and query matching.</p>
        
        </div>
      </li>
       <li class="featured_slide_Image"><a href="#"><img src="images/Blog.png" alt="" /></a>
        <div class="introtext">
          <h2>Abstract</h2>
          <p align='justify'>The developed system is recommendation system for campus recruitment which helps college placement office to match company's profile
          and student's profile with higher precision and lower cost. for profile matching two matching methods are used.semantic matching,tree-based knowledge matching and query matching.</p>
        
        </div>
      </li>
      <li class="clear featured_slide_Image"><!-- Important - Leave This Empty --></li>
    </ul>
  </div>
  
</div>
<div class="wrapper row5">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
        <center>
            
            <h2>USER LOGIN</h2>
           <form action="UserLAction.jsp" method="post">
          <table>
              <tr><th>UserName</th><td><input type="text" name="uname" required=""></tD></tr>
              <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
              <tr><th></th><td><input type="submit" value="Login">
                  
                      <a href="UserRegister.jsp">Register</a>
                  </tD></tr>
          </table>
      </form>
            
            
            
        </center>
        
        
    </div>
       </div>
</div>


</body>
</html>