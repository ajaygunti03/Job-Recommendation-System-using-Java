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
      <li><a href="UserHome.jsp"><strong>Home</strong></a></li>
      <li class="active"><a href="ComAddDetails.jsp"><strong>Post Job Details</strong></a></li>
      <li><a href="company.jsp"><strong>Logout</strong></a></li>
      
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

<div class="wrapper row5">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
        <center>
            
           <%String email=(String)session.getAttribute("cname");%>
           <h2>Welcome To : <%=email%></h2>
            
           <h1>ADD JOB DETAILS</h1>
           <form action="JobAction.jsp" method="post">
           <table>
               <tr><th>Required Skills </th></tr>
               <tr><td><textarea cols="50" rows="5" name="skills" required="" placeholder="Enter Atleast Two Skills"></textarea></td>
                   <td> <input type="text" name="experience" required="" placeholder="Experience"></tD>
               <td> <input type="text" name="role" required="" placeholder="Job Role"></tD></tr>
           </table>
               <table>
                  <TR><th></th><TH>Qualification</TH></TR>
                           <tr><TD><select name="qualification" required="">
                                       <option></option>
                                       <option value="graduation">GRADUATION</option>
                                       <option value="postgraduation">POST GRADUATION</option>
                                       <option value="diploma">DIPLOMA</option>
                                   </select></td>
                                   <td> <INPUT TYPE="text" name="year" placeholder="Year of Pass"></td>
                                   <td><INPUT TYPE="text" name="percentage" placeholder="Secured Percentage">
                               </TD></tr>     </table>
                <table>
               <tr><th>No.of Job Available </th><td><input type="text" name="jobs" required="" placeholder="No.of Jobs Available"></tD></tr>
               <tr><th></th><tD><input type="submit" value="POST"></tD></tr>
               
           </table>
           </form>
           
            
        </center>
        
        
    </div>
       </div>
</div>


</body>
</html>