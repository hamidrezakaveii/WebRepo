<%-- 
    Document   : genererSortieExcel
    Created on : May 6, 2015, 9:03:03 AM
    Author     : administrateur
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="application/msword" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
        ArrayList liste=(ArrayList) request.getAttribute("liste");
        
        for (int i=0; i< liste.size();i++){
        %>
        afficher table ici
        
        <%
        }
        %>
    </body>
</html>
