<%-- 
    Document   : AddDetailsAction
    Created on : 7 Feb, 2021, 8:20:19 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String email=(String)session.getAttribute("email");

String qualification=request.getParameter("qualification");
String year=request.getParameter("year");
String percentage=request.getParameter("percentage");
String skills=request.getParameter("skills");
String experience=request.getParameter("experience");

try{
    Connection con=Dbconnection.getcon();
           Statement s=con.createStatement();
           ResultSet r=Queries.getExecuteQuery("select count(*) from details where email='"+email+"'");
         int c=0;
         while(r.next())
         {
           c=r.getInt(1);  
         }
         
         if(c==0){
         PreparedStatement pst=con.prepareStatement("insert into details values(null,'"+email+"','"+qualification+"','"+year+"','"+percentage+"','"+skills+"','"+experience+"',now(),'waiting')");
     
         int i=pst.executeUpdate();
         if(i>0){
             
             %>
      <script type='text/javascript'>
          window.alert("Details Added Successful...!!");
          window.location="AddDetails.jsp";
      </script>
      <%
           
         }else{
%>
      <script type='text/javascript'>
          window.alert("Details Adding Failed...!!");
          window.location="AddDetails.jsp";
      </script>
      <%
              
         }
         }else{
         %>
      <script type='text/javascript'>
          window.alert("Details Already Exist...!!");
          window.location="AddDetails.jsp";
      </script>
      <%
         }  
    
    
    
    
}catch(Exception e){
    out.println(e);
}

%>
