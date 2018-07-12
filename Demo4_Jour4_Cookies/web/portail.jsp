<%-- 
    Document   : portail
    Created on : 2018-07-12, 11:13:30
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="<%=request.getAttribute("choixcouleur") %>" >
        Bienvenue vous avez choisi le 
        <%=request.getAttribute("choixcouleur") %>comme couleur de fond        
    </body>
</html>
