<%-- 
    Document   : afficherPanier
    Created on : 2010-01-28, 23:12:32
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
       ArrayList<String> previousItems =
      (ArrayList<String>)session.getAttribute("previousItems");
      if (previousItems.size() == 0) 
      {
      %>    
      <I>No items</I>
      
      <%
      } 
       else 
      {
      %>
      <UL>
      <%
       for(String item: previousItems) {
      %>     
      <LI>
      <%=item %>
      <%
       }
      %>
      
      </UL>
      <%
    }

   %>
    </body>
</html>
