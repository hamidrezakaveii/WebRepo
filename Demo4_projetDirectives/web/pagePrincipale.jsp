<%-- 
    Document   : pagePrincipale
    Created on : May 6, 2015, 10:19:49 AM
    Author     : administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%=request.getAttribute("contenu")%></h1>
        
    </body>
</html>
