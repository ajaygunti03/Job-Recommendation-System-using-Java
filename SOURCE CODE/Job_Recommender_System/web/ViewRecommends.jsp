<%-- 
    Document   : user
    Created on : 7 Feb, 2021, 7:41:21 AM
    Author     : KishanVenky
--%>

<%@page import="java.util.Iterator"%>
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
           
           <h1>VIEW JOB RECOMMENDATION</h1>
           <table>
               <tr>
                   <th>Job Role</th><th>Company Name</th><th>No.of Jobs</th>
               </tr>
            <%String Semantic=request.getParameter("method");
          
                if(Semantic.equals("Semantic")){
                
                      ArrayList all=new ArrayList();
              ArrayList al=new ArrayList();
                    try{       
               ResultSet r=Queries.getExecuteQuery("select * from details where email='"+email+"'");
            
               while(r.next()){
                
                   String skill=r.getString("skills");
                     
                   String s[]=skill.split(",");
                   for(int i=0;i<s.length;i++){
                       all.add(s[i]);
                       
                   }
               } 
               
      
              
               
               ResultSet rr=Queries.getExecuteQuery("select * from jobs j,company c where c.email=j.email");
               String role=null;
               String cname=null;
               String noof=null;
               while(rr.next()){
                   role=rr.getString("j.role");
                   cname=rr.getString("c.cname");
                   noof=rr.getString("j.jobs");
                   
                  String skill=rr.getString("j.skills");
                   String s[]=skill.split(",");
                   
                   for(int i=0;i<s.length;i++){
                       al.add(s[i]);
                   }
                }
             
            Iterator it=al.listIterator();
               Iterator it1=all.listIterator();
            while(it.hasNext()){
                String name=(String)it.next();
             
                while(it1.hasNext()){
                    String name2=(String)it1.next();
              
                   if(name.equals(name2)){
                 %>
                 <tr>     
                     <td><%=role%></tD>
               <td><%=cname%></tD>
                 <td><%=noof%></tD>
                 
                 
                 </tr>  
                 <%
                   }
                    
                    
                }
                
                
            } 
 }catch(Exception e){
                out.println(e);
            }
              



            }else{
ResultSet rrr=Queries.getExecuteQuery("select * from details where email='"+email+"'");
String qualification=null;
String year=null;
String percentage=null;

while(rrr.next()){
qualification=rrr.getString("qualification");
year=rrr.getString("year");
percentage=rrr.getString("percentage");
}

ResultSet rrr1=Queries.getExecuteQuery("select * from jobs j,company c where j.email=c.email");


while(rrr1.next()){
String qualification1=rrr1.getString("j.qualification");
String year1=rrr1.getString("j.year");
String cname1=rrr1.getString("c.cname");
String percentage1=rrr1.getString("j.percentage");

if(qualification.equals(qualification1)&&year1.equals(year1)){
  %>
                 <tr>     
                     <td><%=rrr1.getString("j.role")%></tD>
               <td><%=cname1%></tD>
                 <td><%=rrr1.getString("j.jobs")%></tD>
                 
                 
                 </tr>  
                 <%
}
}
}
                   
              



            %>
            <a href="ViewRecommend.jsp">Back</a>
           </table>  
        </center>
        
        
    </div>
       </div>
</div>


</body>
</html>