<%-- 
    Document   : user
    Created on : 7 Feb, 2021, 7:41:21 AM
    Author     : KishanVenky
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
      <li><a href="AddDetails.jsp"><strong>Add Details</strong></a></li>
      <li class="active"><a href="ViewRecommend.jsp"><strong>View Recommendation</strong></a></li>
     <li><a href="user.jsp"><strong>Logout</strong></a></li>
      
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

<div class="wrapper row5">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
        <center>
            
           <%String email=(String)session.getAttribute("email");%>
           <h2>Welcome To : <%=email%></h2>
            
           <h1>RECOMMENDATION DETAILS</h1>  
         
           <form action="ViewRecommends.jsp" method="post">
           <table>
                           <tr><th>Select Method</th><td><select name="method" required="">
                                       <option></option>
                                       <option value="Semantic">Semantic Method</option>
                                       <option value="KMatching">Tree Based Knowledge Matching</option>
                       </select></td></td></tr>
                           <tr><th></th><td><input type="submit" value="View Recommends"></tD></tr>
           </table>
           </form>
        </center>
        
        
    </div>
       </div>
</div>


</body>
</html>