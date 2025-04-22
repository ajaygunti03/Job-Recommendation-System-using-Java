<%-- 
    Document   : user
    Created on : 7 Dec, 2024, 7:41:21 AM
    Author     : @AJAY GUNTI
--%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String email=(String)session.getAttribute("email");
    
    String skills=request.getParameter("skills");
String jobs=request.getParameter("jobs");
String experience=request.getParameter("experience");
    String qualification=request.getParameter("qualification");
String year=request.getParameter("year");
String percentage=request.getParameter("percentage");
String role=request.getParameter("role");
try{
   String query="insert into jobs values(null,'"+email+"','"+role+"','"+skills+"','"+experience+"','"+jobs+"','"+qualification+"','"+year+"','"+percentage+"')";
   int i=Queries.getExecuteUpdate(query);
   if(i>0){
       %>
       <script type="text/javascript">
           window.alert("Job Posted Successfully...!!!");
           window.location="ComAddDetails.jsp";
       </script>
       
       <%
   }
else{
 %>
       <script type="text/javascript">
           window.alert("Job Posting Failed...!!!");
           window.location="ComAddDetails.jsp";
       </script>
       
       <%
}
    
    
}catch(Exception e){
  out.println(e);  
}%>
