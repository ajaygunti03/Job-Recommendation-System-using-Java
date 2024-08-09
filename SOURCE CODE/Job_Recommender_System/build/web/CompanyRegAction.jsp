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

String cname=request.getParameter("cname");
String cemail=request.getParameter("email");
String mobile=request.getParameter("mobile");
String username=request.getParameter("username");
String password=request.getParameter("password");

try{
    Connection con=Dbconnection.getcon();
           Statement s=con.createStatement();
           ResultSet r=Queries.getExecuteQuery("select count(*) from company where email='"+email+"'");
         int c=0;
         while(r.next())
         {
           c=r.getInt(1);  
         }
         
         if(c==0){
         PreparedStatement pst=con.prepareStatement("insert into company values(null,'"+cname+"','"+cemail+"','"+mobile+"','"+username+"','"+password+"')");
     
         int i=pst.executeUpdate();
         if(i>0){
             
             %>
      <script type='text/javascript'>
          window.alert("Registration Successful...!!");
          window.location="CompanyRegister.jsp";
      </script>
      <%
           
         }else{
%>
      <script type='text/javascript'>
          window.alert("Registration Failed...!!");
          window.location="CompanyRegister.jsp";
      </script>
      <%
              
         }
         }else{
         %>
      <script type='text/javascript'>
          window.alert("Company Already Exist...!!");
          window.location="CompanyRegister.jsp";
      </script>
      <%
         }  
    
    
    
    
}catch(Exception e){
    out.println(e);
}

%>
