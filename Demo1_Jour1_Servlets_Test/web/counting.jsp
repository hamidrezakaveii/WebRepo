<%-- 
    Document   : counting
    Created on : Jun 23, 2018, 8:57:52 PM
    Author     : HAMIDREZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Counting to three:</h1>
        <% for (int i = 1; i < 4; i++) {%>
        <p>This number is <%= i%>.</p>
        <% }%>
        <p>OK.</p>
    </body>
</html>
